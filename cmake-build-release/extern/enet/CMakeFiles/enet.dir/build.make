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
include extern/enet/CMakeFiles/enet.dir/depend.make

# Include the progress variables for this target.
include extern/enet/CMakeFiles/enet.dir/progress.make

# Include the compile flags for this target's objects.
include extern/enet/CMakeFiles/enet.dir/flags.make

extern/enet/CMakeFiles/enet.dir/callbacks.c.obj: extern/enet/CMakeFiles/enet.dir/flags.make
extern/enet/CMakeFiles/enet.dir/callbacks.c.obj: extern/enet/CMakeFiles/enet.dir/includes_C.rsp
extern/enet/CMakeFiles/enet.dir/callbacks.c.obj: ../extern/enet/callbacks.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object extern/enet/CMakeFiles/enet.dir/callbacks.c.obj"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\enet.dir\callbacks.c.obj   -c "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\callbacks.c"

extern/enet/CMakeFiles/enet.dir/callbacks.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/enet.dir/callbacks.c.i"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\callbacks.c" > CMakeFiles\enet.dir\callbacks.c.i

extern/enet/CMakeFiles/enet.dir/callbacks.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/enet.dir/callbacks.c.s"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\callbacks.c" -o CMakeFiles\enet.dir\callbacks.c.s

extern/enet/CMakeFiles/enet.dir/compress.c.obj: extern/enet/CMakeFiles/enet.dir/flags.make
extern/enet/CMakeFiles/enet.dir/compress.c.obj: extern/enet/CMakeFiles/enet.dir/includes_C.rsp
extern/enet/CMakeFiles/enet.dir/compress.c.obj: ../extern/enet/compress.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object extern/enet/CMakeFiles/enet.dir/compress.c.obj"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\enet.dir\compress.c.obj   -c "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\compress.c"

extern/enet/CMakeFiles/enet.dir/compress.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/enet.dir/compress.c.i"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\compress.c" > CMakeFiles\enet.dir\compress.c.i

extern/enet/CMakeFiles/enet.dir/compress.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/enet.dir/compress.c.s"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\compress.c" -o CMakeFiles\enet.dir\compress.c.s

extern/enet/CMakeFiles/enet.dir/host.c.obj: extern/enet/CMakeFiles/enet.dir/flags.make
extern/enet/CMakeFiles/enet.dir/host.c.obj: extern/enet/CMakeFiles/enet.dir/includes_C.rsp
extern/enet/CMakeFiles/enet.dir/host.c.obj: ../extern/enet/host.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object extern/enet/CMakeFiles/enet.dir/host.c.obj"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\enet.dir\host.c.obj   -c "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\host.c"

extern/enet/CMakeFiles/enet.dir/host.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/enet.dir/host.c.i"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\host.c" > CMakeFiles\enet.dir\host.c.i

extern/enet/CMakeFiles/enet.dir/host.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/enet.dir/host.c.s"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\host.c" -o CMakeFiles\enet.dir\host.c.s

extern/enet/CMakeFiles/enet.dir/list.c.obj: extern/enet/CMakeFiles/enet.dir/flags.make
extern/enet/CMakeFiles/enet.dir/list.c.obj: extern/enet/CMakeFiles/enet.dir/includes_C.rsp
extern/enet/CMakeFiles/enet.dir/list.c.obj: ../extern/enet/list.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object extern/enet/CMakeFiles/enet.dir/list.c.obj"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\enet.dir\list.c.obj   -c "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\list.c"

extern/enet/CMakeFiles/enet.dir/list.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/enet.dir/list.c.i"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\list.c" > CMakeFiles\enet.dir\list.c.i

extern/enet/CMakeFiles/enet.dir/list.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/enet.dir/list.c.s"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\list.c" -o CMakeFiles\enet.dir\list.c.s

extern/enet/CMakeFiles/enet.dir/packet.c.obj: extern/enet/CMakeFiles/enet.dir/flags.make
extern/enet/CMakeFiles/enet.dir/packet.c.obj: extern/enet/CMakeFiles/enet.dir/includes_C.rsp
extern/enet/CMakeFiles/enet.dir/packet.c.obj: ../extern/enet/packet.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building C object extern/enet/CMakeFiles/enet.dir/packet.c.obj"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\enet.dir\packet.c.obj   -c "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\packet.c"

extern/enet/CMakeFiles/enet.dir/packet.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/enet.dir/packet.c.i"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\packet.c" > CMakeFiles\enet.dir\packet.c.i

extern/enet/CMakeFiles/enet.dir/packet.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/enet.dir/packet.c.s"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\packet.c" -o CMakeFiles\enet.dir\packet.c.s

extern/enet/CMakeFiles/enet.dir/peer.c.obj: extern/enet/CMakeFiles/enet.dir/flags.make
extern/enet/CMakeFiles/enet.dir/peer.c.obj: extern/enet/CMakeFiles/enet.dir/includes_C.rsp
extern/enet/CMakeFiles/enet.dir/peer.c.obj: ../extern/enet/peer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building C object extern/enet/CMakeFiles/enet.dir/peer.c.obj"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\enet.dir\peer.c.obj   -c "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\peer.c"

extern/enet/CMakeFiles/enet.dir/peer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/enet.dir/peer.c.i"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\peer.c" > CMakeFiles\enet.dir\peer.c.i

