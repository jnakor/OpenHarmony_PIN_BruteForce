cmake_minimum_required(VERSION 3.0.0)
project(iam_utils VERSION 0.1.0)
set(CMAKE_CXX_STANDARD 17)

include_directories(inc)
add_library(
    iam_utils
    SHARED 
    src/thread_groups.cpp
)

target_link_libraries(iam_utils PUBLIC ohos_hilog)
target_link_libraries(iam_utils PUBLIC ohos_utils)

target_include_directories(iam_utils PUBLIC inc)