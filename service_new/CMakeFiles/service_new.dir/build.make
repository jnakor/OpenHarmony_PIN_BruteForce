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
include service_new/CMakeFiles/service_new.dir/depend.make

# Include the progress variables for this target.
include service_new/CMakeFiles/service_new.dir/progress.make

# Include the compile flags for this target's objects.
include service_new/CMakeFiles/service_new.dir/flags.make

service_new/CMakeFiles/service_new.dir/scrypt/src/scrypt.cpp.o: service_new/CMakeFiles/service_new.dir/flags.make
service_new/CMakeFiles/service_new.dir/scrypt/src/scrypt.cpp.o: service_new/scrypt/src/scrypt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object service_new/CMakeFiles/service_new.dir/scrypt/src/scrypt.cpp.o"
	cd /home/hw/iam_refactor/service_new && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/service_new.dir/scrypt/src/scrypt.cpp.o -c /home/hw/iam_refactor/service_new/scrypt/src/scrypt.cpp

service_new/CMakeFiles/service_new.dir/scrypt/src/scrypt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/service_new.dir/scrypt/src/scrypt.cpp.i"
	cd /home/hw/iam_refactor/service_new && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hw/iam_refactor/service_new/scrypt/src/scrypt.cpp > CMakeFiles/service_new.dir/scrypt/src/scrypt.cpp.i

service_new/CMakeFiles/service_new.dir/scrypt/src/scrypt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/service_new.dir/scrypt/src/scrypt.cpp.s"
	cd /home/hw/iam_refactor/service_new && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hw/iam_refactor/service_new/scrypt/src/scrypt.cpp -o CMakeFiles/service_new.dir/scrypt/src/scrypt.cpp.s

service_new/CMakeFiles/service_new.dir/scrypt/src/newSalt.cpp.o: service_new/CMakeFiles/service_new.dir/flags.make
service_new/CMakeFiles/service_new.dir/scrypt/src/newSalt.cpp.o: service_new/scrypt/src/newSalt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object service_new/CMakeFiles/service_new.dir/scrypt/src/newSalt.cpp.o"
	cd /home/hw/iam_refactor/service_new && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/service_new.dir/scrypt/src/newSalt.cpp.o -c /home/hw/iam_refactor/service_new/scrypt/src/newSalt.cpp

service_new/CMakeFiles/service_new.dir/scrypt/src/newSalt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/service_new.dir/scrypt/src/newSalt.cpp.i"
	cd /home/hw/iam_refactor/service_new && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hw/iam_refactor/service_new/scrypt/src/newSalt.cpp > CMakeFiles/service_new.dir/scrypt/src/newSalt.cpp.i

service_new/CMakeFiles/service_new.dir/scrypt/src/newSalt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/service_new.dir/scrypt/src/newSalt.cpp.s"
	cd /home/hw/iam_refactor/service_new && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hw/iam_refactor/service_new/scrypt/src/newSalt.cpp -o CMakeFiles/service_new.dir/scrypt/src/newSalt.cpp.s

service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_algorithm.c.o: service_new/CMakeFiles/service_new.dir/flags.make
service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_algorithm.c.o: service_new/hdi_service/adaptor/src/adaptor_algorithm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_algorithm.c.o"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_algorithm.c.o   -c /home/hw/iam_refactor/service_new/hdi_service/adaptor/src/adaptor_algorithm.c

service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_algorithm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_algorithm.c.i"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hw/iam_refactor/service_new/hdi_service/adaptor/src/adaptor_algorithm.c > CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_algorithm.c.i

service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_algorithm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_algorithm.c.s"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hw/iam_refactor/service_new/hdi_service/adaptor/src/adaptor_algorithm.c -o CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_algorithm.c.s

service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_file.c.o: service_new/CMakeFiles/service_new.dir/flags.make
service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_file.c.o: service_new/hdi_service/adaptor/src/adaptor_file.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_file.c.o"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_file.c.o   -c /home/hw/iam_refactor/service_new/hdi_service/adaptor/src/adaptor_file.c

service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_file.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_file.c.i"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hw/iam_refactor/service_new/hdi_service/adaptor/src/adaptor_file.c > CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_file.c.i

service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_file.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_file.c.s"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hw/iam_refactor/service_new/hdi_service/adaptor/src/adaptor_file.c -o CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_file.c.s

service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_memory.c.o: service_new/CMakeFiles/service_new.dir/flags.make
service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_memory.c.o: service_new/hdi_service/adaptor/src/adaptor_memory.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_memory.c.o"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_memory.c.o   -c /home/hw/iam_refactor/service_new/hdi_service/adaptor/src/adaptor_memory.c

service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_memory.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_memory.c.i"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hw/iam_refactor/service_new/hdi_service/adaptor/src/adaptor_memory.c > CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_memory.c.i

service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_memory.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_memory.c.s"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hw/iam_refactor/service_new/hdi_service/adaptor/src/adaptor_memory.c -o CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_memory.c.s

