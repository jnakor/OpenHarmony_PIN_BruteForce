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
include ohos_hilog/CMakeFiles/ohos_hilog.dir/depend.make

# Include the progress variables for this target.
include ohos_hilog/CMakeFiles/ohos_hilog.dir/progress.make

# Include the compile flags for this target's objects.
include ohos_hilog/CMakeFiles/ohos_hilog.dir/flags.make

ohos_hilog/CMakeFiles/ohos_hilog.dir/src/hilog.cpp.o: ohos_hilog/CMakeFiles/ohos_hilog.dir/flags.make
ohos_hilog/CMakeFiles/ohos_hilog.dir/src/hilog.cpp.o: ohos_hilog/src/hilog.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ohos_hilog/CMakeFiles/ohos_hilog.dir/src/hilog.cpp.o"
	cd /home/hw/iam_refactor/ohos_hilog && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ohos_hilog.dir/src/hilog.cpp.o -c /home/hw/iam_refactor/ohos_hilog/src/hilog.cpp

ohos_hilog/CMakeFiles/ohos_hilog.dir/src/hilog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ohos_hilog.dir/src/hilog.cpp.i"
	cd /home/hw/iam_refactor/ohos_hilog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hw/iam_refactor/ohos_hilog/src/hilog.cpp > CMakeFiles/ohos_hilog.dir/src/hilog.cpp.i

ohos_hilog/CMakeFiles/ohos_hilog.dir/src/hilog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ohos_hilog.dir/src/hilog.cpp.s"
	cd /home/hw/iam_refactor/ohos_hilog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hw/iam_refactor/ohos_hilog/src/hilog.cpp -o CMakeFiles/ohos_hilog.dir/src/hilog.cpp.s

ohos_hilog/CMakeFiles/ohos_hilog.dir/src/vsnprintf_s_p.cpp.o: ohos_hilog/CMakeFiles/ohos_hilog.dir/flags.make
ohos_hilog/CMakeFiles/ohos_hilog.dir/src/vsnprintf_s_p.cpp.o: ohos_hilog/src/vsnprintf_s_p.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ohos_hilog/CMakeFiles/ohos_hilog.dir/src/vsnprintf_s_p.cpp.o"
	cd /home/hw/iam_refactor/ohos_hilog && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ohos_hilog.dir/src/vsnprintf_s_p.cpp.o -c /home/hw/iam_refactor/ohos_hilog/src/vsnprintf_s_p.cpp

ohos_hilog/CMakeFiles/ohos_hilog.dir/src/vsnprintf_s_p.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ohos_hilog.dir/src/vsnprintf_s_p.cpp.i"
	cd /home/hw/iam_refactor/ohos_hilog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hw/iam_refactor/ohos_hilog/src/vsnprintf_s_p.cpp > CMakeFiles/ohos_hilog.dir/src/vsnprintf_s_p.cpp.i

ohos_hilog/CMakeFiles/ohos_hilog.dir/src/vsnprintf_s_p.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ohos_hilog.dir/src/vsnprintf_s_p.cpp.s"
	cd /home/hw/iam_refactor/ohos_hilog && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hw/iam_refactor/ohos_hilog/src/vsnprintf_s_p.cpp -o CMakeFiles/ohos_hilog.dir/src/vsnprintf_s_p.cpp.s

# Object files for target ohos_hilog
ohos_hilog_OBJECTS = \
"CMakeFiles/ohos_hilog.dir/src/hilog.cpp.o" \
"CMakeFiles/ohos_hilog.dir/src/vsnprintf_s_p.cpp.o"

# External object files for target ohos_hilog
ohos_hilog_EXTERNAL_OBJECTS =

ohos_hilog/libohos_hilog.so: ohos_hilog/CMakeFiles/ohos_hilog.dir/src/hilog.cpp.o
ohos_hilog/libohos_hilog.so: ohos_hilog/CMakeFiles/ohos_hilog.dir/src/vsnprintf_s_p.cpp.o
ohos_hilog/libohos_hilog.so: ohos_hilog/CMakeFiles/ohos_hilog.dir/build.make
ohos_hilog/libohos_hilog.so: ohos_hilog/CMakeFiles/ohos_hilog.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libohos_hilog.so"
	cd /home/hw/iam_refactor/ohos_hilog && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ohos_hilog.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ohos_hilog/CMakeFiles/ohos_hilog.dir/build: ohos_hilog/libohos_hilog.so

.PHONY : ohos_hilog/CMakeFiles/ohos_hilog.dir/build

ohos_hilog/CMakeFiles/ohos_hilog.dir/clean:
	cd /home/hw/iam_refactor/ohos_hilog && $(CMAKE_COMMAND) -P CMakeFiles/ohos_hilog.dir/cmake_clean.cmake
.PHONY : ohos_hilog/CMakeFiles/ohos_hilog.dir/clean

ohos_hilog/CMakeFiles/ohos_hilog.dir/depend:
	cd /home/hw/iam_refactor && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hw/iam_refactor /home/hw/iam_refactor/ohos_hilog /home/hw/iam_refactor /home/hw/iam_refactor/ohos_hilog /home/hw/iam_refactor/ohos_hilog/CMakeFiles/ohos_hilog.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ohos_hilog/CMakeFiles/ohos_hilog.dir/depend

