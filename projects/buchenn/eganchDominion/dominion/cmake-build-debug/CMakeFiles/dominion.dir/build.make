# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /snap/clion/61/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/61/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/dominion.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dominion.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dominion.dir/flags.make

CMakeFiles/dominion.dir/badTestDrawCard.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/badTestDrawCard.c.o: ../badTestDrawCard.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/dominion.dir/badTestDrawCard.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/badTestDrawCard.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/badTestDrawCard.c

CMakeFiles/dominion.dir/badTestDrawCard.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/badTestDrawCard.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/badTestDrawCard.c > CMakeFiles/dominion.dir/badTestDrawCard.c.i

CMakeFiles/dominion.dir/badTestDrawCard.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/badTestDrawCard.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/badTestDrawCard.c -o CMakeFiles/dominion.dir/badTestDrawCard.c.s

CMakeFiles/dominion.dir/betterTestDrawCard.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/betterTestDrawCard.c.o: ../betterTestDrawCard.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/dominion.dir/betterTestDrawCard.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/betterTestDrawCard.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/betterTestDrawCard.c

CMakeFiles/dominion.dir/betterTestDrawCard.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/betterTestDrawCard.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/betterTestDrawCard.c > CMakeFiles/dominion.dir/betterTestDrawCard.c.i

CMakeFiles/dominion.dir/betterTestDrawCard.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/betterTestDrawCard.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/betterTestDrawCard.c -o CMakeFiles/dominion.dir/betterTestDrawCard.c.s

CMakeFiles/dominion.dir/cardtest1.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/cardtest1.c.o: ../cardtest1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/dominion.dir/cardtest1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/cardtest1.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cardtest1.c

CMakeFiles/dominion.dir/cardtest1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/cardtest1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cardtest1.c > CMakeFiles/dominion.dir/cardtest1.c.i

CMakeFiles/dominion.dir/cardtest1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/cardtest1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cardtest1.c -o CMakeFiles/dominion.dir/cardtest1.c.s

CMakeFiles/dominion.dir/cardtest2.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/cardtest2.c.o: ../cardtest2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/dominion.dir/cardtest2.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/cardtest2.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cardtest2.c

CMakeFiles/dominion.dir/cardtest2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/cardtest2.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cardtest2.c > CMakeFiles/dominion.dir/cardtest2.c.i

CMakeFiles/dominion.dir/cardtest2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/cardtest2.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cardtest2.c -o CMakeFiles/dominion.dir/cardtest2.c.s

CMakeFiles/dominion.dir/cardtest3.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/cardtest3.c.o: ../cardtest3.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/dominion.dir/cardtest3.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/cardtest3.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cardtest3.c

CMakeFiles/dominion.dir/cardtest3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/cardtest3.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cardtest3.c > CMakeFiles/dominion.dir/cardtest3.c.i

CMakeFiles/dominion.dir/cardtest3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/cardtest3.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cardtest3.c -o CMakeFiles/dominion.dir/cardtest3.c.s

CMakeFiles/dominion.dir/cardtest4.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/cardtest4.c.o: ../cardtest4.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/dominion.dir/cardtest4.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/cardtest4.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cardtest4.c

CMakeFiles/dominion.dir/cardtest4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/cardtest4.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cardtest4.c > CMakeFiles/dominion.dir/cardtest4.c.i

CMakeFiles/dominion.dir/cardtest4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/cardtest4.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cardtest4.c -o CMakeFiles/dominion.dir/cardtest4.c.s

CMakeFiles/dominion.dir/dominion.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/dominion.c.o: ../dominion.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/dominion.dir/dominion.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/dominion.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/dominion.c

CMakeFiles/dominion.dir/dominion.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/dominion.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/dominion.c > CMakeFiles/dominion.dir/dominion.c.i

CMakeFiles/dominion.dir/dominion.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/dominion.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/dominion.c -o CMakeFiles/dominion.dir/dominion.c.s

CMakeFiles/dominion.dir/interface.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/interface.c.o: ../interface.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/dominion.dir/interface.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/interface.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/interface.c

CMakeFiles/dominion.dir/interface.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/interface.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/interface.c > CMakeFiles/dominion.dir/interface.c.i

CMakeFiles/dominion.dir/interface.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/interface.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/interface.c -o CMakeFiles/dominion.dir/interface.c.s

