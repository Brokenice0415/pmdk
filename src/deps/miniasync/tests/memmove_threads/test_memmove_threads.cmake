# SPDX-License-Identifier: BSD-3-Clause
# Copyright 2022, Intel Corporation

# test case for the memmove operation with the thread data mover

include(${SRC_DIR}/cmake/test_helpers.cmake)

setup()

execute(0 ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${BUILD}/memmove_threads)
execute_assert_pass(${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${BUILD}/memmove_threads)

cleanup()
