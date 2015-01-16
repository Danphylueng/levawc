# =========================================================================
#     This makefile was generated by
#     Bakefile 0.2.8 (http://www.bakefile.org)
#     Do not modify, all changes will be overwritten!
# =========================================================================



# -------------------------------------------------------------------------
# These are configurable options:
# -------------------------------------------------------------------------

# C compiler 
CC = cl

# Standard flags for CC 
CFLAGS = 

# Standard preprocessor flags (common for CC and CXX) 
CPPFLAGS = 

# Standard linker flags 
LDFLAGS = 

# Set to 1 to build debug version [0,1]
#   0 - Release
#   1 - Debug
DEBUG = 0



# -------------------------------------------------------------------------
# Do not modify the rest of this file!
# -------------------------------------------------------------------------

### Variables: ###

LEVAWC_CFLAGS = /MD$(____DEBUG_60) /DWIN32 $(____DEBUG) $(____DEBUG_57) \
	$(____DEBUG_58) $(______DEBUG) /Fdlevawc.pdb $(____DEBUG_62) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
LEVAWC_OBJECTS =  \
	levawc_slist.obj \
	levawc_dlist.obj \
	levawc_stack.obj \
	levawc_queue.obj \
	levawc_chashtbl.obj \
	levawc_pqueue.obj \
	levawc_heap.obj \
	levawc_bitree.obj \
	levawc_avltree.obj \
	levawc_cslist.obj \
	levawc_set.obj \
	levawc_ohashtbl.obj \
	levawc_graph.obj \
	levawc_utils.obj
DEMO1_CFLAGS = /MD$(____DEBUG_60) /DWIN32 $(____DEBUG) $(____DEBUG_57) \
	$(____DEBUG_58) $(______DEBUG) /Fddemo1.pdb $(____DEBUG_62) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
DEMO1_OBJECTS =  \
	demo1_demo1.obj
DEMO2_CFLAGS = /MD$(____DEBUG_60) /DWIN32 $(____DEBUG) $(____DEBUG_57) \
	$(____DEBUG_58) $(______DEBUG) /Fddemo2.pdb $(____DEBUG_62) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
DEMO2_OBJECTS =  \
	demo2_demo2.obj
DEMO3_CFLAGS = /MD$(____DEBUG_60) /DWIN32 $(____DEBUG) $(____DEBUG_57) \
	$(____DEBUG_58) $(______DEBUG) /Fddemo3.pdb $(____DEBUG_62) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
DEMO3_OBJECTS =  \
	demo3_demo3.obj
DEMO4_CFLAGS = /MD$(____DEBUG_60) /DWIN32 $(____DEBUG) $(____DEBUG_57) \
	$(____DEBUG_58) $(______DEBUG) /Fddemo4.pdb $(____DEBUG_62) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
DEMO4_OBJECTS =  \
	demo4_demo4.obj
DEMO5_CFLAGS = /MD$(____DEBUG_60) /DWIN32 $(____DEBUG) $(____DEBUG_57) \
	$(____DEBUG_58) $(______DEBUG) /Fddemo5.pdb $(____DEBUG_62) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
DEMO5_OBJECTS =  \
	demo5_demo5.obj
DEMO6_CFLAGS = /MD$(____DEBUG_60) /DWIN32 $(____DEBUG) $(____DEBUG_57) \
	$(____DEBUG_58) $(______DEBUG) /Fddemo6.pdb $(____DEBUG_62) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
DEMO6_OBJECTS =  \
	demo6_demo6.obj
DEMO7_CFLAGS = /MD$(____DEBUG_60) /DWIN32 $(____DEBUG) $(____DEBUG_57) \
	$(____DEBUG_58) $(______DEBUG) /Fddemo7.pdb $(____DEBUG_62) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
DEMO7_OBJECTS =  \
	demo7_demo7.obj
DEMO8_CFLAGS = /MD$(____DEBUG_60) /DWIN32 $(____DEBUG) $(____DEBUG_57) \
	$(____DEBUG_58) $(______DEBUG) /Fddemo8.pdb $(____DEBUG_62) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