CMakeFiles/dominion.dir/myTestSuite.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/myTestSuite.c.o: ../myTestSuite.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/dominion.dir/myTestSuite.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/myTestSuite.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/myTestSuite.c

CMakeFiles/dominion.dir/myTestSuite.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/myTestSuite.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/myTestSuite.c > CMakeFiles/dominion.dir/myTestSuite.c.i

CMakeFiles/dominion.dir/myTestSuite.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/myTestSuite.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/myTestSuite.c -o CMakeFiles/dominion.dir/myTestSuite.c.s

CMakeFiles/dominion.dir/playdom.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/playdom.c.o: ../playdom.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/dominion.dir/playdom.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/playdom.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/playdom.c

CMakeFiles/dominion.dir/playdom.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/playdom.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/playdom.c > CMakeFiles/dominion.dir/playdom.c.i

CMakeFiles/dominion.dir/playdom.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/playdom.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/playdom.c -o CMakeFiles/dominion.dir/playdom.c.s

CMakeFiles/dominion.dir/player.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/player.c.o: ../player.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/dominion.dir/player.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/player.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/player.c

CMakeFiles/dominion.dir/player.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/player.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/player.c > CMakeFiles/dominion.dir/player.c.i

CMakeFiles/dominion.dir/player.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/player.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/player.c -o CMakeFiles/dominion.dir/player.c.s

CMakeFiles/dominion.dir/randomtestadventurer.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/randomtestadventurer.c.o: ../randomtestadventurer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/dominion.dir/randomtestadventurer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/randomtestadventurer.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/randomtestadventurer.c

CMakeFiles/dominion.dir/randomtestadventurer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/randomtestadventurer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/randomtestadventurer.c > CMakeFiles/dominion.dir/randomtestadventurer.c.i

CMakeFiles/dominion.dir/randomtestadventurer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/randomtestadventurer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/randomtestadventurer.c -o CMakeFiles/dominion.dir/randomtestadventurer.c.s

CMakeFiles/dominion.dir/randomtestcard1.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/randomtestcard1.c.o: ../randomtestcard1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/dominion.dir/randomtestcard1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/randomtestcard1.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/randomtestcard1.c

CMakeFiles/dominion.dir/randomtestcard1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/randomtestcard1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/randomtestcard1.c > CMakeFiles/dominion.dir/randomtestcard1.c.i

CMakeFiles/dominion.dir/randomtestcard1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/randomtestcard1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/randomtestcard1.c -o CMakeFiles/dominion.dir/randomtestcard1.c.s

CMakeFiles/dominion.dir/randomtestcard2.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/randomtestcard2.c.o: ../randomtestcard2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/dominion.dir/randomtestcard2.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/randomtestcard2.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/randomtestcard2.c

CMakeFiles/dominion.dir/randomtestcard2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/randomtestcard2.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/randomtestcard2.c > CMakeFiles/dominion.dir/randomtestcard2.c.i

CMakeFiles/dominion.dir/randomtestcard2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/randomtestcard2.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/randomtestcard2.c -o CMakeFiles/dominion.dir/randomtestcard2.c.s

CMakeFiles/dominion.dir/rngs.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/rngs.c.o: ../rngs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/dominion.dir/rngs.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/rngs.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/rngs.c

CMakeFiles/dominion.dir/rngs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/rngs.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/rngs.c > CMakeFiles/dominion.dir/rngs.c.i

CMakeFiles/dominion.dir/rngs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/rngs.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/rngs.c -o CMakeFiles/dominion.dir/rngs.c.s

CMakeFiles/dominion.dir/rt.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/rt.c.o: ../rt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/dominion.dir/rt.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/rt.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/rt.c

CMakeFiles/dominion.dir/rt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/rt.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/rt.c > CMakeFiles/dominion.dir/rt.c.i

CMakeFiles/dominion.dir/rt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/rt.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/rt.c -o CMakeFiles/dominion.dir/rt.c.s

CMakeFiles/dominion.dir/supplyTest.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/supplyTest.c.o: ../supplyTest.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building C object CMakeFiles/dominion.dir/supplyTest.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/supplyTest.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/supplyTest.c

CMakeFiles/dominion.dir/supplyTest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/supplyTest.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/supplyTest.c > CMakeFiles/dominion.dir/supplyTest.c.i

