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
include ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/compiler_depend.make

# Include the progress variables for this target.
include ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/progress.make

# Include the compile flags for this target's objects.
include ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/flags.make

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/png.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/flags.make
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/png.c.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/png.c
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/png.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/png.c.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/png.c.o -MF CMakeFiles/vtkpng.dir/png.c.o.d -o CMakeFiles/vtkpng.dir/png.c.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/png.c

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/png.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vtkpng.dir/png.c.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/png.c > CMakeFiles/vtkpng.dir/png.c.i

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/png.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vtkpng.dir/png.c.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/png.c -o CMakeFiles/vtkpng.dir/png.c.s

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngerror.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/flags.make
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngerror.c.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngerror.c
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngerror.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngerror.c.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngerror.c.o -MF CMakeFiles/vtkpng.dir/pngerror.c.o.d -o CMakeFiles/vtkpng.dir/pngerror.c.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngerror.c

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngerror.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vtkpng.dir/pngerror.c.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngerror.c > CMakeFiles/vtkpng.dir/pngerror.c.i

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngerror.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vtkpng.dir/pngerror.c.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngerror.c -o CMakeFiles/vtkpng.dir/pngerror.c.s

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngget.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/flags.make
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngget.c.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngget.c
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngget.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngget.c.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngget.c.o -MF CMakeFiles/vtkpng.dir/pngget.c.o.d -o CMakeFiles/vtkpng.dir/pngget.c.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngget.c

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngget.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vtkpng.dir/pngget.c.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngget.c > CMakeFiles/vtkpng.dir/pngget.c.i

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngget.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vtkpng.dir/pngget.c.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngget.c -o CMakeFiles/vtkpng.dir/pngget.c.s

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngmem.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/flags.make
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngmem.c.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngmem.c
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngmem.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngmem.c.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngmem.c.o -MF CMakeFiles/vtkpng.dir/pngmem.c.o.d -o CMakeFiles/vtkpng.dir/pngmem.c.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngmem.c

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngmem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vtkpng.dir/pngmem.c.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngmem.c > CMakeFiles/vtkpng.dir/pngmem.c.i

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngmem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vtkpng.dir/pngmem.c.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngmem.c -o CMakeFiles/vtkpng.dir/pngmem.c.s

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngpread.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/flags.make
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngpread.c.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngpread.c
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngpread.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngpread.c.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngpread.c.o -MF CMakeFiles/vtkpng.dir/pngpread.c.o.d -o CMakeFiles/vtkpng.dir/pngpread.c.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngpread.c

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngpread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vtkpng.dir/pngpread.c.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngpread.c > CMakeFiles/vtkpng.dir/pngpread.c.i

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngpread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vtkpng.dir/pngpread.c.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngpread.c -o CMakeFiles/vtkpng.dir/pngpread.c.s

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngread.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/flags.make
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngread.c.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngread.c
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngread.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngread.c.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngread.c.o -MF CMakeFiles/vtkpng.dir/pngread.c.o.d -o CMakeFiles/vtkpng.dir/pngread.c.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngread.c

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vtkpng.dir/pngread.c.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngread.c > CMakeFiles/vtkpng.dir/pngread.c.i

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vtkpng.dir/pngread.c.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngread.c -o CMakeFiles/vtkpng.dir/pngread.c.s

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrio.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/flags.make
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrio.c.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngrio.c
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrio.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrio.c.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrio.c.o -MF CMakeFiles/vtkpng.dir/pngrio.c.o.d -o CMakeFiles/vtkpng.dir/pngrio.c.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngrio.c

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vtkpng.dir/pngrio.c.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngrio.c > CMakeFiles/vtkpng.dir/pngrio.c.i

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vtkpng.dir/pngrio.c.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngrio.c -o CMakeFiles/vtkpng.dir/pngrio.c.s

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrtran.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/flags.make
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrtran.c.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngrtran.c
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrtran.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrtran.c.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrtran.c.o -MF CMakeFiles/vtkpng.dir/pngrtran.c.o.d -o CMakeFiles/vtkpng.dir/pngrtran.c.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngrtran.c

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrtran.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vtkpng.dir/pngrtran.c.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngrtran.c > CMakeFiles/vtkpng.dir/pngrtran.c.i

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrtran.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vtkpng.dir/pngrtran.c.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngrtran.c -o CMakeFiles/vtkpng.dir/pngrtran.c.s

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrutil.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/flags.make
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrutil.c.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngrutil.c
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrutil.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrutil.c.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrutil.c.o -MF CMakeFiles/vtkpng.dir/pngrutil.c.o.d -o CMakeFiles/vtkpng.dir/pngrutil.c.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngrutil.c

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vtkpng.dir/pngrutil.c.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngrutil.c > CMakeFiles/vtkpng.dir/pngrutil.c.i

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vtkpng.dir/pngrutil.c.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngrutil.c -o CMakeFiles/vtkpng.dir/pngrutil.c.s

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngset.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/flags.make
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngset.c.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngset.c
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngset.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngset.c.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngset.c.o -MF CMakeFiles/vtkpng.dir/pngset.c.o.d -o CMakeFiles/vtkpng.dir/pngset.c.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngset.c

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngset.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vtkpng.dir/pngset.c.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngset.c > CMakeFiles/vtkpng.dir/pngset.c.i

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngset.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vtkpng.dir/pngset.c.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngset.c -o CMakeFiles/vtkpng.dir/pngset.c.s

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngtrans.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/flags.make
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngtrans.c.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngtrans.c
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngtrans.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngtrans.c.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngtrans.c.o -MF CMakeFiles/vtkpng.dir/pngtrans.c.o.d -o CMakeFiles/vtkpng.dir/pngtrans.c.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngtrans.c

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngtrans.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vtkpng.dir/pngtrans.c.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngtrans.c > CMakeFiles/vtkpng.dir/pngtrans.c.i

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngtrans.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vtkpng.dir/pngtrans.c.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngtrans.c -o CMakeFiles/vtkpng.dir/pngtrans.c.s

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwio.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/flags.make
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwio.c.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngwio.c
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwio.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwio.c.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwio.c.o -MF CMakeFiles/vtkpng.dir/pngwio.c.o.d -o CMakeFiles/vtkpng.dir/pngwio.c.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngwio.c

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vtkpng.dir/pngwio.c.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngwio.c > CMakeFiles/vtkpng.dir/pngwio.c.i

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vtkpng.dir/pngwio.c.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngwio.c -o CMakeFiles/vtkpng.dir/pngwio.c.s

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwrite.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/flags.make
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwrite.c.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngwrite.c
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwrite.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwrite.c.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwrite.c.o -MF CMakeFiles/vtkpng.dir/pngwrite.c.o.d -o CMakeFiles/vtkpng.dir/pngwrite.c.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngwrite.c

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwrite.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vtkpng.dir/pngwrite.c.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngwrite.c > CMakeFiles/vtkpng.dir/pngwrite.c.i

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwrite.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vtkpng.dir/pngwrite.c.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngwrite.c -o CMakeFiles/vtkpng.dir/pngwrite.c.s

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwtran.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/flags.make
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwtran.c.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngwtran.c
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwtran.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwtran.c.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwtran.c.o -MF CMakeFiles/vtkpng.dir/pngwtran.c.o.d -o CMakeFiles/vtkpng.dir/pngwtran.c.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngwtran.c

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwtran.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vtkpng.dir/pngwtran.c.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngwtran.c > CMakeFiles/vtkpng.dir/pngwtran.c.i

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwtran.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vtkpng.dir/pngwtran.c.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngwtran.c -o CMakeFiles/vtkpng.dir/pngwtran.c.s

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwutil.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/flags.make
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwutil.c.o: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngwutil.c
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwutil.c.o: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwutil.c.o"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwutil.c.o -MF CMakeFiles/vtkpng.dir/pngwutil.c.o.d -o CMakeFiles/vtkpng.dir/pngwutil.c.o -c /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngwutil.c

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vtkpng.dir/pngwutil.c.i"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngwutil.c > CMakeFiles/vtkpng.dir/pngwutil.c.i

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vtkpng.dir/pngwutil.c.s"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng/pngwutil.c -o CMakeFiles/vtkpng.dir/pngwutil.c.s

