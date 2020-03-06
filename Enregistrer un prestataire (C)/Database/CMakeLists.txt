#[[cmake_minimum_required(VERSION 3.15)
project(Database C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${DATABASE_SOURCE_DIR})

include(FindMySQL.cmake)
find_package(MySQL REQUIRED)
include_directories(${MySQL_INCLUDE_DIR})

add_executable(Database main.c)

target_link_libraries(Database ${MySQL_LIBRARY})]]


cmake_minimum_required(VERSION 3.15)
project(Database C)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c99")

include(FindPkgConfig)
pkg_check_modules(LIBMYSQLCLIENT REQUIRED mysqlclient)

foreach(FLAG ${LIBMYSQLCLIENT_CFLAGS_OTHER})
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${FLAG}")
endforeach()

link_directories(${LIBMYSQLCLIENT_LIBRARY_DIRS})

add_executable(Database main.c)
target_include_directories(Database PRIVATE ${LIBMYSQLCLIENT_INCLUDE_DIRS})
target_link_libraries(Database PRIVATE ${LIBMYSQLCLIENT_LIBRARIES})