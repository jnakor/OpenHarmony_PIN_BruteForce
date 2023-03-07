cmake_minimum_required(VERSION 3.0.0)
project(ohos_utils VERSION 0.1.0)
set(CMAKE_CXX_STANDARD 17)
set(THREADS_PREFER_PTHREAD_FLAG ON)
set(CMAKE_THREAD_LIBS_INIT "-pthread")

find_package(Threads REQUIRED)

include_directories(include)

add_definitions(-DCONFIG_HILOG)

add_library(
    ohos_utils
    SHARED 
    src/securec/fscanf_s.c
    src/securec/fwscanf_s.c
    src/securec/gets_s.c
    src/securec/input.inl
    src/securec/memcpy_s.c
    src/securec/memmove_s.c
    src/securec/memset_s.c
    src/securec/output.inl
    src/securec/output_p.inl
    src/securec/scanf_s.c
    src/securec/secinput.h
    src/securec/securecutil.c
    src/securec/securecutil.h
    src/securec/secureinput_a.c
    src/securec/secureinput_w.c
    src/securec/secureprintoutput.h
    src/securec/secureprintoutput_a.c
    src/securec/secureprintoutput_w.c
    src/securec/snprintf_s.c
    src/securec/sprintf_s.c
    src/securec/sscanf_s.c
    src/securec/strcat_s.c
    src/securec/strcpy_s.c
    src/securec/strncat_s.c
    src/securec/strncpy_s.c
    src/securec/strtok_s.c
    src/securec/swprintf_s.c
    src/securec/swscanf_s.c
    src/securec/vfscanf_s.c
    src/securec/vfwscanf_s.c
    src/securec/vscanf_s.c
    src/securec/vsnprintf_s.c
    src/securec/vsnprintf_s_p.c
    src/securec/vsprintf_s.c
    src/securec/vsscanf_s.c
    src/securec/vswprintf_s.c
    src/securec/vswscanf_s.c
    src/securec/vwscanf_s.c
    src/securec/wcscat_s.c
    src/securec/wcscpy_s.c
    src/securec/wcsncat_s.c
    src/securec/wcsncpy_s.c
    src/securec/wcstok_s.c
    src/securec/wmemcpy_s.c
    src/securec/wmemmove_s.c
    src/securec/wscanf_s.c
    src/semaphore_ex.cpp
    src/string_ex.cpp
    src/thread_ex.cpp
    src/ashmem.cpp
    src/thread_pool.cpp
    src/timer.cpp
    src/timer_event_handler.cpp
    src/timer_event_handler.h
    src/unicode_ex.cpp
    src/unicode_ex.h
    src/utils_log.h
    src/datetime_ex.cpp
    src/directory_ex.cpp
    src/event_demultiplexer.cpp
    src/event_demultiplexer.h
    src/event_handler.cpp
    src/event_handler.h
    src/event_reactor.cpp
    src/event_reactor.h
    src/file_ex.cpp
    src/observer.cpp
    src/parcel.cpp
    src/refbase.cpp
    src/rwlock.cpp
)

target_link_libraries(ohos_utils PUBLIC Threads::Threads)
target_link_libraries(ohos_utils PUBLIC ohos_hilog)

target_include_directories(ohos_utils PUBLIC include)
