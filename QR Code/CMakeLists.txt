cmake_minimum_required(VERSION 3.15)
project(QRCODE C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${QRCODE_SOURCE_DIR})

find_package(SDL REQUIRED)
find_package(PNG REQUIRED)
include_directories(
        ${SDL_INCLUDE_DIR}
        ${PNG_PNG_INCLUDE_DIR}
)

add_executable(QRCODE main.c qrcodegen.h qrcodegen.c savepng.c savepng.h)

target_link_libraries(
        QRCODE
        ${SDL_LIBRARY}
        ${PNG_LIBRARY}
)
