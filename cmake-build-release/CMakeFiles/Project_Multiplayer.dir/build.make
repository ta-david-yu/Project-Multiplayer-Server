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
CMAKE_BINARY_DIR = "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release"

# Include any dependencies generated for this target.
include CMakeFiles/Project_Multiplayer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Project_Multiplayer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Project_Multiplayer.dir/flags.make

CMakeFiles/Project_Multiplayer.dir/server.cpp.obj: CMakeFiles/Project_Multiplayer.dir/flags.make
CMakeFiles/Project_Multiplayer.dir/server.cpp.obj: CMakeFiles/Project_Multiplayer.dir/includes_CXX.rsp
CMakeFiles/Project_Multiplayer.dir/server.cpp.obj: ../server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Project_Multiplayer.dir/server.cpp.obj"
	D:\msys64\mingw64\bin\clang++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Project_Multiplayer.dir\server.cpp.obj -c "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\server.cpp"

CMakeFiles/Project_Multiplayer.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Project_Multiplayer.dir/server.cpp.i"
	D:\msys64\mingw64\bin\clang++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\server.cpp" > CMakeFiles\Project_Multiplayer.dir\server.cpp.i

CMakeFiles/Project_Multiplayer.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Project_Multiplayer.dir/server.cpp.s"
	D:\msys64\mingw64\bin\clang++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\server.cpp" -o CMakeFiles\Project_Multiplayer.dir\server.cpp.s

# Object files for target Project_Multiplayer
Project_Multiplayer_OBJECTS = \
"CMakeFiles/Project_Multiplayer.dir/server.cpp.obj"

# External object files for target Project_Multiplayer
Project_Multiplayer_EXTERNAL_OBJECTS =

../out/Release/Project_Multiplayer.exe: CMakeFiles/Project_Multiplayer.dir/server.cpp.obj
../out/Release/Project_Multiplayer.exe: CMakeFiles/Project_Multiplayer.dir/build.make
../out/Release/Project_Multiplayer.exe: ../out/Release/libenet.dll.a
../out/Release/Project_Multiplayer.exe: CMakeFiles/Project_Multiplayer.dir/linklibs.rsp
../out/Release/Project_Multiplayer.exe: CMakeFiles/Project_Multiplayer.dir/objects1.rsp
../out/Release/Project_Multiplayer.exe: CMakeFiles/Project_Multiplayer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ..\out\Release\Project_Multiplayer.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Project_Multiplayer.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Project_Multiplayer.dir/build: ../out/Release/Project_Multiplayer.exe

.PHONY : CMakeFiles/Project_Multiplayer.dir/build

CMakeFiles/Project_Multiplayer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Project_Multiplayer.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Project_Multiplayer.dir/clean

CMakeFiles/Project_Multiplayer.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\CMakeFiles\Project_Multiplayer.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Project_Multiplayer.dir/depend

