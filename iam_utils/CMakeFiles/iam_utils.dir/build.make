# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /home/hw/iam_refactor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hw/iam_refactor

# Include any dependencies generated for this target.
include iam_utils/CMakeFiles/iam_utils.dir/depend.make

# Include the progress variables for this target.
include iam_utils/CMakeFiles/iam_utils.dir/progress.make

# Include the compile flags for this target's objects.
include iam_utils/CMakeFiles/iam_utils.dir/flags.make

iam_utils/CMakeFiles/iam_utils.dir/src/thread_groups.cpp.o: iam_utils/CMakeFiles/iam_utils.dir/flags.make
iam_utils/CMakeFiles/iam_utils.dir/src/thread_groups.cpp.o: iam_utils/src/thread_groups.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object iam_utils/CMakeFiles/iam_utils.dir/src/thread_groups.cpp.o"
	cd /home/hw/iam_refactor/iam_utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/iam_utils.dir/src/thread_groups.cpp.o -c /home/hw/iam_refactor/iam_utils/src/thread_groups.cpp

iam_utils/CMakeFiles/iam_utils.dir/src/thread_groups.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/iam_utils.dir/src/thread_groups.cpp.i"
	cd /home/hw/iam_refactor/iam_utils && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hw/iam_refactor/iam_utils/src/thread_groups.cpp > CMakeFiles/iam_utils.dir/src/thread_groups.cpp.i

iam_utils/CMakeFiles/iam_utils.dir/src/thread_groups.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/iam_utils.dir/src/thread_groups.cpp.s"
	cd /home/hw/iam_refactor/iam_utils && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hw/iam_refactor/iam_utils/src/thread_groups.cpp -o CMakeFiles/iam_utils.dir/src/thread_groups.cpp.s

# Object files for target iam_utils
iam_utils_OBJECTS = \
"CMakeFiles/iam_utils.dir/src/thread_groups.cpp.o"

# External object files for target iam_utils
iam_utils_EXTERNAL_OBJECTS =

iam_utils/libiam_utils.so: iam_utils/CMakeFiles/iam_utils.dir/src/thread_groups.cpp.o
iam_utils/libiam_utils.so: iam_utils/CMakeFiles/iam_utils.dir/build.make
iam_utils/libiam_utils.so: ohos_utils/libohos_utils.so
iam_utils/libiam_utils.so: ohos_hilog/libohos_hilog.so
iam_utils/libiam_utils.so: iam_utils/CMakeFiles/iam_utils.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libiam_utils.so"
	cd /home/hw/iam_refactor/iam_utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/iam_utils.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
iam_utils/CMakeFiles/iam_utils.dir/build: iam_utils/libiam_utils.so

.PHONY : iam_utils/CMakeFiles/iam_utils.dir/build

iam_utils/CMakeFiles/iam_utils.dir/clean:
	cd /home/hw/iam_refactor/iam_utils && $(CMAKE_COMMAND) -P CMakeFiles/iam_utils.dir/cmake_clean.cmake
.PHONY : iam_utils/CMakeFiles/iam_utils.dir/clean

iam_utils/CMakeFiles/iam_utils.dir/depend:
	cd /home/hw/iam_refactor && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hw/iam_refactor /home/hw/iam_refactor/iam_utils /home/hw/iam_refactor /home/hw/iam_refactor/iam_utils /home/hw/iam_refactor/iam_utils/CMakeFiles/iam_utils.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : iam_utils/CMakeFiles/iam_utils.dir/depend

