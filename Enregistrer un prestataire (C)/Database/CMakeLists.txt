cmake_minimum_required(VERSION 3.12)
project(Database C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_FLAGS "-Wall")
add_library(libmysql SHARED IMPORTED)
set_target_properties(
        libmysql
        PROPERTIES LINKER_LANGUAGE C
        IMPORTED_IMPLIB "C:/MinGW/lib/libmysqlclient.a")
link_directories("C:/MinGW/lib")
add_executable(Database main.c)
target_link_libraries(Database libmysql)