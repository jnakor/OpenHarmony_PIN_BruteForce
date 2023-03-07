cmake_minimum_required(VERSION 3.0.0)
project(service_new VERSION 0.1.0)
set(CMAKE_CXX_STANDARD 17)

find_package(OpenSSL REQUIRED)

include_directories(
  scrypt/inc
  scrypt/src

  hdi_service/adaptor/inc
  hdi_service/adaptor/src
  
  hdi_service/common/inc
  hdi_service/common/src

  hdi_service/database/inc
  hdi_service/database/src

  hdi_service/main/inc
  hdi_service/main/src

  # hdi_service/service/inc
  # hdi_service/service/src

)

add_library(
    service_new SHARED 
    scrypt/src/scrypt.cpp
    scrypt/src/newSalt.cpp

    hdi_service/adaptor/src/adaptor_algorithm.c
    hdi_service/adaptor/src/adaptor_file.c
    hdi_service/adaptor/src/adaptor_memory.c
    hdi_service/adaptor/src/adaptor_time.c
    hdi_service/adaptor/src/file_operator.c

    hdi_service/common/src/buffer.c

    hdi_service/database/src/pin_db.c

    hdi_service/main/src/pin_auth.cpp
    hdi_service/main/src/pin_func.c

    # hdi_service/service/src/executor_impl.cpp
    # hdi_service/service/src/pin_auth_interface_driver.cpp
    # hdi_service/service/src/pin_auth_interface_service.cpp

)

target_link_libraries(service_new PUBLIC OpenSSL::SSL)

target_link_libraries(service_new PUBLIC ohos_hilog)
target_link_libraries(service_new PUBLIC ohos_utils)
target_link_libraries(service_new PUBLIC iam_utils)

target_include_directories(
  service_new PUBLIC scrypt/inc 
  hdi_service/adaptor/inc
  hdi_service/common/inc
  hdi_service/database/inc
  hdi_service/main/inc
  # hdi_service/service/inc
  )