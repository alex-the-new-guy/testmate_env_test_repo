# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = C:/devel/tools/CMake/bin/cmake.exe

# The command to remove a file.
RM = C:/devel/tools/CMake/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/open-source/testmate_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/open-source/testmate_test/build

# Include any dependencies generated for this target.
include CMakeFiles/test_dll.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_dll.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_dll.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_dll.dir/flags.make

CMakeFiles/test_dll.dir/dll.cpp.obj: CMakeFiles/test_dll.dir/flags.make
CMakeFiles/test_dll.dir/dll.cpp.obj: C:/open-source/testmate_test/dll.cpp
CMakeFiles/test_dll.dir/dll.cpp.obj: CMakeFiles/test_dll.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:/open-source/testmate_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_dll.dir/dll.cpp.obj"
	C:/devel/tools/LLVM/bin/clang++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_dll.dir/dll.cpp.obj -MF CMakeFiles/test_dll.dir/dll.cpp.obj.d -o CMakeFiles/test_dll.dir/dll.cpp.obj -c C:/open-source/testmate_test/dll.cpp

CMakeFiles/test_dll.dir/dll.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_dll.dir/dll.cpp.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CXX_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test_dll.dir/dll.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_dll.dir/dll.cpp.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CXX_CREATE_ASSEMBLY_SOURCE

# Object files for target test_dll
test_dll_OBJECTS = \
"CMakeFiles/test_dll.dir/dll.cpp.obj"

# External object files for target test_dll
test_dll_EXTERNAL_OBJECTS =

mydll/test_dll.dll: CMakeFiles/test_dll.dir/dll.cpp.obj
mydll/test_dll.dll: CMakeFiles/test_dll.dir/build.make
mydll/test_dll.dll: CMakeFiles/test_dll.dir/linkLibs.rsp
mydll/test_dll.dll: CMakeFiles/test_dll.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:/open-source/testmate_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library mydll/test_dll.dll"
	C:/devel/tools/LLVM/bin/clang++.exe -fuse-ld=lld-link -nostartfiles -nostdlib -O0 -g -Xclang -gcodeview -D_DEBUG -D_DLL -D_MT -Xclang --dependent-lib=msvcrtd -shared -o mydll/test_dll.dll  -Xlinker /MANIFEST:EMBED -Xlinker /implib:test_dll.lib -Xlinker /pdb:C:/open-source/testmate_test/build/mydll/test_dll.pdb -Xlinker /version:0.0 @CMakeFiles/test_dll.dir/objects1.rsp @CMakeFiles/test_dll.dir/linkLibs.rsp 

# Rule to build all files generated by this target.
CMakeFiles/test_dll.dir/build: mydll/test_dll.dll
.PHONY : CMakeFiles/test_dll.dir/build

CMakeFiles/test_dll.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_dll.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_dll.dir/clean

CMakeFiles/test_dll.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/open-source/testmate_test C:/open-source/testmate_test C:/open-source/testmate_test/build C:/open-source/testmate_test/build C:/open-source/testmate_test/build/CMakeFiles/test_dll.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/test_dll.dir/depend