CMakeFiles/dominion.dir/supplyTest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/supplyTest.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/supplyTest.c -o CMakeFiles/dominion.dir/supplyTest.c.s

CMakeFiles/dominion.dir/testBuyCard.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/testBuyCard.c.o: ../testBuyCard.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building C object CMakeFiles/dominion.dir/testBuyCard.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/testBuyCard.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/testBuyCard.c

CMakeFiles/dominion.dir/testBuyCard.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/testBuyCard.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/testBuyCard.c > CMakeFiles/dominion.dir/testBuyCard.c.i

CMakeFiles/dominion.dir/testBuyCard.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/testBuyCard.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/testBuyCard.c -o CMakeFiles/dominion.dir/testBuyCard.c.s

CMakeFiles/dominion.dir/testDrawCard.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/testDrawCard.c.o: ../testDrawCard.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building C object CMakeFiles/dominion.dir/testDrawCard.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/testDrawCard.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/testDrawCard.c

CMakeFiles/dominion.dir/testDrawCard.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/testDrawCard.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/testDrawCard.c > CMakeFiles/dominion.dir/testDrawCard.c.i

CMakeFiles/dominion.dir/testDrawCard.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/testDrawCard.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/testDrawCard.c -o CMakeFiles/dominion.dir/testDrawCard.c.s

CMakeFiles/dominion.dir/testInit.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/testInit.c.o: ../testInit.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building C object CMakeFiles/dominion.dir/testInit.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/testInit.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/testInit.c

CMakeFiles/dominion.dir/testInit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/testInit.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/testInit.c > CMakeFiles/dominion.dir/testInit.c.i

CMakeFiles/dominion.dir/testInit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/testInit.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/testInit.c -o CMakeFiles/dominion.dir/testInit.c.s

CMakeFiles/dominion.dir/testShuffle.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/testShuffle.c.o: ../testShuffle.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Building C object CMakeFiles/dominion.dir/testShuffle.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/testShuffle.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/testShuffle.c

CMakeFiles/dominion.dir/testShuffle.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/testShuffle.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/testShuffle.c > CMakeFiles/dominion.dir/testShuffle.c.i

CMakeFiles/dominion.dir/testShuffle.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/testShuffle.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/testShuffle.c -o CMakeFiles/dominion.dir/testShuffle.c.s

CMakeFiles/dominion.dir/unittest1.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/unittest1.c.o: ../unittest1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Building C object CMakeFiles/dominion.dir/unittest1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/unittest1.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/unittest1.c

CMakeFiles/dominion.dir/unittest1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/unittest1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/unittest1.c > CMakeFiles/dominion.dir/unittest1.c.i

CMakeFiles/dominion.dir/unittest1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/unittest1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/unittest1.c -o CMakeFiles/dominion.dir/unittest1.c.s

CMakeFiles/dominion.dir/unittest2.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/unittest2.c.o: ../unittest2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "Building C object CMakeFiles/dominion.dir/unittest2.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/unittest2.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/unittest2.c

CMakeFiles/dominion.dir/unittest2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/unittest2.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/unittest2.c > CMakeFiles/dominion.dir/unittest2.c.i

CMakeFiles/dominion.dir/unittest2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/unittest2.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/unittest2.c -o CMakeFiles/dominion.dir/unittest2.c.s

CMakeFiles/dominion.dir/unittest3.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/unittest3.c.o: ../unittest3.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_24) "Building C object CMakeFiles/dominion.dir/unittest3.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/unittest3.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/unittest3.c

CMakeFiles/dominion.dir/unittest3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/unittest3.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/unittest3.c > CMakeFiles/dominion.dir/unittest3.c.i

CMakeFiles/dominion.dir/unittest3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/unittest3.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/unittest3.c -o CMakeFiles/dominion.dir/unittest3.c.s

CMakeFiles/dominion.dir/unittest4.c.o: CMakeFiles/dominion.dir/flags.make
CMakeFiles/dominion.dir/unittest4.c.o: ../unittest4.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_25) "Building C object CMakeFiles/dominion.dir/unittest4.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dominion.dir/unittest4.c.o   -c /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/unittest4.c

CMakeFiles/dominion.dir/unittest4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dominion.dir/unittest4.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/unittest4.c > CMakeFiles/dominion.dir/unittest4.c.i