# Object files for target vtkpng
vtkpng_OBJECTS = \
"CMakeFiles/vtkpng.dir/png.c.o" \
"CMakeFiles/vtkpng.dir/pngerror.c.o" \
"CMakeFiles/vtkpng.dir/pngget.c.o" \
"CMakeFiles/vtkpng.dir/pngmem.c.o" \
"CMakeFiles/vtkpng.dir/pngpread.c.o" \
"CMakeFiles/vtkpng.dir/pngread.c.o" \
"CMakeFiles/vtkpng.dir/pngrio.c.o" \
"CMakeFiles/vtkpng.dir/pngrtran.c.o" \
"CMakeFiles/vtkpng.dir/pngrutil.c.o" \
"CMakeFiles/vtkpng.dir/pngset.c.o" \
"CMakeFiles/vtkpng.dir/pngtrans.c.o" \
"CMakeFiles/vtkpng.dir/pngwio.c.o" \
"CMakeFiles/vtkpng.dir/pngwrite.c.o" \
"CMakeFiles/vtkpng.dir/pngwtran.c.o" \
"CMakeFiles/vtkpng.dir/pngwutil.c.o"

# External object files for target vtkpng
vtkpng_EXTERNAL_OBJECTS =

lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/png.c.o
lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngerror.c.o
lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngget.c.o
lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngmem.c.o
lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngpread.c.o
lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngread.c.o
lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrio.c.o
lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrtran.c.o
lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngrutil.c.o
lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngset.c.o
lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngtrans.c.o
lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwio.c.o
lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwrite.c.o
lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwtran.c.o
lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/pngwutil.c.o
lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/build.make
lib/libvtkpng-8.2.1.dylib: lib/libvtkzlib-8.2.1.dylib
lib/libvtkpng-8.2.1.dylib: ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking C shared library ../../../lib/libvtkpng-8.2.dylib"
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vtkpng.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && $(CMAKE_COMMAND) -E cmake_symlink_library ../../../lib/libvtkpng-8.2.1.dylib ../../../lib/libvtkpng-8.2.1.dylib ../../../lib/libvtkpng-8.2.dylib

lib/libvtkpng-8.2.dylib: lib/libvtkpng-8.2.1.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libvtkpng-8.2.dylib

# Rule to build all files generated by this target.
ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/build: lib/libvtkpng-8.2.dylib
.PHONY : ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/build

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/clean:
	cd /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng && $(CMAKE_COMMAND) -P CMakeFiles/vtkpng.dir/cmake_clean.cmake
.PHONY : ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/clean

ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/depend:
	cd /Users/biyeuphuong/Desktop/CIS541/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0 /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/png/vtkpng /Users/biyeuphuong/Desktop/CIS541/build /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng /Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ThirdParty/png/vtkpng/CMakeFiles/vtkpng.dir/depend

