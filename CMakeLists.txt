cmake_minimum_required(VERSION 3.10)
project(UnivOpenCVCourse)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

find_package(OpenCV REQUIRED)

add_executable(
    main
    ${SOURCE_DIR}/main.cpp
)

target_include_directories(main PRIVATE ${SOURCE_DIR})
target_link_libraries(main PRIVATE ${OpenCV_LIBS})

add_custom_target(
  copy_assets ALL
  COMMAND ${CMAKE_COMMAND} -E copy_directory
    ${CMAKE_CURRENT_SOURCE_DIR}/assets
    ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/assets
)
