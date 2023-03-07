cmake_minimum_required(VERSION 3.0.0)
project(ohos_hilog VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 17)

include_directories(. hilog)
add_library(
    ohos_hilog 
    SHARED 
    src/hilog.cpp 
    src/vsnprintf_s_p.cpp
)
target_include_directories(ohos_hilog PUBLIC .)