# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/chuanqiuhe/Desktop/TemperatureControlSystem

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/chuanqiuhe/Desktop/TemperatureControlSystem/build

# Include any dependencies generated for this target.
include CMakeFiles/temperature_control_system.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/temperature_control_system.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/temperature_control_system.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/temperature_control_system.dir/flags.make

CMakeFiles/temperature_control_system.dir/embedded_temp_contrl.cpp.o: CMakeFiles/temperature_control_system.dir/flags.make
CMakeFiles/temperature_control_system.dir/embedded_temp_contrl.cpp.o: /Users/chuanqiuhe/Desktop/TemperatureControlSystem/embedded_temp_contrl.cpp
CMakeFiles/temperature_control_system.dir/embedded_temp_contrl.cpp.o: CMakeFiles/temperature_control_system.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chuanqiuhe/Desktop/TemperatureControlSystem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/temperature_control_system.dir/embedded_temp_contrl.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/temperature_control_system.dir/embedded_temp_contrl.cpp.o -MF CMakeFiles/temperature_control_system.dir/embedded_temp_contrl.cpp.o.d -o CMakeFiles/temperature_control_system.dir/embedded_temp_contrl.cpp.o -c /Users/chuanqiuhe/Desktop/TemperatureControlSystem/embedded_temp_contrl.cpp

CMakeFiles/temperature_control_system.dir/embedded_temp_contrl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/temperature_control_system.dir/embedded_temp_contrl.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chuanqiuhe/Desktop/TemperatureControlSystem/embedded_temp_contrl.cpp > CMakeFiles/temperature_control_system.dir/embedded_temp_contrl.cpp.i

CMakeFiles/temperature_control_system.dir/embedded_temp_contrl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/temperature_control_system.dir/embedded_temp_contrl.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chuanqiuhe/Desktop/TemperatureControlSystem/embedded_temp_contrl.cpp -o CMakeFiles/temperature_control_system.dir/embedded_temp_contrl.cpp.s

# Object files for target temperature_control_system
temperature_control_system_OBJECTS = \
"CMakeFiles/temperature_control_system.dir/embedded_temp_contrl.cpp.o"

# External object files for target temperature_control_system
temperature_control_system_EXTERNAL_OBJECTS =

temperature_control_system: CMakeFiles/temperature_control_system.dir/embedded_temp_contrl.cpp.o
temperature_control_system: CMakeFiles/temperature_control_system.dir/build.make
temperature_control_system: CMakeFiles/temperature_control_system.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/chuanqiuhe/Desktop/TemperatureControlSystem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable temperature_control_system"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/temperature_control_system.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/temperature_control_system.dir/build: temperature_control_system
.PHONY : CMakeFiles/temperature_control_system.dir/build

CMakeFiles/temperature_control_system.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/temperature_control_system.dir/cmake_clean.cmake
.PHONY : CMakeFiles/temperature_control_system.dir/clean

CMakeFiles/temperature_control_system.dir/depend:
	cd /Users/chuanqiuhe/Desktop/TemperatureControlSystem/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chuanqiuhe/Desktop/TemperatureControlSystem /Users/chuanqiuhe/Desktop/TemperatureControlSystem /Users/chuanqiuhe/Desktop/TemperatureControlSystem/build /Users/chuanqiuhe/Desktop/TemperatureControlSystem/build /Users/chuanqiuhe/Desktop/TemperatureControlSystem/build/CMakeFiles/temperature_control_system.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/temperature_control_system.dir/depend

