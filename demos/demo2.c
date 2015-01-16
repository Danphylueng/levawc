/**
 *       _____
 * ANSI / ___/
 *     / /__  
 *     \___/  
 *
 * Filename: demo2.c
 * Author  : Dan Levin
 * Date    : Wed Feb 20 11:59:40 GMT 2013
 * Version : 0.15
 * ---
 * Description: A short C demo program testing the function interface of library LevAWC, doubly-linked list. 
 * 
 * Revision history: (this is where you document the diffs between versions...)
 * Date   Revision
 * 121212 Created this program the first time..
 * 121218 After some editing I consider this hack ready for going public :-)
 * 130205 Used the new function 'int DLISTfind_remove()'...
 * 130205 Further editing - more extensive error handling than before..
 * 130411 Extended user interaction when inserting/removing nodes. User determines the number of operations..
 * 
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "dlist.h"

#ifndef OK
#define OK 0
#endif

#define NR_OF_ITEMS 10
#define MINLEN 5

/* Function declarations */
void my_destroy(void *data);
void print(const void *data);
int my_cmp(const void *key1, const void *key2);
int my_random(int start, int stop);
void my_clearscrn(void);
void prompt_and_pause(char *message);
int my_match(const void *k1, const void *k2);

void add_random_nodes(Dlist list, int nr_of_nodes);
void remove_nodes(Dlist list);
void insert_nodes(Dlist list);

/* Function definitions - the rest of the program */
/* --- Function: int my_random(int start, int stop) --- */
int my_random(int start, int stop)
{
  return start+rand()%(stop-start+1);
}

/* --- Function: void my_destroy(void *data) --- */
void my_destroy(void *data)
{
  free(data);
}

/* --- Function: void print(const void *data) --- */
void print(const void *data)
{
  printf(" %02d", *(int *)data);
}

/* --- Function: int my_cmp(const int *key1, const int *key2) --- */
int my_cmp(const void *key1, const void *key2)
{
  return (*(int *)key1 - *(int *)key2);
}

/* --- Function: void my_clearscrn(void) --- */
void my_clearscrn(void)
{
#ifdef __unix__
  system("clear");
#elif _WIN32
  system("cls");
#endif
}

/* --- Function: void prompt_and_pause(char *message) --- */
void prompt_and_pause(char *message)
{
  printf("%s", message);
  printf(" - Hit <Enter> to continue...");
  getchar();
}

/* --- Function: int my_match(const void *k1, const void *k2) --- */
int my_match(const void *k1, const void *k2)
{
  return *(int *)k1 == *(int *)k2;
}

/* --- void init_nodes(Dlist list, int nr_of_nodes) --- */
void add_random_nodes(Dlist list, int nr_of_nodes)
{
  int i=0, *pi, retval;

  do
    {
      pi = (int *)malloc(sizeof(int));
      *pi = my_random(1,50);

      /* Defensive programming... */
      if (!DLISTsize(list))
	retval=DLISTinsprev(list, NULL, pi);
      else
	retval=DLISTinsprev(list, DLISThead(list), pi);

      assert(retval == OK);

    } while (++i < nr_of_nodes);
}

/* --- Function: void remove_nodes(Dlist list) --- */
void remove_nodes(Dlist list)
{
  int tmp, *pi, retval;
  char mess[BUFSIZ];

  do
    {
      my_clearscrn();
      printf("--- REMOVE SOME NODES/DATA FROM THE LIST ---");
      printf("\nCurrent list status(%d nodes): ", DLISTsize(list));
      DLISTtraverse(list, print, DLIST_FWD);

      printf("\nEnter keydata for node to be removed (-1=Quit): ");
      scanf("%d", &tmp);
      getchar(); /* Remove CR from input buffer */

      if (tmp == -1)
	break;

      /* Remove node - and free memory */
      pi = &tmp;

      if ((retval = DLISTfind_remove(list, (void **)&pi)) != 0)
	{
	  if (retval == 1)
	    {
	      sprintf(mess, "Element %d not found..!", tmp);
	      prompt_and_pause(mess);
	    }
	  else 
	    {
	      if (retval == -2)
		printf("\nMatch-callback is missing... - bailing out!");
	      else
 		printf("\nFatal error... - bailing out!");
	      exit(retval);
	    }
	}
      else
	{
	  /* Removal succesful - notify user.. */
	  sprintf(mess, "Node %d removed..!", *(int *)pi);
	  prompt_and_pause(mess);
	  /* Free element - after being removed from list.. */
	  free(pi);
	}

    } while (1);
}

