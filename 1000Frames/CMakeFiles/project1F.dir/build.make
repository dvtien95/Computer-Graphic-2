# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/biyeuphuong/Desktop/CIS541/1F

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/biyeuphuong/Desktop/CIS541/1F

# Include any dependencies generated for this target.
include CMakeFiles/project1F.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/project1F.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/project1F.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/project1F.dir/flags.make

CMakeFiles/project1F.dir/project1F.cxx.o: CMakeFiles/project1F.dir/flags.make
CMakeFiles/project1F.dir/project1F.cxx.o: project1F.cxx
CMakeFiles/project1F.dir/project1F.cxx.o: CMakeFiles/project1F.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/1F/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/project1F.dir/project1F.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/project1F.dir/project1F.cxx.o -MF CMakeFiles/project1F.dir/project1F.cxx.o.d -o CMakeFiles/project1F.dir/project1F.cxx.o -c /Users/biyeuphuong/Desktop/CIS541/1F/project1F.cxx

CMakeFiles/project1F.dir/project1F.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project1F.dir/project1F.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/1F/project1F.cxx > CMakeFiles/project1F.dir/project1F.cxx.i

CMakeFiles/project1F.dir/project1F.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project1F.dir/project1F.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/1F/project1F.cxx -o CMakeFiles/project1F.dir/project1F.cxx.s

# Object files for target project1F
project1F_OBJECTS = \
"CMakeFiles/project1F.dir/project1F.cxx.o"

# External object files for target project1F
project1F_EXTERNAL_OBJECTS =

project1F.app/Contents/MacOS/project1F: CMakeFiles/project1F.dir/project1F.cxx.o
project1F.app/Contents/MacOS/project1F: CMakeFiles/project1F.dir/build.make
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkDomainsChemistryOpenGL2-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersFlowPaths-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersGeneric-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersHyperTree-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersParallelImaging-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersPoints-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersProgrammable-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersSMP-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersSelection-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersTexture-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersTopology-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersVerdict-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkGeovisCore-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOAMR-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOAsynchronous-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOCityGML-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOEnSight-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOExodus-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOExportOpenGL2-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOExportPDF-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOImport-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOInfovis-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOLSDyna-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOMINC-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOMovie-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOPLY-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOParallel-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOParallelXML-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOSQL-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOSegY-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOTecplotTable-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOVeraOut-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOVideo-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkImagingMorphological-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkImagingStatistics-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkImagingStencil-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkInteractionImage-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingContextOpenGL2-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingImage-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingLOD-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingVolumeOpenGL2-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkViewsContext2D-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkViewsInfovis-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkDomainsChemistry-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkverdict-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkproj-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersAMR-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkpugixml-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOExport-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingGL2PSOpenGL2-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkgl2ps-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtklibharu-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtklibxml2-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtktheora-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkogg-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersParallel-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkexodusII-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOGeometry-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIONetCDF-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkNetCDF-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkjsoncpp-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkParallelCore-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOLegacy-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtksqlite-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkhdf5_hl-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkhdf5-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingOpenGL2-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkglew-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkImagingMath-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkChartsCore-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingContext2D-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersImaging-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkInfovisLayout-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkInfovisCore-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkViewsCore-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkInteractionWidgets-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersHybrid-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkImagingGeneral-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkImagingSources-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersModeling-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkImagingHybrid-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOImage-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkDICOMParser-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkmetaio-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkpng-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtktiff-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkjpeg-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkInteractionStyle-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersExtraction-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersStatistics-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkImagingFourier-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingAnnotation-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkImagingColor-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingVolume-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkImagingCore-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOXML-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOXMLParser-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOCore-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkdoubleconversion-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtklz4-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtklzma-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkexpat-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingLabel-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingFreeType-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingCore-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkCommonColor-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersGeometry-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersSources-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersGeneral-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkCommonComputationalGeometry-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersCore-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkCommonExecutionModel-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkCommonDataModel-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkCommonMisc-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkCommonSystem-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkCommonTransforms-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkCommonMath-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkCommonCore-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtksys-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkfreetype-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: /Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkzlib-8.2.1.dylib
project1F.app/Contents/MacOS/project1F: CMakeFiles/project1F.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/biyeuphuong/Desktop/CIS541/1F/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable project1F.app/Contents/MacOS/project1F"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/project1F.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/project1F.dir/build: project1F.app/Contents/MacOS/project1F
.PHONY : CMakeFiles/project1F.dir/build

CMakeFiles/project1F.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/project1F.dir/cmake_clean.cmake
.PHONY : CMakeFiles/project1F.dir/clean

CMakeFiles/project1F.dir/depend:
	cd /Users/biyeuphuong/Desktop/CIS541/1F && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/biyeuphuong/Desktop/CIS541/1F /Users/biyeuphuong/Desktop/CIS541/1F /Users/biyeuphuong/Desktop/CIS541/1F /Users/biyeuphuong/Desktop/CIS541/1F /Users/biyeuphuong/Desktop/CIS541/1F/CMakeFiles/project1F.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/project1F.dir/depend
