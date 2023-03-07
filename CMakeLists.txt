cmake_minimum_required(VERSION 3.0.0)
project(thread_pool VERSION 0.1.0)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_CXX_FLAGS
    "-Werror -Wunused-variable -Wreorder-ctor -Wsign-compare -Wenum-compare -Wpessimizing-move -Wunused-private-field -Wdelete-non-abstract-non-virtual-dtor -fno-omit-frame-pointer -fsanitize=address -fexceptions"
)
set(CMAKE_C_FLAGS
    "-Werror -Wreorder-ctor -fno-omit-frame-pointer -fsanitize=address")
set(CMAKE_LINKER_FLAG
    "${CMAKE_LINKER_FLAGS_DEBUG} -fno-omit-frame-pointer -fsanitize=address")

add_executable(
  iam_test 
  brute_force/main.cpp
  brute_force/src/bruteForce.cpp
)

target_include_directories(
  iam_test
  PUBLIC  
  service_new/scrypt/inc
  service_new/scrypt/src
  brute_force/inc
  brute_force/src
  brute_force/
)

find_package(OpenSSL REQUIRED)
target_link_libraries(iam_test PUBLIC OpenSSL::SSL)
find_package(OpenMP)
if(OpenMP_CXX_FOUND)
    target_link_libraries(iam_test PUBLIC OpenMP::OpenMP_CXX)
endif()
target_link_libraries(iam_test PUBLIC ohos_hilog)
target_link_libraries(iam_test PUBLIC ohos_utils)
target_link_libraries(iam_test PUBLIC iam_utils)
target_link_libraries(iam_test PUBLIC service_new)

add_subdirectory(ohos_hilog)
add_subdirectory(ohos_utils)
add_subdirectory(iam_utils)
add_subdirectory(service_new)


enable_testing()
add_test(NAME iam_test COMMAND iam_test)
