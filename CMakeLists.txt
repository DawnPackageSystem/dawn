cmake_minimum_required(VERSION 3.16)
project(dawn VERSION 0.1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(CURL REQUIRED)

include_directories(src)

add_executable(dawn
    src/main.cpp
    src/core/engine.cpp
    src/utils/network.cpp
)

target_link_libraries(dawn PRIVATE CURL::libcurl)
