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
include IO/PLY/CMakeFiles/vtkIOPLY.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include IO/PLY/CMakeFiles/vtkIOPLY.dir/compiler_depend.make

# Include the progress variables for this target.
include IO/PLY/CMakeFiles/vtkIOPLY.dir/progress.make

# Include the compile flags for this target's objects.
include IO/PLY/CMakeFiles/vtkIOPLY.dir/flags.make

IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLY.cxx.o: IO/PLY/CMakeFiles/vtkIOPLY.dir/flags.make
IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLY.cxx.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/PLY/vtkPLY.cxx
IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLY.cxx.o: IO/PLY/CMakeFiles/vtkIOPLY.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLY.cxx.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/PLY && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLY.cxx.o -MF CMakeFiles/vtkIOPLY.dir/vtkPLY.cxx.o.d -o CMakeFiles/vtkIOPLY.dir/vtkPLY.cxx.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/PLY/vtkPLY.cxx

IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLY.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vtkIOPLY.dir/vtkPLY.cxx.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/PLY && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/PLY/vtkPLY.cxx > CMakeFiles/vtkIOPLY.dir/vtkPLY.cxx.i

IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLY.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vtkIOPLY.dir/vtkPLY.cxx.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/PLY && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/PLY/vtkPLY.cxx -o CMakeFiles/vtkIOPLY.dir/vtkPLY.cxx.s

IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLYReader.cxx.o: IO/PLY/CMakeFiles/vtkIOPLY.dir/flags.make
IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLYReader.cxx.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/PLY/vtkPLYReader.cxx
IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLYReader.cxx.o: IO/PLY/CMakeFiles/vtkIOPLY.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLYReader.cxx.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/PLY && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLYReader.cxx.o -MF CMakeFiles/vtkIOPLY.dir/vtkPLYReader.cxx.o.d -o CMakeFiles/vtkIOPLY.dir/vtkPLYReader.cxx.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/PLY/vtkPLYReader.cxx

IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLYReader.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vtkIOPLY.dir/vtkPLYReader.cxx.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/PLY && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/PLY/vtkPLYReader.cxx > CMakeFiles/vtkIOPLY.dir/vtkPLYReader.cxx.i

IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLYReader.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vtkIOPLY.dir/vtkPLYReader.cxx.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/PLY && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/PLY/vtkPLYReader.cxx -o CMakeFiles/vtkIOPLY.dir/vtkPLYReader.cxx.s

IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLYWriter.cxx.o: IO/PLY/CMakeFiles/vtkIOPLY.dir/flags.make
IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLYWriter.cxx.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/PLY/vtkPLYWriter.cxx
IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLYWriter.cxx.o: IO/PLY/CMakeFiles/vtkIOPLY.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLYWriter.cxx.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/PLY && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLYWriter.cxx.o -MF CMakeFiles/vtkIOPLY.dir/vtkPLYWriter.cxx.o.d -o CMakeFiles/vtkIOPLY.dir/vtkPLYWriter.cxx.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/PLY/vtkPLYWriter.cxx

IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLYWriter.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vtkIOPLY.dir/vtkPLYWriter.cxx.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/PLY && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/PLY/vtkPLYWriter.cxx > CMakeFiles/vtkIOPLY.dir/vtkPLYWriter.cxx.i

IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLYWriter.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vtkIOPLY.dir/vtkPLYWriter.cxx.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/PLY && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/PLY/vtkPLYWriter.cxx -o CMakeFiles/vtkIOPLY.dir/vtkPLYWriter.cxx.s

# Object files for target vtkIOPLY
vtkIOPLY_OBJECTS = \
"CMakeFiles/vtkIOPLY.dir/vtkPLY.cxx.o" \
"CMakeFiles/vtkIOPLY.dir/vtkPLYReader.cxx.o" \
"CMakeFiles/vtkIOPLY.dir/vtkPLYWriter.cxx.o"

# External object files for target vtkIOPLY
vtkIOPLY_EXTERNAL_OBJECTS =

lib/libvtkIOPLY-8.2.1.dylib: IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLY.cxx.o
lib/libvtkIOPLY-8.2.1.dylib: IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLYReader.cxx.o
lib/libvtkIOPLY-8.2.1.dylib: IO/PLY/CMakeFiles/vtkIOPLY.dir/vtkPLYWriter.cxx.o
lib/libvtkIOPLY-8.2.1.dylib: IO/PLY/CMakeFiles/vtkIOPLY.dir/build.make
lib/libvtkIOPLY-8.2.1.dylib: lib/libvtkIOCore-8.2.1.dylib
lib/libvtkIOPLY-8.2.1.dylib: lib/libvtkCommonExecutionModel-8.2.1.dylib
lib/libvtkIOPLY-8.2.1.dylib: lib/libvtkCommonDataModel-8.2.1.dylib
lib/libvtkIOPLY-8.2.1.dylib: lib/libvtkCommonTransforms-8.2.1.dylib
lib/libvtkIOPLY-8.2.1.dylib: lib/libvtkCommonMisc-8.2.1.dylib
lib/libvtkIOPLY-8.2.1.dylib: lib/libvtkCommonMath-8.2.1.dylib
lib/libvtkIOPLY-8.2.1.dylib: lib/libvtkCommonCore-8.2.1.dylib
lib/libvtkIOPLY-8.2.1.dylib: lib/libvtksys-8.2.1.dylib
lib/libvtkIOPLY-8.2.1.dylib: IO/PLY/CMakeFiles/vtkIOPLY.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library ../../lib/libvtkIOPLY-8.2.dylib"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/PLY && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vtkIOPLY.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/PLY && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libvtkIOPLY-8.2.1.dylib ../../lib/libvtkIOPLY-8.2.1.dylib ../../lib/libvtkIOPLY-8.2.dylib

lib/libvtkIOPLY-8.2.dylib: lib/libvtkIOPLY-8.2.1.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libvtkIOPLY-8.2.dylib

# Rule to build all files generated by this target.
IO/PLY/CMakeFiles/vtkIOPLY.dir/build: lib/libvtkIOPLY-8.2.dylib
.PHONY : IO/PLY/CMakeFiles/vtkIOPLY.dir/build

IO/PLY/CMakeFiles/vtkIOPLY.dir/clean:
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/PLY && $(CMAKE_COMMAND) -P CMakeFiles/vtkIOPLY.dir/cmake_clean.cmake
.PHONY : IO/PLY/CMakeFiles/vtkIOPLY.dir/clean

IO/PLY/CMakeFiles/vtkIOPLY.dir/depend:
	cd /Users/biyeuphuong/Desktop/CIS541/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0 /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/PLY /Users/biyeuphuong/Desktop/CIS541/build /Users/biyeuphuong/Desktop/CIS541/build/IO/PLY /Users/biyeuphuong/Desktop/CIS541/build/IO/PLY/CMakeFiles/vtkIOPLY.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : IO/PLY/CMakeFiles/vtkIOPLY.dir/depend