extern/enet/CMakeFiles/enet.dir/peer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/enet.dir/peer.c.s"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\peer.c" -o CMakeFiles\enet.dir\peer.c.s

extern/enet/CMakeFiles/enet.dir/protocol.c.obj: extern/enet/CMakeFiles/enet.dir/flags.make
extern/enet/CMakeFiles/enet.dir/protocol.c.obj: extern/enet/CMakeFiles/enet.dir/includes_C.rsp
extern/enet/CMakeFiles/enet.dir/protocol.c.obj: ../extern/enet/protocol.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building C object extern/enet/CMakeFiles/enet.dir/protocol.c.obj"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\enet.dir\protocol.c.obj   -c "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\protocol.c"

extern/enet/CMakeFiles/enet.dir/protocol.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/enet.dir/protocol.c.i"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\protocol.c" > CMakeFiles\enet.dir\protocol.c.i

extern/enet/CMakeFiles/enet.dir/protocol.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/enet.dir/protocol.c.s"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\protocol.c" -o CMakeFiles\enet.dir\protocol.c.s

extern/enet/CMakeFiles/enet.dir/unix.c.obj: extern/enet/CMakeFiles/enet.dir/flags.make
extern/enet/CMakeFiles/enet.dir/unix.c.obj: extern/enet/CMakeFiles/enet.dir/includes_C.rsp
extern/enet/CMakeFiles/enet.dir/unix.c.obj: ../extern/enet/unix.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building C object extern/enet/CMakeFiles/enet.dir/unix.c.obj"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\enet.dir\unix.c.obj   -c "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\unix.c"

extern/enet/CMakeFiles/enet.dir/unix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/enet.dir/unix.c.i"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\unix.c" > CMakeFiles\enet.dir\unix.c.i

extern/enet/CMakeFiles/enet.dir/unix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/enet.dir/unix.c.s"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\unix.c" -o CMakeFiles\enet.dir\unix.c.s

extern/enet/CMakeFiles/enet.dir/win32.c.obj: extern/enet/CMakeFiles/enet.dir/flags.make
extern/enet/CMakeFiles/enet.dir/win32.c.obj: extern/enet/CMakeFiles/enet.dir/includes_C.rsp
extern/enet/CMakeFiles/enet.dir/win32.c.obj: ../extern/enet/win32.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building C object extern/enet/CMakeFiles/enet.dir/win32.c.obj"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\enet.dir\win32.c.obj   -c "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\win32.c"

extern/enet/CMakeFiles/enet.dir/win32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/enet.dir/win32.c.i"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\win32.c" > CMakeFiles\enet.dir\win32.c.i

extern/enet/CMakeFiles/enet.dir/win32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/enet.dir/win32.c.s"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && D:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet\win32.c" -o CMakeFiles\enet.dir\win32.c.s

# Object files for target enet
enet_OBJECTS = \
"CMakeFiles/enet.dir/callbacks.c.obj" \
"CMakeFiles/enet.dir/compress.c.obj" \
"CMakeFiles/enet.dir/host.c.obj" \
"CMakeFiles/enet.dir/list.c.obj" \
"CMakeFiles/enet.dir/packet.c.obj" \
"CMakeFiles/enet.dir/peer.c.obj" \
"CMakeFiles/enet.dir/protocol.c.obj" \
"CMakeFiles/enet.dir/unix.c.obj" \
"CMakeFiles/enet.dir/win32.c.obj"

# External object files for target enet
enet_EXTERNAL_OBJECTS =

../out/Release/libenet.a: extern/enet/CMakeFiles/enet.dir/callbacks.c.obj
../out/Release/libenet.a: extern/enet/CMakeFiles/enet.dir/compress.c.obj
../out/Release/libenet.a: extern/enet/CMakeFiles/enet.dir/host.c.obj
../out/Release/libenet.a: extern/enet/CMakeFiles/enet.dir/list.c.obj
../out/Release/libenet.a: extern/enet/CMakeFiles/enet.dir/packet.c.obj
../out/Release/libenet.a: extern/enet/CMakeFiles/enet.dir/peer.c.obj
../out/Release/libenet.a: extern/enet/CMakeFiles/enet.dir/protocol.c.obj
../out/Release/libenet.a: extern/enet/CMakeFiles/enet.dir/unix.c.obj
../out/Release/libenet.a: extern/enet/CMakeFiles/enet.dir/win32.c.obj
../out/Release/libenet.a: extern/enet/CMakeFiles/enet.dir/build.make
../out/Release/libenet.a: extern/enet/CMakeFiles/enet.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Linking C static library ..\..\..\out\Release\libenet.a"
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && $(CMAKE_COMMAND) -P CMakeFiles\enet.dir\cmake_clean_target.cmake
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\enet.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extern/enet/CMakeFiles/enet.dir/build: ../out/Release/libenet.a

.PHONY : extern/enet/CMakeFiles/enet.dir/build

extern/enet/CMakeFiles/enet.dir/clean:
	cd /d "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" && $(CMAKE_COMMAND) -P CMakeFiles\enet.dir\cmake_clean.cmake
.PHONY : extern/enet/CMakeFiles/enet.dir/clean

extern/enet/CMakeFiles/enet.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\extern\enet" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet" "D:\Game Project\2021-Project-Arcade\Project-Multiplayer\cmake-build-release\extern\enet\CMakeFiles\enet.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : extern/enet/CMakeFiles/enet.dir/depend

