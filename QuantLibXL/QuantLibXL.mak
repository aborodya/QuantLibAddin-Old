# Microsoft Developer Studio Generated NMAKE File, Based on QuantLibXL.dsp
!IF "$(CFG)" == ""
CFG=QuantLibXL - Win32 Release
!MESSAGE No configuration specified. Defaulting to QuantLibXL - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "QuantLibXL - Win32 Release" && "$(CFG)" != "QuantLibXL - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "QuantLibXL.mak" CFG="QuantLibXL - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "QuantLibXL - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "QuantLibXL - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "QuantLibXL - Win32 Release"

OUTDIR=.\build\Release
INTDIR=.\build\Release

!IF "$(RECURSE)" == "0" 

ALL : ".\xll\QuantLibXL-vc6-mt-s-0_3_6.xll"

!ELSE 

ALL : "xlw - Win32 Release" "QuantLib - Win32 Release" ".\xll\QuantLibXL-vc6-mt-s-0_3_6.xll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"QuantLib - Win32 ReleaseCLEAN" "xlw - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\datef.obj"
	-@erase "$(INTDIR)\engines.obj"
	-@erase "$(INTDIR)\mathf.obj"
	-@erase "$(INTDIR)\montecarlo.obj"
	-@erase "$(INTDIR)\pricers.obj"
	-@erase "$(INTDIR)\qlxlfoper.obj"
	-@erase "$(INTDIR)\termstructures.obj"
	-@erase "$(INTDIR)\utilities.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vols.obj"
	-@erase "$(INTDIR)\xlAutoOpen.obj"
	-@erase "$(OUTDIR)\QuantLibXL-vc6-mt-s-0_3_6.exp"
	-@erase "$(OUTDIR)\QuantLibXL-vc6-mt-s-0_3_6.lib"
	-@erase ".\xll\QuantLibXL-vc6-mt-s-0_3_6.xll"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /Gi /GR /GX /O2 /Ob2 /I ".\\" /I "$(XLW_DIR)" /I "$(QL_DIR)" /I "$(QL_FUN_DIR)" /D "NDEBUG" /D "NOMINMAX" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)\QuantLibXL.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\QuantLibXL.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\QuantLibXL-vc6-mt-s-0_3_6.pdb" /machine:I386 /out:"xll\QuantLibXL-vc6-mt-s-0_3_6.xll" /implib:"$(OUTDIR)\QuantLibXL-vc6-mt-s-0_3_6.lib" /libpath:"$(XLW_DIR)\lib\Win32\VisualStudio" /libpath:"$(QL_DIR)\lib" 
LINK32_OBJS= \
	"$(INTDIR)\datef.obj" \
	"$(INTDIR)\engines.obj" \
	"$(INTDIR)\mathf.obj" \
	"$(INTDIR)\montecarlo.obj" \
	"$(INTDIR)\pricers.obj" \
	"$(INTDIR)\qlxlfoper.obj" \
	"$(INTDIR)\termstructures.obj" \
	"$(INTDIR)\utilities.obj" \
	"$(INTDIR)\vols.obj" \
	"$(INTDIR)\xlAutoOpen.obj" \
	"..\QuantLib\lib\QuantLib-vc6-mt-s-0_3_6.lib" \
	"..\XLW\lib\Win32\VisualStudio\xlw.lib"

".\xll\QuantLibXL-vc6-mt-s-0_3_6.xll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "QuantLibXL - Win32 Debug"

OUTDIR=.\build\Debug
INTDIR=.\build\Debug

!IF "$(RECURSE)" == "0" 

ALL : ".\xll\QuantLibXL-vc6-mt-sgd-0_3_6.xll"

!ELSE 

ALL : "xlw - Win32 Debug" "QuantLib - Win32 Debug" ".\xll\QuantLibXL-vc6-mt-sgd-0_3_6.xll"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"QuantLib - Win32 DebugCLEAN" "xlw - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\datef.obj"
	-@erase "$(INTDIR)\engines.obj"
	-@erase "$(INTDIR)\mathf.obj"
	-@erase "$(INTDIR)\montecarlo.obj"
	-@erase "$(INTDIR)\pricers.obj"
	-@erase "$(INTDIR)\qlxlfoper.obj"
	-@erase "$(INTDIR)\termstructures.obj"
	-@erase "$(INTDIR)\utilities.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\vols.obj"
	-@erase "$(INTDIR)\xlAutoOpen.obj"
	-@erase "$(OUTDIR)\QuantLibXL-vc6-mt-sgd-0_3_6.exp"
	-@erase "$(OUTDIR)\QuantLibXL-vc6-mt-sgd-0_3_6.lib"
	-@erase "$(OUTDIR)\QuantLibXL-vc6-mt-sgd-0_3_6.pdb"
	-@erase ".\xll\QuantLibXL-vc6-mt-sgd-0_3_6.ilk"
	-@erase ".\xll\QuantLibXL-vc6-mt-sgd-0_3_6.xll"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /Gi /GR /GX /ZI /Od /I ".\\" /I "$(XLW_DIR)" /I "$(QL_DIR)" /I "$(QL_FUN_DIR)" /D "_DEBUG" /D "NOMINMAX" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)\QuantLibXL.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\QuantLibXL.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\QuantLibXL-vc6-mt-sgd-0_3_6.pdb" /debug /machine:I386 /out:"xll\QuantLibXL-vc6-mt-sgd-0_3_6.xll" /implib:"$(OUTDIR)\QuantLibXL-vc6-mt-sgd-0_3_6.lib" /pdbtype:sept /libpath:"$(XLW_DIR)\lib\Win32\VisualStudio" /libpath:"$(QL_DIR)\lib" 
