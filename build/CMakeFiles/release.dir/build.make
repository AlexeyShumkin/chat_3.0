# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/awl/projects/chat_3.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/awl/projects/chat_3.0/build

# Include any dependencies generated for this target.
include CMakeFiles/release.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/release.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/release.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/release.dir/flags.make

CMakeFiles/release.dir/main.cpp.o: CMakeFiles/release.dir/flags.make
CMakeFiles/release.dir/main.cpp.o: ../main.cpp
CMakeFiles/release.dir/main.cpp.o: CMakeFiles/release.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/awl/projects/chat_3.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/release.dir/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/release.dir/main.cpp.o -MF CMakeFiles/release.dir/main.cpp.o.d -o CMakeFiles/release.dir/main.cpp.o -c /home/awl/projects/chat_3.0/main.cpp

CMakeFiles/release.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/release.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/awl/projects/chat_3.0/main.cpp > CMakeFiles/release.dir/main.cpp.i

CMakeFiles/release.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/release.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/awl/projects/chat_3.0/main.cpp -o CMakeFiles/release.dir/main.cpp.s

CMakeFiles/release.dir/chat.cpp.o: CMakeFiles/release.dir/flags.make
CMakeFiles/release.dir/chat.cpp.o: ../chat.cpp
CMakeFiles/release.dir/chat.cpp.o: CMakeFiles/release.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/awl/projects/chat_3.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/release.dir/chat.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/release.dir/chat.cpp.o -MF CMakeFiles/release.dir/chat.cpp.o.d -o CMakeFiles/release.dir/chat.cpp.o -c /home/awl/projects/chat_3.0/chat.cpp

CMakeFiles/release.dir/chat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/release.dir/chat.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/awl/projects/chat_3.0/chat.cpp > CMakeFiles/release.dir/chat.cpp.i

CMakeFiles/release.dir/chat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/release.dir/chat.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/awl/projects/chat_3.0/chat.cpp -o CMakeFiles/release.dir/chat.cpp.s

CMakeFiles/release.dir/database.cpp.o: CMakeFiles/release.dir/flags.make
CMakeFiles/release.dir/database.cpp.o: ../database.cpp
CMakeFiles/release.dir/database.cpp.o: CMakeFiles/release.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/awl/projects/chat_3.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/release.dir/database.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/release.dir/database.cpp.o -MF CMakeFiles/release.dir/database.cpp.o.d -o CMakeFiles/release.dir/database.cpp.o -c /home/awl/projects/chat_3.0/database.cpp

CMakeFiles/release.dir/database.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/release.dir/database.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/awl/projects/chat_3.0/database.cpp > CMakeFiles/release.dir/database.cpp.i

CMakeFiles/release.dir/database.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/release.dir/database.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/awl/projects/chat_3.0/database.cpp -o CMakeFiles/release.dir/database.cpp.s

CMakeFiles/release.dir/request.cpp.o: CMakeFiles/release.dir/flags.make
CMakeFiles/release.dir/request.cpp.o: ../request.cpp
CMakeFiles/release.dir/request.cpp.o: CMakeFiles/release.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/awl/projects/chat_3.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/release.dir/request.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/release.dir/request.cpp.o -MF CMakeFiles/release.dir/request.cpp.o.d -o CMakeFiles/release.dir/request.cpp.o -c /home/awl/projects/chat_3.0/request.cpp

CMakeFiles/release.dir/request.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/release.dir/request.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/awl/projects/chat_3.0/request.cpp > CMakeFiles/release.dir/request.cpp.i

CMakeFiles/release.dir/request.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/release.dir/request.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/awl/projects/chat_3.0/request.cpp -o CMakeFiles/release.dir/request.cpp.s

CMakeFiles/release.dir/handler.cpp.o: CMakeFiles/release.dir/flags.make
CMakeFiles/release.dir/handler.cpp.o: ../handler.cpp
CMakeFiles/release.dir/handler.cpp.o: CMakeFiles/release.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/awl/projects/chat_3.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/release.dir/handler.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/release.dir/handler.cpp.o -MF CMakeFiles/release.dir/handler.cpp.o.d -o CMakeFiles/release.dir/handler.cpp.o -c /home/awl/projects/chat_3.0/handler.cpp

CMakeFiles/release.dir/handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/release.dir/handler.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/awl/projects/chat_3.0/handler.cpp > CMakeFiles/release.dir/handler.cpp.i

CMakeFiles/release.dir/handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/release.dir/handler.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/awl/projects/chat_3.0/handler.cpp -o CMakeFiles/release.dir/handler.cpp.s

# Object files for target release
release_OBJECTS = \
"CMakeFiles/release.dir/main.cpp.o" \
"CMakeFiles/release.dir/chat.cpp.o" \
"CMakeFiles/release.dir/database.cpp.o" \
"CMakeFiles/release.dir/request.cpp.o" \
"CMakeFiles/release.dir/handler.cpp.o"

# External object files for target release
release_EXTERNAL_OBJECTS =

release: CMakeFiles/release.dir/main.cpp.o
release: CMakeFiles/release.dir/chat.cpp.o
release: CMakeFiles/release.dir/database.cpp.o
release: CMakeFiles/release.dir/request.cpp.o
release: CMakeFiles/release.dir/handler.cpp.o
release: CMakeFiles/release.dir/build.make
release: CMakeFiles/release.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/awl/projects/chat_3.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable release"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/release.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/release.dir/build: release
.PHONY : CMakeFiles/release.dir/build

CMakeFiles/release.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/release.dir/cmake_clean.cmake
.PHONY : CMakeFiles/release.dir/clean

CMakeFiles/release.dir/depend:
	cd /home/awl/projects/chat_3.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/awl/projects/chat_3.0 /home/awl/projects/chat_3.0 /home/awl/projects/chat_3.0/build /home/awl/projects/chat_3.0/build /home/awl/projects/chat_3.0/build/CMakeFiles/release.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/release.dir/depend

