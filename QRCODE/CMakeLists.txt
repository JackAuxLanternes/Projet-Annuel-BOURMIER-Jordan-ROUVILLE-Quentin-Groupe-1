cmake_minimum_required(VERSION 3.15)
project(QRCODE C)

set(CMAKE_C_STANDARD 99)

add_executable(QRCODE main.c qrcodegen.h qrcodegen.c)