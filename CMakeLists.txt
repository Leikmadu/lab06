cmake_minimum_required(VERSION 3.10)
project(lab06)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Поддиректории
add_subdirectory(formatter_lib)
add_subdirectory(formatter_ex)
add_subdirectory(solver_lib)
add_subdirectory(hello_world)
add_subdirectory(solver)
add_subdirectory(banking)

# CPack конфигурация
include(CPackConfig.cmake)
