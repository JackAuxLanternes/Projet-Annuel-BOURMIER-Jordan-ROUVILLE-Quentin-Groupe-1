# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\Quentin\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\193.6494.38\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\Quentin\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\193.6494.38\bin\cmake\win\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/QRCODE.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/QRCODE.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/QRCODE.dir/flags.make

CMakeFiles/QRCODE.dir/main.c.obj: CMakeFiles/QRCODE.dir/flags.make
CMakeFiles/QRCODE.dir/main.c.obj: CMakeFiles/QRCODE.dir/includes_C.rsp
CMakeFiles/QRCODE.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/QRCODE.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\QRCODE.dir\main.c.obj   -c "D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\main.c"

CMakeFiles/QRCODE.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/QRCODE.dir/main.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\main.c" > CMakeFiles\QRCODE.dir\main.c.i

CMakeFiles/QRCODE.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/QRCODE.dir/main.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\main.c" -o CMakeFiles\QRCODE.dir\main.c.s

CMakeFiles/QRCODE.dir/qrcodegen.c.obj: CMakeFiles/QRCODE.dir/flags.make
CMakeFiles/QRCODE.dir/qrcodegen.c.obj: CMakeFiles/QRCODE.dir/includes_C.rsp
CMakeFiles/QRCODE.dir/qrcodegen.c.obj: ../qrcodegen.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/QRCODE.dir/qrcodegen.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\QRCODE.dir\qrcodegen.c.obj   -c "D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\qrcodegen.c"

CMakeFiles/QRCODE.dir/qrcodegen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/QRCODE.dir/qrcodegen.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\qrcodegen.c" > CMakeFiles\QRCODE.dir\qrcodegen.c.i

CMakeFiles/QRCODE.dir/qrcodegen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/QRCODE.dir/qrcodegen.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\qrcodegen.c" -o CMakeFiles\QRCODE.dir\qrcodegen.c.s

CMakeFiles/QRCODE.dir/savepng.c.obj: CMakeFiles/QRCODE.dir/flags.make
CMakeFiles/QRCODE.dir/savepng.c.obj: CMakeFiles/QRCODE.dir/includes_C.rsp
CMakeFiles/QRCODE.dir/savepng.c.obj: ../savepng.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/QRCODE.dir/savepng.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\QRCODE.dir\savepng.c.obj   -c "D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\savepng.c"

CMakeFiles/QRCODE.dir/savepng.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/QRCODE.dir/savepng.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\savepng.c" > CMakeFiles\QRCODE.dir\savepng.c.i

CMakeFiles/QRCODE.dir/savepng.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/QRCODE.dir/savepng.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\savepng.c" -o CMakeFiles\QRCODE.dir\savepng.c.s

# Object files for target QRCODE
QRCODE_OBJECTS = \
"CMakeFiles/QRCODE.dir/main.c.obj" \
"CMakeFiles/QRCODE.dir/qrcodegen.c.obj" \
"CMakeFiles/QRCODE.dir/savepng.c.obj"

# External object files for target QRCODE
QRCODE_EXTERNAL_OBJECTS =

QRCODE.exe: CMakeFiles/QRCODE.dir/main.c.obj
QRCODE.exe: CMakeFiles/QRCODE.dir/qrcodegen.c.obj
QRCODE.exe: CMakeFiles/QRCODE.dir/savepng.c.obj
QRCODE.exe: CMakeFiles/QRCODE.dir/build.make
QRCODE.exe: C:/MinGW/lib/libSDLmain.a
QRCODE.exe: C:/MinGW/lib/libSDL.dll.a
QRCODE.exe: C:/MinGW/lib/libpng.dll.a
QRCODE.exe: CMakeFiles/QRCODE.dir/linklibs.rsp
QRCODE.exe: CMakeFiles/QRCODE.dir/objects1.rsp
QRCODE.exe: CMakeFiles/QRCODE.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable QRCODE.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\QRCODE.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/QRCODE.dir/build: QRCODE.exe

.PHONY : CMakeFiles/QRCODE.dir/build

CMakeFiles/QRCODE.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\QRCODE.dir\cmake_clean.cmake
.PHONY : CMakeFiles/QRCODE.dir/clean

CMakeFiles/QRCODE.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code" "D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code" "D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\cmake-build-debug" "D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\cmake-build-debug" "D:\Ecole\Cours\Projet Annuel\Projet-Annuel-BOURMIER-Jordan-ROUVILLE-Quentin-Groupe-1\QR Code\cmake-build-debug\CMakeFiles\QRCODE.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/QRCODE.dir/depend

