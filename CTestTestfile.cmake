# CMake generated Testfile for 
# Source directory: /home/hw/iam_refactor
# Build directory: /home/hw/iam_refactor
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(iam_test "/home/hw/iam_refactor/iam_test")
set_tests_properties(iam_test PROPERTIES  _BACKTRACE_TRIPLES "/home/hw/iam_refactor/CMakeLists.txt;45;add_test;/home/hw/iam_refactor/CMakeLists.txt;0;")
subdirs("ohos_hilog")
subdirs("ohos_utils")
subdirs("iam_utils")
subdirs("service_new")
