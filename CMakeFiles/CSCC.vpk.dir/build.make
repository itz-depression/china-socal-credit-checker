# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /root/fucku-vita

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/fucku-vita

# Utility rule file for CSCC.vpk.

# Include the progress variables for this target.
include CMakeFiles/CSCC.vpk.dir/progress.make

CMakeFiles/CSCC.vpk: CSCC.vpk.out
	/usr/bin/cmake -E copy /root/fucku-vita/CSCC.vpk.out CSCC.vpk

CSCC.vpk.out: CSCC.vpk_param.sfo
CSCC.vpk.out: eboot.bin
CSCC.vpk.out: sce_sys/icon0.png
CSCC.vpk.out: sce_sys/livearea/contents/bg.png
CSCC.vpk.out: sce_sys/livearea/contents/startup.png
CSCC.vpk.out: sce_sys/livearea/contents/template.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/fucku-vita/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building vpk CSCC.vpk"
	/usr/local/vitasdk/bin/vita-pack-vpk -a /root/fucku-vita/sce_sys/icon0.png=sce_sys/icon0.png -a /root/fucku-vita/sce_sys/livearea/contents/bg.png=sce_sys/livearea/contents/bg.png -a /root/fucku-vita/sce_sys/livearea/contents/startup.png=sce_sys/livearea/contents/startup.png -a /root/fucku-vita/sce_sys/livearea/contents/template.xml=sce_sys/livearea/contents/template.xml -s /root/fucku-vita/CSCC.vpk_param.sfo -b /root/fucku-vita/eboot.bin /root/fucku-vita/CSCC.vpk.out

CSCC.vpk_param.sfo: eboot.bin
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/fucku-vita/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating param.sfo for CSCC.vpk"
	/usr/local/vitasdk/bin/vita-mksfoex -s APP_VER=01.00 -s TITLE_ID=CSCC00001 "Socal Credit Checker" /root/fucku-vita/CSCC.vpk_param.sfo

CSCC.vpk: CMakeFiles/CSCC.vpk
CSCC.vpk: CSCC.vpk.out
CSCC.vpk: CSCC.vpk_param.sfo
CSCC.vpk: CMakeFiles/CSCC.vpk.dir/build.make

.PHONY : CSCC.vpk

# Rule to build all files generated by this target.
CMakeFiles/CSCC.vpk.dir/build: CSCC.vpk

.PHONY : CMakeFiles/CSCC.vpk.dir/build

CMakeFiles/CSCC.vpk.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CSCC.vpk.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CSCC.vpk.dir/clean

CMakeFiles/CSCC.vpk.dir/depend:
	cd /root/fucku-vita && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/fucku-vita /root/fucku-vita /root/fucku-vita /root/fucku-vita /root/fucku-vita/CMakeFiles/CSCC.vpk.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CSCC.vpk.dir/depend