LINK32_OBJS= \
	"$(INTDIR)\datef.obj" \
	"$(INTDIR)\engines.obj" \
	"$(INTDIR)\mathf.obj" \
	"$(INTDIR)\montecarlo.obj" \
	"$(INTDIR)\pricers.obj" \
	"$(INTDIR)\qlxlfoper.obj" \
	"$(INTDIR)\termstructures.obj" \
	"$(INTDIR)\utilities.obj" \
	"$(INTDIR)\vols.obj" \
	"$(INTDIR)\xlAutoOpen.obj" \
	"..\QuantLib\lib\QuantLib-vc6-mt-sgd-0_3_6.lib" \
	"..\XLW\lib\Win32\VisualStudio\xlwd.lib"

".\xll\QuantLibXL-vc6-mt-sgd-0_3_6.xll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("QuantLibXL.dep")
!INCLUDE "QuantLibXL.dep"
!ELSE 
!MESSAGE Warning: cannot find "QuantLibXL.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "QuantLibXL - Win32 Release" || "$(CFG)" == "QuantLibXL - Win32 Debug"
SOURCE=.\qlxl\datef.cpp

"$(INTDIR)\datef.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\qlxl\engines.cpp

"$(INTDIR)\engines.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\qlxl\mathf.cpp

"$(INTDIR)\mathf.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\qlxl\montecarlo.cpp

"$(INTDIR)\montecarlo.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\qlxl\pricers.cpp

"$(INTDIR)\pricers.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\qlxl\qlxlfoper.cpp

"$(INTDIR)\qlxlfoper.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\qlxl\termstructures.cpp

"$(INTDIR)\termstructures.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\qlxl\utilities.cpp

"$(INTDIR)\utilities.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\qlxl\vols.cpp

"$(INTDIR)\vols.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\qlxl\xlAutoOpen.cpp

"$(INTDIR)\xlAutoOpen.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!IF  "$(CFG)" == "QuantLibXL - Win32 Release"

"QuantLib - Win32 Release" : 
   cd "\Projects\QuantLib"
   $(MAKE) /$(MAKEFLAGS) /F .\QuantLib.mak CFG="QuantLib - Win32 Release" 
   cd "..\QuantLibXL"

"QuantLib - Win32 ReleaseCLEAN" : 
   cd "\Projects\QuantLib"
   $(MAKE) /$(MAKEFLAGS) /F .\QuantLib.mak CFG="QuantLib - Win32 Release" RECURSE=1 CLEAN 
   cd "..\QuantLibXL"

!ELSEIF  "$(CFG)" == "QuantLibXL - Win32 Debug"

"QuantLib - Win32 Debug" : 
   cd "\Projects\QuantLib"
   $(MAKE) /$(MAKEFLAGS) /F .\QuantLib.mak CFG="QuantLib - Win32 Debug" 
   cd "..\QuantLibXL"

"QuantLib - Win32 DebugCLEAN" : 
   cd "\Projects\QuantLib"
   $(MAKE) /$(MAKEFLAGS) /F .\QuantLib.mak CFG="QuantLib - Win32 Debug" RECURSE=1 CLEAN 
   cd "..\QuantLibXL"

!ENDIF 

!IF  "$(CFG)" == "QuantLibXL - Win32 Release"

"xlw - Win32 Release" : 
   cd "\Projects\XLW"
   $(MAKE) /$(MAKEFLAGS) /F .\xlw.mak CFG="xlw - Win32 Release" 
   cd "..\QuantLibXL"

"xlw - Win32 ReleaseCLEAN" : 
   cd "\Projects\XLW"
   $(MAKE) /$(MAKEFLAGS) /F .\xlw.mak CFG="xlw - Win32 Release" RECURSE=1 CLEAN 
   cd "..\QuantLibXL"

!ELSEIF  "$(CFG)" == "QuantLibXL - Win32 Debug"

"xlw - Win32 Debug" : 
   cd "\Projects\XLW"
   $(MAKE) /$(MAKEFLAGS) /F .\xlw.mak CFG="xlw - Win32 Debug" 
   cd "..\QuantLibXL"

"xlw - Win32 DebugCLEAN" : 
   cd "\Projects\XLW"
   $(MAKE) /$(MAKEFLAGS) /F .\xlw.mak CFG="xlw - Win32 Debug" RECURSE=1 CLEAN 
   cd "..\QuantLibXL"

!ENDIF 


!ENDIF 