/* --- Function: void insert_nodes(Dlist list) --- */
void insert_nodes(Dlist list)
{
  int i=0, tmp, *pi;
  DlistNode node;
  char mess[BUFSIZ];

  do
    {
      my_clearscrn();
      printf("--- ADD NODES WITH DATA=99 - AFTER USER-SPECIFIED NODES ---");
      printf("\nCurrent list status(%d nodes): ", DLISTsize(list));
      DLISTtraverse(list, print, DLIST_FWD);

      printf("\nEnter nodedata of node after which 99 should be inserted (-1=Quit): ");
      scanf("%d", &tmp);
      getchar(); /* Remove CR from input buffer */

      if (tmp == -1)
	break;

      if ((node = DLISTfindnode(list, &tmp)) != NULL) /* Node found */
	{
	  /* Insert node after first occurance of user-specified node */
	  pi = (int *)malloc(sizeof(int));
	  *pi = 99;

	  if ((DLISTinsnext(list, node, pi)) != 0)
	    {
	      printf("Fatal error - exiting...");
	      exit(-1);
	    }
	  else
	    {
	      sprintf(mess, "Node 99 inserted after node %d", *(int *)DLISTdata(node));
	      prompt_and_pause(mess);
	    }
	}
      else
	{
	  sprintf(mess, "Node %d not found...!", tmp);
	  prompt_and_pause(mess);
	}
    } while (1);
}

int main(void)
{
  /* Declare YOUR variables here ! */
  Dlist mylist;
  char mess[BUFSIZ];
  int sz;

  /* Seed to random generator and clear the screen.. */
  srand((unsigned int)time(NULL));
  my_clearscrn();

  /* Initialize the list.. */
  printf("--- INITIALIZING A DOUBLY-LINKED LIST, %d NODES, RANDOM INTEGER DATA ---", NR_OF_ITEMS);
  if ((mylist = DLISTinit(my_destroy)) == NULL)
    {
      printf("\nFatal error... - bailing out!");
      exit(-1);
    }

  /* Populate the (empty) list.. */
  add_random_nodes(mylist, NR_OF_ITEMS);
  printf("\nCurrent list status(%d nodes): ", DLISTsize(mylist));
  DLISTtraverse(mylist, print, DLIST_FWD);

  /* Sort the list.. */
  prompt_and_pause("\nNext - let's SORT the list...");
  printf("--- SORTED LIST ---");
  DLISTsort(mylist, my_cmp);
  printf("\nCurrent list status(%d nodes): ", DLISTsize(mylist));
  DLISTtraverse(mylist, print, DLIST_FWD);
  
  /* Traverse the list - backwards.. */
  prompt_and_pause("\nNow - let's TRAVERSE the list - backwards...");
  printf("--- LIST TRAVERSED - BACKWARDS ---");
  printf("\nCurrent list status(%d nodes): ", DLISTsize(mylist));
  DLISTtraverse(mylist, print, DLIST_BWD);

  /* Let the user remove some specified nodes... */
  prompt_and_pause("\nNext - let's REMOVE some nodes..");
  DLISTsetmatch(mylist, my_match);
  remove_nodes(mylist);

  /* Let the user add some nodes - with value=99 - at specified locations.. */
  prompt_and_pause("\nFinally - let's ADD some nodes...");
  if ((sz = DLISTsize(mylist)) < MINLEN)
    {
      sprintf(mess, "\nList too short - adding %d random nodes..", (MINLEN-sz));
      prompt_and_pause(mess);
      add_random_nodes(mylist, (MINLEN-sz)); /* Populate the list */
    }
  insert_nodes(mylist);

  /* Final list status... */
  printf("\nFinal list contents(%d nodes): ", DLISTsize(mylist));
  DLISTtraverse(mylist, print, DLIST_FWD);

  /* ..and finally destroy the list. */
  prompt_and_pause("\n\nLet's tidy up and destroy the list.. - Bye!");
  DLISTdestroy(mylist);

  return 0;
}