DEMO8_OBJECTS =  \
	demo8_demo8.obj
DEMO9_CFLAGS = /MD$(____DEBUG_60) /DWIN32 $(____DEBUG) $(____DEBUG_57) \
	$(____DEBUG_58) $(______DEBUG) /Fddemo9.pdb $(____DEBUG_62) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
DEMO9_OBJECTS =  \
	demo9_demo9.obj
DEMO10_CFLAGS = /MD$(____DEBUG_60) /DWIN32 $(____DEBUG) $(____DEBUG_57) \
	$(____DEBUG_58) $(______DEBUG) /Fddemo10.pdb $(____DEBUG_62) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
DEMO10_OBJECTS =  \
	demo10_demo10.obj
DEMO11_CFLAGS = /MD$(____DEBUG_60) /DWIN32 $(____DEBUG) $(____DEBUG_57) \
	$(____DEBUG_58) $(______DEBUG) /Fddemo11.pdb $(____DEBUG_62) /I.\.. \
	$(CPPFLAGS) $(CFLAGS)
DEMO11_OBJECTS =  \
	demo11_demo11.obj

### Conditionally set variables: ###

!if "$(DEBUG)" == "0"
____DEBUG_19_25 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_19_25 = $(____DEBUG_61)
!endif
!if "$(DEBUG)" == "0"
____DEBUG_33_39 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_33_39 = $(____DEBUG_61)
!endif
!if "$(DEBUG)" == "0"
____DEBUG_47_53 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_47_53 = $(____DEBUG_61)
!endif
!if "$(DEBUG)" == "0"
____DEBUG_61_67 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_61_67 = $(____DEBUG_61)
!endif
!if "$(DEBUG)" == "0"
____DEBUG_75_81 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_75_81 = $(____DEBUG_61)
!endif
!if "$(DEBUG)" == "0"
____DEBUG_89_95 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_89_95 = $(____DEBUG_61)
!endif
!if "$(DEBUG)" == "0"
____DEBUG_103_109 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_103_109 = $(____DEBUG_61)
!endif
!if "$(DEBUG)" == "0"
____DEBUG_117_123 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_117_123 = $(____DEBUG_61)
!endif
!if "$(DEBUG)" == "0"
____DEBUG_131_137 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_131_137 = $(____DEBUG_61)
!endif
!if "$(DEBUG)" == "0"
____DEBUG_145_151 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_145_151 = $(____DEBUG_61)
!endif
!if "$(DEBUG)" == "0"
____DEBUG_159_165 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_159_165 = $(____DEBUG_61)
!endif
!if "$(DEBUG)" == "0"
____DEBUG = /DNDEBUG
!endif
!if "$(DEBUG)" == "1"
____DEBUG = 
!endif
!if "$(DEBUG)" == "0"
____DEBUG_57 = /O2
!endif
!if "$(DEBUG)" == "1"
____DEBUG_57 = /Od
!endif
!if "$(DEBUG)" == "0"
____DEBUG_58 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_58 = /Zi
!endif
!if "$(DEBUG)" == "0"
____DEBUG_59 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_59 = /DEBUG
!endif
!if "$(DEBUG)" == "0"
______DEBUG = 
!endif
!if "$(DEBUG)" == "1"
______DEBUG = /D_DEBUG
!endif
!if "$(DEBUG)" == "0"
____DEBUG_60 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_60 = d
!endif
!if "$(DEBUG)" == "0"
____DEBUG_61 = /opt:ref /opt:icf
!endif
!if "$(DEBUG)" == "1"
____DEBUG_61 = 
!endif
!if "$(DEBUG)" == "0"
____DEBUG_62 = 
!endif
!if "$(DEBUG)" == "1"
____DEBUG_62 = /W4
!endif


### Targets: ###

all: levawc.lib demo1.exe demo2.exe demo3.exe demo4.exe demo5.exe demo6.exe demo7.exe demo8.exe demo9.exe demo10.exe demo11.exe

