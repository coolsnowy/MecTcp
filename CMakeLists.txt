cmake_minimum_required(VERSION 2.8)

project(MecTcp)

aux_source_directory(${PROJECT_SOURCE_DIR}/src  DIR_SOURCE)


#SET(CMAKE_C_COMPILER "/home/android_ndk/android_standalone_toolchain/bin/arm-linux-androideabi-gcc")
#SET(CMAKE_CXX_COMPILER "/home/android_ndk/android_standalone_toolchain/bin/arm-linux-androideabi-g++")
#set(ARCH "arm")

set(ARCH "x86")

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)


ADD_COMPILE_OPTIONS(-std=c++11)

include_directories(
    ${PROJECT_SOURCE_DIR}/include
    )

include_directories(
    ${PROJECT_SOURCE_DIR}
    ${PROJECT_SOURCE_DIR}/src
    )

link_directories(
    ${PROJECT_SOURCE_DIR}/lib/${ARCH}
    )
add_subdirectory(src/muduo/base)
add_subdirectory(src/muduo/net)
add_subdirectory(src/tcpServer)
add_subdirectory(src/tcpClient)
add_subdirectory(src/send)