CMakeFiles/dominion.dir/unittest4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dominion.dir/unittest4.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/unittest4.c -o CMakeFiles/dominion.dir/unittest4.c.s

# Object files for target dominion
dominion_OBJECTS = \
"CMakeFiles/dominion.dir/badTestDrawCard.c.o" \
"CMakeFiles/dominion.dir/betterTestDrawCard.c.o" \
"CMakeFiles/dominion.dir/cardtest1.c.o" \
"CMakeFiles/dominion.dir/cardtest2.c.o" \
"CMakeFiles/dominion.dir/cardtest3.c.o" \
"CMakeFiles/dominion.dir/cardtest4.c.o" \
"CMakeFiles/dominion.dir/dominion.c.o" \
"CMakeFiles/dominion.dir/interface.c.o" \
"CMakeFiles/dominion.dir/myTestSuite.c.o" \
"CMakeFiles/dominion.dir/playdom.c.o" \
"CMakeFiles/dominion.dir/player.c.o" \
"CMakeFiles/dominion.dir/randomtestadventurer.c.o" \
"CMakeFiles/dominion.dir/randomtestcard1.c.o" \
"CMakeFiles/dominion.dir/randomtestcard2.c.o" \
"CMakeFiles/dominion.dir/rngs.c.o" \
"CMakeFiles/dominion.dir/rt.c.o" \
"CMakeFiles/dominion.dir/supplyTest.c.o" \
"CMakeFiles/dominion.dir/testBuyCard.c.o" \
"CMakeFiles/dominion.dir/testDrawCard.c.o" \
"CMakeFiles/dominion.dir/testInit.c.o" \
"CMakeFiles/dominion.dir/testShuffle.c.o" \
"CMakeFiles/dominion.dir/unittest1.c.o" \
"CMakeFiles/dominion.dir/unittest2.c.o" \
"CMakeFiles/dominion.dir/unittest3.c.o" \
"CMakeFiles/dominion.dir/unittest4.c.o"

# External object files for target dominion
dominion_EXTERNAL_OBJECTS =

dominion: CMakeFiles/dominion.dir/badTestDrawCard.c.o
dominion: CMakeFiles/dominion.dir/betterTestDrawCard.c.o
dominion: CMakeFiles/dominion.dir/cardtest1.c.o
dominion: CMakeFiles/dominion.dir/cardtest2.c.o
dominion: CMakeFiles/dominion.dir/cardtest3.c.o
dominion: CMakeFiles/dominion.dir/cardtest4.c.o
dominion: CMakeFiles/dominion.dir/dominion.c.o
dominion: CMakeFiles/dominion.dir/interface.c.o
dominion: CMakeFiles/dominion.dir/myTestSuite.c.o
dominion: CMakeFiles/dominion.dir/playdom.c.o
dominion: CMakeFiles/dominion.dir/player.c.o
dominion: CMakeFiles/dominion.dir/randomtestadventurer.c.o
dominion: CMakeFiles/dominion.dir/randomtestcard1.c.o
dominion: CMakeFiles/dominion.dir/randomtestcard2.c.o
dominion: CMakeFiles/dominion.dir/rngs.c.o
dominion: CMakeFiles/dominion.dir/rt.c.o
dominion: CMakeFiles/dominion.dir/supplyTest.c.o
dominion: CMakeFiles/dominion.dir/testBuyCard.c.o
dominion: CMakeFiles/dominion.dir/testDrawCard.c.o
dominion: CMakeFiles/dominion.dir/testInit.c.o
dominion: CMakeFiles/dominion.dir/testShuffle.c.o
dominion: CMakeFiles/dominion.dir/unittest1.c.o
dominion: CMakeFiles/dominion.dir/unittest2.c.o
dominion: CMakeFiles/dominion.dir/unittest3.c.o
dominion: CMakeFiles/dominion.dir/unittest4.c.o
dominion: CMakeFiles/dominion.dir/build.make
dominion: CMakeFiles/dominion.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_26) "Linking C executable dominion"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dominion.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dominion.dir/build: dominion

.PHONY : CMakeFiles/dominion.dir/build

CMakeFiles/dominion.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dominion.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dominion.dir/clean

CMakeFiles/dominion.dir/depend:
	cd /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug /home/noah2017/Documents/CS362-W2019/projects/buchenn/eganch/dominion/cmake-build-debug/CMakeFiles/dominion.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dominion.dir/depend

