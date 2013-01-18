# Find SnappyStream
# Merder Kim <hoxnox@gmail.com>
# 
# input:
#  SNAPPYSTREAM_ROOT
#
# output:
#  SNAPPYSTREAM_FOUND
#  SNAPPYSTREAM_INCLUDE_DIR
#  SNAPPYSTREAM_LIBRARIES
#

if(SNAPPYSTREAM_INCLUDE_DIR AND SNAPPYSTREAM_LIBRARIES)
	set(SNAPPYSTREAM_FIND_QUITELY TRUE) # cached
endif(SNAPPYSTREAM_INCLUDE_DIR AND SNAPPYSTREAM_LIBRARIES)

if(NOT DEFINED SNAPPYSTREAM_ROOT)
	set(SNAPPYSTREAM_ROOT /usr /usr/local $ENV{SNAPPYSTREAM_ROOT})
endif(NOT DEFINED SNAPPYSTREAM_ROOT)

find_path(SNAPPYSTREAM_INCLUDE_DIR
		snappystream.hpp
		isnappystream.hpp
		osnappystream.hpp
		snappystreamcfg.hpp
	PATHS ${SNAPPYSTREAM_ROOT}
	PATH_SUFFIXES snappy/include snappystream/include include
)

find_library(SNAPPYSTREAM_LIBRARIES
	NAMES snappystream
	PATHS ${SNAPPYSTREAM_ROOT}
	PATH_SUFFIXES lib
)
mark_as_advanced(SNAPPYSTREAM_INCLUDE_DIR SNAPPYSTREAM_LIBRARIES)


include("${CMAKE_ROOT}/Modules/FindPackageHandleStandardArgs.cmake")
FIND_PACKAGE_HANDLE_STANDARD_ARGS(SnappyStream DEFAULT_MSG SNAPPYSTREAM_INCLUDE_DIR SNAPPYSTREAM_LIBRARIES)


