# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_GCC_HID_FPIC_CMAKE_)
  return()
else()
  set(POLLY_GCC_HID_FPIC_CMAKE_ 1)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

polly_init(
    "gcc / c++11 support / hidden / FPIC"
    "Unix Makefiles"
    )

set(CMAKE_POSITION_INDEPENDENT_CODE YES)

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/compiler/gcc.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/cxx11.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/hidden.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/fpic.cmake")