service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_time.c.o: service_new/CMakeFiles/service_new.dir/flags.make
service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_time.c.o: service_new/hdi_service/adaptor/src/adaptor_time.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_time.c.o"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_time.c.o   -c /home/hw/iam_refactor/service_new/hdi_service/adaptor/src/adaptor_time.c

service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_time.c.i"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hw/iam_refactor/service_new/hdi_service/adaptor/src/adaptor_time.c > CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_time.c.i

service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_time.c.s"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hw/iam_refactor/service_new/hdi_service/adaptor/src/adaptor_time.c -o CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_time.c.s

service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/file_operator.c.o: service_new/CMakeFiles/service_new.dir/flags.make
service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/file_operator.c.o: service_new/hdi_service/adaptor/src/file_operator.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/file_operator.c.o"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/service_new.dir/hdi_service/adaptor/src/file_operator.c.o   -c /home/hw/iam_refactor/service_new/hdi_service/adaptor/src/file_operator.c

service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/file_operator.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/service_new.dir/hdi_service/adaptor/src/file_operator.c.i"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hw/iam_refactor/service_new/hdi_service/adaptor/src/file_operator.c > CMakeFiles/service_new.dir/hdi_service/adaptor/src/file_operator.c.i

service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/file_operator.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/service_new.dir/hdi_service/adaptor/src/file_operator.c.s"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hw/iam_refactor/service_new/hdi_service/adaptor/src/file_operator.c -o CMakeFiles/service_new.dir/hdi_service/adaptor/src/file_operator.c.s

service_new/CMakeFiles/service_new.dir/hdi_service/common/src/buffer.c.o: service_new/CMakeFiles/service_new.dir/flags.make
service_new/CMakeFiles/service_new.dir/hdi_service/common/src/buffer.c.o: service_new/hdi_service/common/src/buffer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object service_new/CMakeFiles/service_new.dir/hdi_service/common/src/buffer.c.o"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/service_new.dir/hdi_service/common/src/buffer.c.o   -c /home/hw/iam_refactor/service_new/hdi_service/common/src/buffer.c

service_new/CMakeFiles/service_new.dir/hdi_service/common/src/buffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/service_new.dir/hdi_service/common/src/buffer.c.i"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hw/iam_refactor/service_new/hdi_service/common/src/buffer.c > CMakeFiles/service_new.dir/hdi_service/common/src/buffer.c.i

service_new/CMakeFiles/service_new.dir/hdi_service/common/src/buffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/service_new.dir/hdi_service/common/src/buffer.c.s"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hw/iam_refactor/service_new/hdi_service/common/src/buffer.c -o CMakeFiles/service_new.dir/hdi_service/common/src/buffer.c.s

service_new/CMakeFiles/service_new.dir/hdi_service/database/src/pin_db.c.o: service_new/CMakeFiles/service_new.dir/flags.make
service_new/CMakeFiles/service_new.dir/hdi_service/database/src/pin_db.c.o: service_new/hdi_service/database/src/pin_db.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object service_new/CMakeFiles/service_new.dir/hdi_service/database/src/pin_db.c.o"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/service_new.dir/hdi_service/database/src/pin_db.c.o   -c /home/hw/iam_refactor/service_new/hdi_service/database/src/pin_db.c

service_new/CMakeFiles/service_new.dir/hdi_service/database/src/pin_db.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/service_new.dir/hdi_service/database/src/pin_db.c.i"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hw/iam_refactor/service_new/hdi_service/database/src/pin_db.c > CMakeFiles/service_new.dir/hdi_service/database/src/pin_db.c.i

service_new/CMakeFiles/service_new.dir/hdi_service/database/src/pin_db.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/service_new.dir/hdi_service/database/src/pin_db.c.s"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hw/iam_refactor/service_new/hdi_service/database/src/pin_db.c -o CMakeFiles/service_new.dir/hdi_service/database/src/pin_db.c.s

service_new/CMakeFiles/service_new.dir/hdi_service/main/src/pin_auth.cpp.o: service_new/CMakeFiles/service_new.dir/flags.make
service_new/CMakeFiles/service_new.dir/hdi_service/main/src/pin_auth.cpp.o: service_new/hdi_service/main/src/pin_auth.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object service_new/CMakeFiles/service_new.dir/hdi_service/main/src/pin_auth.cpp.o"
	cd /home/hw/iam_refactor/service_new && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/service_new.dir/hdi_service/main/src/pin_auth.cpp.o -c /home/hw/iam_refactor/service_new/hdi_service/main/src/pin_auth.cpp

service_new/CMakeFiles/service_new.dir/hdi_service/main/src/pin_auth.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/service_new.dir/hdi_service/main/src/pin_auth.cpp.i"
	cd /home/hw/iam_refactor/service_new && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hw/iam_refactor/service_new/hdi_service/main/src/pin_auth.cpp > CMakeFiles/service_new.dir/hdi_service/main/src/pin_auth.cpp.i

