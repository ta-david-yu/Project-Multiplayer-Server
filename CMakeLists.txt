cmake_minimum_required(VERSION 3.17)

project(Project_Multiplayer)

set(CMAKE_CXX_STANDARD 14)

# Cmake Macros
include(${CMAKE_SOURCE_DIR}/cmake/Macros/RedirectOutputTo.cmake)

if (CMAKE_BUILD_TYPE MATCHES Debug)
    RedirectOutputTo("out/Debug")
elseif(CMAKE_BUILD_TYPE MATCHES Release)
    RedirectOutputTo("out/Release")
endif ()

add_subdirectory(extern/enet)

add_executable(Project_Multiplayer server.cpp)
target_link_libraries(Project_Multiplayer enet)
target_include_directories(Project_Multiplayer PRIVATE extern/enet/include)
if (CMAKE_BUILD_TYPE MATCHES Release)
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Wl,-Bstatic,--whole-archive -lwinpthread -Wl,--no-whole-archive")
    target_link_libraries(Project_Multiplayer -static-libgcc)
endif ()
