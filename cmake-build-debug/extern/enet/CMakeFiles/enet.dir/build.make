# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\JetBrains\CLion 2020.3.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\JetBrains\CLion 2020.3.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\Game Project\2021-Project-Arcade\Project-Multiplayer"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-debug"

# Include any dependencies generated for this target.
include extern/enet/CMakeFiles/enet.dir/depend.make

# Include the progress variables for this target.
include extern/enet/CMakeFiles/enet.dir/progress.make

# Include the compile flags for this target's objects.
include extern/enet/CMakeFiles/enet.dir/flags.make

extern/enet/CMakeFiles/enet.dir/enet.c.obj: extern/enet/CMakeFiles/enet.dir/flags.make
extern/enet/CMakeFiles/enet.dir/enet.c.obj: ../extern/enet/enet.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object extern/enet/CMakeFiles/enet.dir/enet.c.obj"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-debug\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\enet.dir\enet.c.obj   -c "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\enet.c"

extern/enet/CMakeFiles/enet.dir/enet.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/enet.dir/enet.c.i"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-debug\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\enet.c" > CMakeFiles\enet.dir\enet.c.i

extern/enet/CMakeFiles/enet.dir/enet.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/enet.dir/enet.c.s"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-debug\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\enet.c" -o CMakeFiles\enet.dir\enet.c.s

# Object files for target enet
enet_OBJECTS = \
"CMakeFiles/enet.dir/enet.c.obj"

# External object files for target enet
enet_EXTERNAL_OBJECTS =

../out/Debug/enet.dll: extern/enet/CMakeFiles/enet.dir/enet.c.obj
../out/Debug/enet.dll: extern/enet/CMakeFiles/enet.dir/build.make
../out/Debug/enet.dll: extern/enet/CMakeFiles/enet.dir/linklibs.rsp
../out/Debug/enet.dll: extern/enet/CMakeFiles/enet.dir/objects1.rsp
../out/Debug/enet.dll: extern/enet/CMakeFiles/enet.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library ..\..\..\out\Debug\enet.dll"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-debug\extern\enet" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\enet.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extern/enet/CMakeFiles/enet.dir/build: ../out/Debug/enet.dll

.PHONY : extern/enet/CMakeFiles/enet.dir/build

extern/enet/CMakeFiles/enet.dir/clean:
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-debug\extern\enet" && $(CMAKE_COMMAND) -P CMakeFiles\enet.dir\cmake_clean.cmake
.PHONY : extern/enet/CMakeFiles/enet.dir/clean

extern/enet/CMakeFiles/enet.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-debug" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-debug\extern\enet" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-debug\extern\enet\CMakeFiles\enet.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : extern/enet/CMakeFiles/enet.dir/depend