service_new/CMakeFiles/service_new.dir/hdi_service/main/src/pin_auth.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/service_new.dir/hdi_service/main/src/pin_auth.cpp.s"
	cd /home/hw/iam_refactor/service_new && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hw/iam_refactor/service_new/hdi_service/main/src/pin_auth.cpp -o CMakeFiles/service_new.dir/hdi_service/main/src/pin_auth.cpp.s

service_new/CMakeFiles/service_new.dir/hdi_service/main/src/pin_func.c.o: service_new/CMakeFiles/service_new.dir/flags.make
service_new/CMakeFiles/service_new.dir/hdi_service/main/src/pin_func.c.o: service_new/hdi_service/main/src/pin_func.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object service_new/CMakeFiles/service_new.dir/hdi_service/main/src/pin_func.c.o"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/service_new.dir/hdi_service/main/src/pin_func.c.o   -c /home/hw/iam_refactor/service_new/hdi_service/main/src/pin_func.c

service_new/CMakeFiles/service_new.dir/hdi_service/main/src/pin_func.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/service_new.dir/hdi_service/main/src/pin_func.c.i"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hw/iam_refactor/service_new/hdi_service/main/src/pin_func.c > CMakeFiles/service_new.dir/hdi_service/main/src/pin_func.c.i

service_new/CMakeFiles/service_new.dir/hdi_service/main/src/pin_func.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/service_new.dir/hdi_service/main/src/pin_func.c.s"
	cd /home/hw/iam_refactor/service_new && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hw/iam_refactor/service_new/hdi_service/main/src/pin_func.c -o CMakeFiles/service_new.dir/hdi_service/main/src/pin_func.c.s

# Object files for target service_new
service_new_OBJECTS = \
"CMakeFiles/service_new.dir/scrypt/src/scrypt.cpp.o" \
"CMakeFiles/service_new.dir/scrypt/src/newSalt.cpp.o" \
"CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_algorithm.c.o" \
"CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_file.c.o" \
"CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_memory.c.o" \
"CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_time.c.o" \
"CMakeFiles/service_new.dir/hdi_service/adaptor/src/file_operator.c.o" \
"CMakeFiles/service_new.dir/hdi_service/common/src/buffer.c.o" \
"CMakeFiles/service_new.dir/hdi_service/database/src/pin_db.c.o" \
"CMakeFiles/service_new.dir/hdi_service/main/src/pin_auth.cpp.o" \
"CMakeFiles/service_new.dir/hdi_service/main/src/pin_func.c.o"

# External object files for target service_new
service_new_EXTERNAL_OBJECTS =

service_new/libservice_new.so: service_new/CMakeFiles/service_new.dir/scrypt/src/scrypt.cpp.o
service_new/libservice_new.so: service_new/CMakeFiles/service_new.dir/scrypt/src/newSalt.cpp.o
service_new/libservice_new.so: service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_algorithm.c.o
service_new/libservice_new.so: service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_file.c.o
service_new/libservice_new.so: service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_memory.c.o
service_new/libservice_new.so: service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/adaptor_time.c.o
service_new/libservice_new.so: service_new/CMakeFiles/service_new.dir/hdi_service/adaptor/src/file_operator.c.o
service_new/libservice_new.so: service_new/CMakeFiles/service_new.dir/hdi_service/common/src/buffer.c.o
service_new/libservice_new.so: service_new/CMakeFiles/service_new.dir/hdi_service/database/src/pin_db.c.o
service_new/libservice_new.so: service_new/CMakeFiles/service_new.dir/hdi_service/main/src/pin_auth.cpp.o
service_new/libservice_new.so: service_new/CMakeFiles/service_new.dir/hdi_service/main/src/pin_func.c.o
service_new/libservice_new.so: service_new/CMakeFiles/service_new.dir/build.make
service_new/libservice_new.so: /usr/lib/x86_64-linux-gnu/libssl.so
service_new/libservice_new.so: iam_utils/libiam_utils.so
service_new/libservice_new.so: /usr/lib/x86_64-linux-gnu/libcrypto.so
service_new/libservice_new.so: ohos_utils/libohos_utils.so
service_new/libservice_new.so: ohos_hilog/libohos_hilog.so
service_new/libservice_new.so: service_new/CMakeFiles/service_new.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hw/iam_refactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX shared library libservice_new.so"
	cd /home/hw/iam_refactor/service_new && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/service_new.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
service_new/CMakeFiles/service_new.dir/build: service_new/libservice_new.so

.PHONY : service_new/CMakeFiles/service_new.dir/build

service_new/CMakeFiles/service_new.dir/clean:
	cd /home/hw/iam_refactor/service_new && $(CMAKE_COMMAND) -P CMakeFiles/service_new.dir/cmake_clean.cmake
.PHONY : service_new/CMakeFiles/service_new.dir/clean

service_new/CMakeFiles/service_new.dir/depend:
	cd /home/hw/iam_refactor && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hw/iam_refactor /home/hw/iam_refactor/service_new /home/hw/iam_refactor /home/hw/iam_refactor/service_new /home/hw/iam_refactor/service_new/CMakeFiles/service_new.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : service_new/CMakeFiles/service_new.dir/depend
