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
include CMakeFiles/Client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Client.dir/flags.make

CMakeFiles/Client.dir/test_client.cpp.obj: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/test_client.cpp.obj: CMakeFiles/Client.dir/includes_CXX.rsp
CMakeFiles/Client.dir/test_client.cpp.obj: ../test_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Client.dir/test_client.cpp.obj"
	D:\msys64\mingw64\bin\clang++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Client.dir\test_client.cpp.obj -c "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\test_client.cpp"

CMakeFiles/Client.dir/test_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/test_client.cpp.i"
	D:\msys64\mingw64\bin\clang++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\test_client.cpp" > CMakeFiles\Client.dir\test_client.cpp.i

CMakeFiles/Client.dir/test_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/test_client.cpp.s"
	D:\msys64\mingw64\bin\clang++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\test_client.cpp" -o CMakeFiles\Client.dir\test_client.cpp.s

# Object files for target Client
Client_OBJECTS = \
"CMakeFiles/Client.dir/test_client.cpp.obj"

# External object files for target Client
Client_EXTERNAL_OBJECTS =

../out/Release/Client.exe: CMakeFiles/Client.dir/test_client.cpp.obj
../out/Release/Client.exe: CMakeFiles/Client.dir/build.make
../out/Release/Client.exe: ../out/Release/libenet.dll.a
../out/Release/Client.exe: CMakeFiles/Client.dir/linklibs.rsp
../out/Release/Client.exe: CMakeFiles/Client.dir/objects1.rsp
../out/Release/Client.exe: CMakeFiles/Client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ..\out\Release\Client.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Client.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Client.dir/build: ../out/Release/Client.exe

.PHONY : CMakeFiles/Client.dir/build

CMakeFiles/Client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Client.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Client.dir/clean

CMakeFiles/Client.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\CMakeFiles\Client.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Client.dir/depend