clean: 
	-if exist .\*.obj del .\*.obj
	-if exist .\*.res del .\*.res
	-if exist .\*.pch del .\*.pch
	-if exist levawc.lib del levawc.lib
	-if exist demo1.exe del demo1.exe
	-if exist demo1.ilk del demo1.ilk
	-if exist demo1.pdb del demo1.pdb
	-if exist demo2.exe del demo2.exe
	-if exist demo2.ilk del demo2.ilk
	-if exist demo2.pdb del demo2.pdb
	-if exist demo3.exe del demo3.exe
	-if exist demo3.ilk del demo3.ilk
	-if exist demo3.pdb del demo3.pdb
	-if exist demo4.exe del demo4.exe
	-if exist demo4.ilk del demo4.ilk
	-if exist demo4.pdb del demo4.pdb
	-if exist demo5.exe del demo5.exe
	-if exist demo5.ilk del demo5.ilk
	-if exist demo5.pdb del demo5.pdb
	-if exist demo6.exe del demo6.exe
	-if exist demo6.ilk del demo6.ilk
	-if exist demo6.pdb del demo6.pdb
	-if exist demo7.exe del demo7.exe
	-if exist demo7.ilk del demo7.ilk
	-if exist demo7.pdb del demo7.pdb
	-if exist demo8.exe del demo8.exe
	-if exist demo8.ilk del demo8.ilk
	-if exist demo8.pdb del demo8.pdb
	-if exist demo9.exe del demo9.exe
	-if exist demo9.ilk del demo9.ilk
	-if exist demo9.pdb del demo9.pdb
	-if exist demo10.exe del demo10.exe
	-if exist demo10.ilk del demo10.ilk
	-if exist demo10.pdb del demo10.pdb
	-if exist demo11.exe del demo11.exe
	-if exist demo11.ilk del demo11.ilk
	-if exist demo11.pdb del demo11.pdb

levawc.lib: $(LEVAWC_OBJECTS)
	if exist $@ del $@
	link /LIB /NOLOGO /OUT:$@ @<<
	$(LEVAWC_OBJECTS)
<<

demo1.exe: $(DEMO1_OBJECTS) levawc.lib
	link /NOLOGO /OUT:$@  $(____DEBUG_59) /pdb:"demo1.pdb" $(____DEBUG_19_25) $(LDFLAGS) @<<
	$(DEMO1_OBJECTS)   levawc.lib
<<

demo2.exe: $(DEMO2_OBJECTS) levawc.lib
	link /NOLOGO /OUT:$@  $(____DEBUG_59) /pdb:"demo2.pdb" $(____DEBUG_33_39) $(LDFLAGS) @<<
	$(DEMO2_OBJECTS)   levawc.lib
<<

demo3.exe: $(DEMO3_OBJECTS) levawc.lib
	link /NOLOGO /OUT:$@  $(____DEBUG_59) /pdb:"demo3.pdb" $(____DEBUG_47_53) $(LDFLAGS) @<<
	$(DEMO3_OBJECTS)   levawc.lib
<<

demo4.exe: $(DEMO4_OBJECTS) levawc.lib
	link /NOLOGO /OUT:$@  $(____DEBUG_59) /pdb:"demo4.pdb" $(____DEBUG_61_67) $(LDFLAGS) @<<
	$(DEMO4_OBJECTS)   levawc.lib
<<

demo5.exe: $(DEMO5_OBJECTS) levawc.lib
	link /NOLOGO /OUT:$@  $(____DEBUG_59) /pdb:"demo5.pdb" $(____DEBUG_75_81) $(LDFLAGS) @<<
	$(DEMO5_OBJECTS)   levawc.lib
<<

demo6.exe: $(DEMO6_OBJECTS) levawc.lib
	link /NOLOGO /OUT:$@  $(____DEBUG_59) /pdb:"demo6.pdb" $(____DEBUG_89_95) $(LDFLAGS) @<<
	$(DEMO6_OBJECTS)   levawc.lib
<<

demo7.exe: $(DEMO7_OBJECTS) levawc.lib
	link /NOLOGO /OUT:$@  $(____DEBUG_59) /pdb:"demo7.pdb" $(____DEBUG_103_109) $(LDFLAGS) @<<
	$(DEMO7_OBJECTS)   levawc.lib
