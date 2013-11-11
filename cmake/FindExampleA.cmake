set(EXAMPLE_A_ROOT $ENV{EXAMPLE_A_ROOT})

if(NOT EXAMPLE_A_ROOT)
  message(FATAL_ERROR "Please define EXAMPLE_A_ROOT")
endif()

if(NOT EXISTS ${EXAMPLE_A_ROOT}/Install/foo.hpp)
  message(FATAL_ERROR "File ${EXAMPLE_A_ROOT}/foo.hpp not found")
endif()

set(EXAMPLE_A_INCLUDE_DIRS ${EXAMPLE_A_ROOT}/Install)

find_library(EXAMPLE_A_LIBRARY example_A PATHS ${EXAMPLE_A_ROOT}/Install)

if(NOT EXAMPLE_A_LIBRARY)
  message(FATAL_ERROR "Library example_A not found in ${EXAMPLE_A_ROOT}/Install)
endif()