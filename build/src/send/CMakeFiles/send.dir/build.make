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
include src/send/CMakeFiles/send.dir/depend.make

# Include the progress variables for this target.
include src/send/CMakeFiles/send.dir/progress.make

# Include the compile flags for this target's objects.
include src/send/CMakeFiles/send.dir/flags.make

src/send/CMakeFiles/send.dir/main.cpp.o: src/send/CMakeFiles/send.dir/flags.make
src/send/CMakeFiles/send.dir/main.cpp.o: ../src/send/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/slc/work/MecTcp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/send/CMakeFiles/send.dir/main.cpp.o"
	cd /home/slc/work/MecTcp/build/src/send && /usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/send.dir/main.cpp.o -c /home/slc/work/MecTcp/src/send/main.cpp

src/send/CMakeFiles/send.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/send.dir/main.cpp.i"
	cd /home/slc/work/MecTcp/build/src/send && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/slc/work/MecTcp/src/send/main.cpp > CMakeFiles/send.dir/main.cpp.i

src/send/CMakeFiles/send.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/send.dir/main.cpp.s"
	cd /home/slc/work/MecTcp/build/src/send && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/slc/work/MecTcp/src/send/main.cpp -o CMakeFiles/send.dir/main.cpp.s

src/send/CMakeFiles/send.dir/main.cpp.o.requires:

.PHONY : src/send/CMakeFiles/send.dir/main.cpp.o.requires

src/send/CMakeFiles/send.dir/main.cpp.o.provides: src/send/CMakeFiles/send.dir/main.cpp.o.requires
	$(MAKE) -f src/send/CMakeFiles/send.dir/build.make src/send/CMakeFiles/send.dir/main.cpp.o.provides.build
.PHONY : src/send/CMakeFiles/send.dir/main.cpp.o.provides

src/send/CMakeFiles/send.dir/main.cpp.o.provides.build: src/send/CMakeFiles/send.dir/main.cpp.o


# Object files for target send
send_OBJECTS = \
"CMakeFiles/send.dir/main.cpp.o"

# External object files for target send
send_EXTERNAL_OBJECTS =

../bin/send: src/send/CMakeFiles/send.dir/main.cpp.o
../bin/send: src/send/CMakeFiles/send.dir/build.make
../bin/send: src/muduo/net/libmuduo_net.a
../bin/send: src/muduo/base/libmuduo_base.a
../bin/send: src/send/CMakeFiles/send.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/slc/work/MecTcp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/send"
	cd /home/slc/work/MecTcp/build/src/send && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/send.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/send/CMakeFiles/send.dir/build: ../bin/send

.PHONY : src/send/CMakeFiles/send.dir/build

src/send/CMakeFiles/send.dir/requires: src/send/CMakeFiles/send.dir/main.cpp.o.requires

.PHONY : src/send/CMakeFiles/send.dir/requires

src/send/CMakeFiles/send.dir/clean:
	cd /home/slc/work/MecTcp/build/src/send && $(CMAKE_COMMAND) -P CMakeFiles/send.dir/cmake_clean.cmake
.PHONY : src/send/CMakeFiles/send.dir/clean

src/send/CMakeFiles/send.dir/depend:
	cd /home/slc/work/MecTcp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/slc/work/MecTcp /home/slc/work/MecTcp/src/send /home/slc/work/MecTcp/build /home/slc/work/MecTcp/build/src/send /home/slc/work/MecTcp/build/src/send/CMakeFiles/send.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/send/CMakeFiles/send.dir/depend