<<

demo8.exe: $(DEMO8_OBJECTS) levawc.lib
	link /NOLOGO /OUT:$@  $(____DEBUG_59) /pdb:"demo8.pdb" $(____DEBUG_117_123) $(LDFLAGS) @<<
	$(DEMO8_OBJECTS)   levawc.lib
<<

demo9.exe: $(DEMO9_OBJECTS) levawc.lib
	link /NOLOGO /OUT:$@  $(____DEBUG_59) /pdb:"demo9.pdb" $(____DEBUG_131_137) $(LDFLAGS) @<<
	$(DEMO9_OBJECTS)   levawc.lib
<<

demo10.exe: $(DEMO10_OBJECTS) levawc.lib
	link /NOLOGO /OUT:$@  $(____DEBUG_59) /pdb:"demo10.pdb" $(____DEBUG_145_151) $(LDFLAGS) @<<
	$(DEMO10_OBJECTS)   levawc.lib
<<

demo11.exe: $(DEMO11_OBJECTS) levawc.lib
	link /NOLOGO /OUT:$@  $(____DEBUG_59) /pdb:"demo11.pdb" $(____DEBUG_159_165) $(LDFLAGS) @<<
	$(DEMO11_OBJECTS)   levawc.lib
<<

levawc_slist.obj: .\..\slist.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\slist.c

levawc_dlist.obj: .\..\dlist.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\dlist.c

levawc_stack.obj: .\..\stack.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\stack.c

levawc_queue.obj: .\..\queue.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\queue.c

levawc_chashtbl.obj: .\..\chashtbl.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\chashtbl.c

levawc_pqueue.obj: .\..\pqueue.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\pqueue.c

levawc_heap.obj: .\..\heap.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\heap.c

levawc_bitree.obj: .\..\bitree.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\bitree.c

levawc_avltree.obj: .\..\avltree.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\avltree.c

levawc_cslist.obj: .\..\cslist.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\cslist.c

levawc_set.obj: .\..\set.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\set.c

levawc_ohashtbl.obj: .\..\ohashtbl.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\ohashtbl.c

levawc_graph.obj: .\..\graph.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\graph.c

levawc_utils.obj: .\..\utils.c
	$(CC) /c /nologo /TC /Fo$@ $(LEVAWC_CFLAGS) .\..\utils.c

demo1_demo1.obj: .\demo1.c
	$(CC) /c /nologo /TC /Fo$@ $(DEMO1_CFLAGS) .\demo1.c

demo2_demo2.obj: .\demo2.c
	$(CC) /c /nologo /TC /Fo$@ $(DEMO2_CFLAGS) .\demo2.c

demo3_demo3.obj: .\demo3.c
	$(CC) /c /nologo /TC /Fo$@ $(DEMO3_CFLAGS) .\demo3.c

demo4_demo4.obj: .\demo4.c
	$(CC) /c /nologo /TC /Fo$@ $(DEMO4_CFLAGS) .\demo4.c

demo5_demo5.obj: .\demo5.c
	$(CC) /c /nologo /TC /Fo$@ $(DEMO5_CFLAGS) .\demo5.c

demo6_demo6.obj: .\demo6.c
	$(CC) /c /nologo /TC /Fo$@ $(DEMO6_CFLAGS) .\demo6.c

demo7_demo7.obj: .\demo7.c
	$(CC) /c /nologo /TC /Fo$@ $(DEMO7_CFLAGS) .\demo7.c

demo8_demo8.obj: .\demo8.c
	$(CC) /c /nologo /TC /Fo$@ $(DEMO8_CFLAGS) .\demo8.c

demo9_demo9.obj: .\demo9.c
	$(CC) /c /nologo /TC /Fo$@ $(DEMO9_CFLAGS) .\demo9.c

demo10_demo10.obj: .\demo10.c
	$(CC) /c /nologo /TC /Fo$@ $(DEMO10_CFLAGS) .\demo10.c

demo11_demo11.obj: .\demo11.c
	$(CC) /c /nologo /TC /Fo$@ $(DEMO11_CFLAGS) .\demo11.c

