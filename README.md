# c/cpp-creator

This shell script for Linux allows you to create pre-configured projects for the C/C++ language and the CMake project compiler.

## reason

Created by me because I was tired of having to create folders and files to configure a C/C++ project. Yes, I know there are IDEs that solve this problem, but I wanted to do it anyway, haha.

## Installation Guide

1- SSH:
```bash
git clone git@github.com:josealbertoraios13/cpp-creator.git
cd cpp-creator
```
or

1- HTTPS:
```bash
git clone https://github.com/josealbertoraios13/c-cpp_creator.git
cd c-cpp_creator
```

2- Make the installation script executable:
```bash
chmod x+ install.sh
```
3- Run the script:
```bash
./install.sh
```
4- Confirm installation:
```bash
alcc --version
```

## Examples

1- Get all available commands with:
```bash
alcc --help
```
2- Base project example:
```bash
alcc create base your_project (name)
```
3- Project base file tree
```bash
├── build
│   ├── CMakeCache.txt
│   ├── CMakeFiles
│   │   ├── 3.28.3
│   │   │   ├── CMakeCXXCompiler.cmake
│   │   │   ├── CMakeDetermineCompilerABI_CXX.bin
│   │   │   ├── CMakeSystem.cmake
│   │   │   └── CompilerIdCXX
│   │   │       ├── a.out
│   │   │       ├── CMakeCXXCompilerId.cpp
│   │   │       └── tmp
│   │   ├── cmake.check_cache
│   │   ├── CMakeConfigureLog.yaml
│   │   ├── CMakeDirectoryInformation.cmake
│   │   ├── CMakeScratch
│   │   ├── Makefile2
│   │   ├── Makefile.cmake
│   │   ├── your_project.dir
│   │   │   ├── build.make
│   │   │   ├── cmake_clean.cmake
│   │   │   ├── compiler_depend.make
│   │   │   ├── compiler_depend.ts
│   │   │   ├── DependInfo.cmake
│   │   │   ├── depend.make
│   │   │   ├── flags.make
│   │   │   ├── link.txt
│   │   │   ├── main.cpp.o
│   │   │   ├── main.cpp.o.d
│   │   │   └── progress.make
│   │   ├── pkgRedirects
│   │   ├── progress.marks
│   │   └── TargetDirectories.txt
│   ├── cmake_install.cmake
│   ├── Makefile
│   └── your_project
├── CMakeLists.txt
├── include
├── main.cpp
└── src
```
## Uninstall Guide

1- To uninstall use:
```bash
alcc uninstall

```


