# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/slc/work/MecTcp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/slc/work/MecTcp/build

# Include any dependencies generated for this target.
include src/tcpServer/CMakeFiles/tcpServer.dir/depend.make

# Include the progress variables for this target.
include src/tcpServer/CMakeFiles/tcpServer.dir/progress.make

# Include the compile flags for this target's objects.
include src/tcpServer/CMakeFiles/tcpServer.dir/flags.make

src/tcpServer/CMakeFiles/tcpServer.dir/server.cpp.o: src/tcpServer/CMakeFiles/tcpServer.dir/flags.make
src/tcpServer/CMakeFiles/tcpServer.dir/server.cpp.o: ../src/tcpServer/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/slc/work/MecTcp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/tcpServer/CMakeFiles/tcpServer.dir/server.cpp.o"
	cd /home/slc/work/MecTcp/build/src/tcpServer && /usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpServer.dir/server.cpp.o -c /home/slc/work/MecTcp/src/tcpServer/server.cpp

src/tcpServer/CMakeFiles/tcpServer.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpServer.dir/server.cpp.i"
	cd /home/slc/work/MecTcp/build/src/tcpServer && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/slc/work/MecTcp/src/tcpServer/server.cpp > CMakeFiles/tcpServer.dir/server.cpp.i

src/tcpServer/CMakeFiles/tcpServer.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpServer.dir/server.cpp.s"
	cd /home/slc/work/MecTcp/build/src/tcpServer && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/slc/work/MecTcp/src/tcpServer/server.cpp -o CMakeFiles/tcpServer.dir/server.cpp.s

src/tcpServer/CMakeFiles/tcpServer.dir/server.cpp.o.requires:

.PHONY : src/tcpServer/CMakeFiles/tcpServer.dir/server.cpp.o.requires

src/tcpServer/CMakeFiles/tcpServer.dir/server.cpp.o.provides: src/tcpServer/CMakeFiles/tcpServer.dir/server.cpp.o.requires
	$(MAKE) -f src/tcpServer/CMakeFiles/tcpServer.dir/build.make src/tcpServer/CMakeFiles/tcpServer.dir/server.cpp.o.provides.build
.PHONY : src/tcpServer/CMakeFiles/tcpServer.dir/server.cpp.o.provides

src/tcpServer/CMakeFiles/tcpServer.dir/server.cpp.o.provides.build: src/tcpServer/CMakeFiles/tcpServer.dir/server.cpp.o


src/tcpServer/CMakeFiles/tcpServer.dir/main.cpp.o: src/tcpServer/CMakeFiles/tcpServer.dir/flags.make
src/tcpServer/CMakeFiles/tcpServer.dir/main.cpp.o: ../src/tcpServer/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/slc/work/MecTcp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/tcpServer/CMakeFiles/tcpServer.dir/main.cpp.o"
	cd /home/slc/work/MecTcp/build/src/tcpServer && /usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpServer.dir/main.cpp.o -c /home/slc/work/MecTcp/src/tcpServer/main.cpp

src/tcpServer/CMakeFiles/tcpServer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpServer.dir/main.cpp.i"
	cd /home/slc/work/MecTcp/build/src/tcpServer && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/slc/work/MecTcp/src/tcpServer/main.cpp > CMakeFiles/tcpServer.dir/main.cpp.i

src/tcpServer/CMakeFiles/tcpServer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpServer.dir/main.cpp.s"
	cd /home/slc/work/MecTcp/build/src/tcpServer && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/slc/work/MecTcp/src/tcpServer/main.cpp -o CMakeFiles/tcpServer.dir/main.cpp.s

src/tcpServer/CMakeFiles/tcpServer.dir/main.cpp.o.requires:

.PHONY : src/tcpServer/CMakeFiles/tcpServer.dir/main.cpp.o.requires

src/tcpServer/CMakeFiles/tcpServer.dir/main.cpp.o.provides: src/tcpServer/CMakeFiles/tcpServer.dir/main.cpp.o.requires
	$(MAKE) -f src/tcpServer/CMakeFiles/tcpServer.dir/build.make src/tcpServer/CMakeFiles/tcpServer.dir/main.cpp.o.provides.build
.PHONY : src/tcpServer/CMakeFiles/tcpServer.dir/main.cpp.o.provides

src/tcpServer/CMakeFiles/tcpServer.dir/main.cpp.o.provides.build: src/tcpServer/CMakeFiles/tcpServer.dir/main.cpp.o


# Object files for target tcpServer
tcpServer_OBJECTS = \
"CMakeFiles/tcpServer.dir/server.cpp.o" \
"CMakeFiles/tcpServer.dir/main.cpp.o"

# External object files for target tcpServer
tcpServer_EXTERNAL_OBJECTS =

../bin/tcpServer: src/tcpServer/CMakeFiles/tcpServer.dir/server.cpp.o
../bin/tcpServer: src/tcpServer/CMakeFiles/tcpServer.dir/main.cpp.o
../bin/tcpServer: src/tcpServer/CMakeFiles/tcpServer.dir/build.make
../bin/tcpServer: src/muduo/net/libmuduo_net.a
../bin/tcpServer: src/muduo/base/libmuduo_base.a
../bin/tcpServer: src/tcpServer/CMakeFiles/tcpServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/slc/work/MecTcp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../../bin/tcpServer"
	cd /home/slc/work/MecTcp/build/src/tcpServer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcpServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/tcpServer/CMakeFiles/tcpServer.dir/build: ../bin/tcpServer

.PHONY : src/tcpServer/CMakeFiles/tcpServer.dir/build

src/tcpServer/CMakeFiles/tcpServer.dir/requires: src/tcpServer/CMakeFiles/tcpServer.dir/server.cpp.o.requires
src/tcpServer/CMakeFiles/tcpServer.dir/requires: src/tcpServer/CMakeFiles/tcpServer.dir/main.cpp.o.requires

.PHONY : src/tcpServer/CMakeFiles/tcpServer.dir/requires

src/tcpServer/CMakeFiles/tcpServer.dir/clean:
	cd /home/slc/work/MecTcp/build/src/tcpServer && $(CMAKE_COMMAND) -P CMakeFiles/tcpServer.dir/cmake_clean.cmake
.PHONY : src/tcpServer/CMakeFiles/tcpServer.dir/clean

src/tcpServer/CMakeFiles/tcpServer.dir/depend:
	cd /home/slc/work/MecTcp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/slc/work/MecTcp /home/slc/work/MecTcp/src/tcpServer /home/slc/work/MecTcp/build /home/slc/work/MecTcp/build/src/tcpServer /home/slc/work/MecTcp/build/src/tcpServer/CMakeFiles/tcpServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/tcpServer/CMakeFiles/tcpServer.dir/depend

