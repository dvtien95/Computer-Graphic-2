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
include IO/Movie/CMakeFiles/vtkIOMovie.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include IO/Movie/CMakeFiles/vtkIOMovie.dir/compiler_depend.make

# Include the progress variables for this target.
include IO/Movie/CMakeFiles/vtkIOMovie.dir/progress.make

# Include the compile flags for this target's objects.
include IO/Movie/CMakeFiles/vtkIOMovie.dir/flags.make

IO/Movie/CMakeFiles/vtkIOMovie.dir/vtkGenericMovieWriter.cxx.o: IO/Movie/CMakeFiles/vtkIOMovie.dir/flags.make
IO/Movie/CMakeFiles/vtkIOMovie.dir/vtkGenericMovieWriter.cxx.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Movie/vtkGenericMovieWriter.cxx
IO/Movie/CMakeFiles/vtkIOMovie.dir/vtkGenericMovieWriter.cxx.o: IO/Movie/CMakeFiles/vtkIOMovie.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object IO/Movie/CMakeFiles/vtkIOMovie.dir/vtkGenericMovieWriter.cxx.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/Movie && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT IO/Movie/CMakeFiles/vtkIOMovie.dir/vtkGenericMovieWriter.cxx.o -MF CMakeFiles/vtkIOMovie.dir/vtkGenericMovieWriter.cxx.o.d -o CMakeFiles/vtkIOMovie.dir/vtkGenericMovieWriter.cxx.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Movie/vtkGenericMovieWriter.cxx

IO/Movie/CMakeFiles/vtkIOMovie.dir/vtkGenericMovieWriter.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vtkIOMovie.dir/vtkGenericMovieWriter.cxx.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/Movie && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Movie/vtkGenericMovieWriter.cxx > CMakeFiles/vtkIOMovie.dir/vtkGenericMovieWriter.cxx.i

IO/Movie/CMakeFiles/vtkIOMovie.dir/vtkGenericMovieWriter.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vtkIOMovie.dir/vtkGenericMovieWriter.cxx.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/Movie && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Movie/vtkGenericMovieWriter.cxx -o CMakeFiles/vtkIOMovie.dir/vtkGenericMovieWriter.cxx.s

IO/Movie/CMakeFiles/vtkIOMovie.dir/vtkOggTheoraWriter.cxx.o: IO/Movie/CMakeFiles/vtkIOMovie.dir/flags.make
IO/Movie/CMakeFiles/vtkIOMovie.dir/vtkOggTheoraWriter.cxx.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Movie/vtkOggTheoraWriter.cxx
IO/Movie/CMakeFiles/vtkIOMovie.dir/vtkOggTheoraWriter.cxx.o: IO/Movie/CMakeFiles/vtkIOMovie.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object IO/Movie/CMakeFiles/vtkIOMovie.dir/vtkOggTheoraWriter.cxx.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/Movie && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT IO/Movie/CMakeFiles/vtkIOMovie.dir/vtkOggTheoraWriter.cxx.o -MF CMakeFiles/vtkIOMovie.dir/vtkOggTheoraWriter.cxx.o.d -o CMakeFiles/vtkIOMovie.dir/vtkOggTheoraWriter.cxx.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Movie/vtkOggTheoraWriter.cxx

IO/Movie/CMakeFiles/vtkIOMovie.dir/vtkOggTheoraWriter.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vtkIOMovie.dir/vtkOggTheoraWriter.cxx.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/Movie && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Movie/vtkOggTheoraWriter.cxx > CMakeFiles/vtkIOMovie.dir/vtkOggTheoraWriter.cxx.i

IO/Movie/CMakeFiles/vtkIOMovie.dir/vtkOggTheoraWriter.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vtkIOMovie.dir/vtkOggTheoraWriter.cxx.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/Movie && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Movie/vtkOggTheoraWriter.cxx -o CMakeFiles/vtkIOMovie.dir/vtkOggTheoraWriter.cxx.s

# Object files for target vtkIOMovie
vtkIOMovie_OBJECTS = \
"CMakeFiles/vtkIOMovie.dir/vtkGenericMovieWriter.cxx.o" \
"CMakeFiles/vtkIOMovie.dir/vtkOggTheoraWriter.cxx.o"

# External object files for target vtkIOMovie
vtkIOMovie_EXTERNAL_OBJECTS =

lib/libvtkIOMovie-8.2.1.dylib: IO/Movie/CMakeFiles/vtkIOMovie.dir/vtkGenericMovieWriter.cxx.o
lib/libvtkIOMovie-8.2.1.dylib: IO/Movie/CMakeFiles/vtkIOMovie.dir/vtkOggTheoraWriter.cxx.o
lib/libvtkIOMovie-8.2.1.dylib: IO/Movie/CMakeFiles/vtkIOMovie.dir/build.make
lib/libvtkIOMovie-8.2.1.dylib: lib/libvtkCommonExecutionModel-8.2.1.dylib
lib/libvtkIOMovie-8.2.1.dylib: lib/libvtktheora-8.2.1.dylib
lib/libvtkIOMovie-8.2.1.dylib: lib/libvtkCommonDataModel-8.2.1.dylib
lib/libvtkIOMovie-8.2.1.dylib: lib/libvtkCommonMisc-8.2.1.dylib
lib/libvtkIOMovie-8.2.1.dylib: lib/libvtkCommonSystem-8.2.1.dylib
lib/libvtkIOMovie-8.2.1.dylib: lib/libvtkCommonTransforms-8.2.1.dylib
lib/libvtkIOMovie-8.2.1.dylib: lib/libvtkCommonMath-8.2.1.dylib
lib/libvtkIOMovie-8.2.1.dylib: lib/libvtkCommonCore-8.2.1.dylib
lib/libvtkIOMovie-8.2.1.dylib: lib/libvtkogg-8.2.1.dylib
lib/libvtkIOMovie-8.2.1.dylib: IO/Movie/CMakeFiles/vtkIOMovie.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library ../../lib/libvtkIOMovie-8.2.dylib"
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/Movie && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vtkIOMovie.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/Movie && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libvtkIOMovie-8.2.1.dylib ../../lib/libvtkIOMovie-8.2.1.dylib ../../lib/libvtkIOMovie-8.2.dylib

lib/libvtkIOMovie-8.2.dylib: lib/libvtkIOMovie-8.2.1.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libvtkIOMovie-8.2.dylib

# Rule to build all files generated by this target.
IO/Movie/CMakeFiles/vtkIOMovie.dir/build: lib/libvtkIOMovie-8.2.dylib
.PHONY : IO/Movie/CMakeFiles/vtkIOMovie.dir/build

IO/Movie/CMakeFiles/vtkIOMovie.dir/clean:
	cd /Users/biyeuphuong/Desktop/CIS541/build/IO/Movie && $(CMAKE_COMMAND) -P CMakeFiles/vtkIOMovie.dir/cmake_clean.cmake
.PHONY : IO/Movie/CMakeFiles/vtkIOMovie.dir/clean

IO/Movie/CMakeFiles/vtkIOMovie.dir/depend:
	cd /Users/biyeuphuong/Desktop/CIS541/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0 /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Movie /Users/biyeuphuong/Desktop/CIS541/build /Users/biyeuphuong/Desktop/CIS541/build/IO/Movie /Users/biyeuphuong/Desktop/CIS541/build/IO/Movie/CMakeFiles/vtkIOMovie.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : IO/Movie/CMakeFiles/vtkIOMovie.dir/depend

