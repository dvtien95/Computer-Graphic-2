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
CMAKE_SOURCE_DIR = /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/biyeuphuong/Desktop/CIS541/build

# Include any dependencies generated for this target.
include IO/CityGML/CMakeFiles/vtkIOCityGML.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include IO/CityGML/CMakeFiles/vtkIOCityGML.dir/compiler_depend.make

# Include the progress variables for this target.
include IO/CityGML/CMakeFiles/vtkIOCityGML.dir/progress.make

# Include the compile flags for this target's objects.
include IO/CityGML/CMakeFiles/vtkIOCityGML.dir/flags.make

IO/CityGML/CMakeFiles/vtkIOCityGML.dir/vtkCityGMLReader.cxx.o: IO/CityGML/CMakeFiles/vtkIOCityGML.dir/flags.make
IO/CityGML/CMakeFiles/vtkIOCityGML.dir/vtkCityGMLReader.cxx.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/CityGML/vtkCityGMLReader.cxx
IO/CityGML/CMakeFiles/vtkIOCityGML.dir/vtkCityGMLReader.cxx.o: IO/CityGML/CMakeFiles/vtkIOCityGML.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object IO/CityGML/CMakeFiles/vtkIOCityGML.dir/vtkCityGMLReader.cxx.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/CityGML && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT IO/CityGML/CMakeFiles/vtkIOCityGML.dir/vtkCityGMLReader.cxx.o -MF CMakeFiles/vtkIOCityGML.dir/vtkCityGMLReader.cxx.o.d -o CMakeFiles/vtkIOCityGML.dir/vtkCityGMLReader.cxx.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/CityGML/vtkCityGMLReader.cxx

IO/CityGML/CMakeFiles/vtkIOCityGML.dir/vtkCityGMLReader.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vtkIOCityGML.dir/vtkCityGMLReader.cxx.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/CityGML && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/CityGML/vtkCityGMLReader.cxx > CMakeFiles/vtkIOCityGML.dir/vtkCityGMLReader.cxx.i

IO/CityGML/CMakeFiles/vtkIOCityGML.dir/vtkCityGMLReader.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vtkIOCityGML.dir/vtkCityGMLReader.cxx.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/CityGML && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/CityGML/vtkCityGMLReader.cxx -o CMakeFiles/vtkIOCityGML.dir/vtkCityGMLReader.cxx.s

# Object files for target vtkIOCityGML
vtkIOCityGML_OBJECTS = \
"CMakeFiles/vtkIOCityGML.dir/vtkCityGMLReader.cxx.o"

# External object files for target vtkIOCityGML
vtkIOCityGML_EXTERNAL_OBJECTS =

lib/libvtkIOCityGML-8.2.1.dylib: IO/CityGML/CMakeFiles/vtkIOCityGML.dir/vtkCityGMLReader.cxx.o
lib/libvtkIOCityGML-8.2.1.dylib: IO/CityGML/CMakeFiles/vtkIOCityGML.dir/build.make
lib/libvtkIOCityGML-8.2.1.dylib: lib/libvtkFiltersModeling-8.2.1.dylib
lib/libvtkIOCityGML-8.2.1.dylib: lib/libvtkpugixml-8.2.1.dylib
lib/libvtkIOCityGML-8.2.1.dylib: lib/libvtkFiltersGeneral-8.2.1.dylib
lib/libvtkIOCityGML-8.2.1.dylib: lib/libvtkFiltersCore-8.2.1.dylib
lib/libvtkIOCityGML-8.2.1.dylib: lib/libvtkCommonExecutionModel-8.2.1.dylib
lib/libvtkIOCityGML-8.2.1.dylib: lib/libvtkCommonDataModel-8.2.1.dylib
lib/libvtkIOCityGML-8.2.1.dylib: lib/libvtkCommonMisc-8.2.1.dylib
lib/libvtkIOCityGML-8.2.1.dylib: lib/libvtkCommonTransforms-8.2.1.dylib
lib/libvtkIOCityGML-8.2.1.dylib: lib/libvtkCommonMath-8.2.1.dylib
lib/libvtkIOCityGML-8.2.1.dylib: lib/libvtkCommonCore-8.2.1.dylib
lib/libvtkIOCityGML-8.2.1.dylib: lib/libvtksys-8.2.1.dylib
lib/libvtkIOCityGML-8.2.1.dylib: IO/CityGML/CMakeFiles/vtkIOCityGML.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../lib/libvtkIOCityGML-8.2.dylib"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/CityGML && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vtkIOCityGML.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/CityGML && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libvtkIOCityGML-8.2.1.dylib ../../lib/libvtkIOCityGML-8.2.1.dylib ../../lib/libvtkIOCityGML-8.2.dylib

lib/libvtkIOCityGML-8.2.dylib: lib/libvtkIOCityGML-8.2.1.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libvtkIOCityGML-8.2.dylib

# Rule to build all files generated by this target.
IO/CityGML/CMakeFiles/vtkIOCityGML.dir/build: lib/libvtkIOCityGML-8.2.dylib
.PHONY : IO/CityGML/CMakeFiles/vtkIOCityGML.dir/build

IO/CityGML/CMakeFiles/vtkIOCityGML.dir/clean:
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/CityGML && $(CMAKE_COMMAND) -P CMakeFiles/vtkIOCityGML.dir/cmake_clean.cmake
.PHONY : IO/CityGML/CMakeFiles/vtkIOCityGML.dir/clean

IO/CityGML/CMakeFiles/vtkIOCityGML.dir/depend:
	cd /Users/biyeuphuong/Desktop/CIS541/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0 /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/CityGML /Users/biyeuphuong/Desktop/CIS541/build /Users/biyeuphuong/Desktop/CIS541/build/IO/CityGML /Users/biyeuphuong/Desktop/CIS541/build/IO/CityGML/CMakeFiles/vtkIOCityGML.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : IO/CityGML/CMakeFiles/vtkIOCityGML.dir/depend

