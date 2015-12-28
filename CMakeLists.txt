
###############################################################################
# cmake settings
###############################################################################

cmake_minimum_required(VERSION 3.0.0)


###############################################################################
# configuration
###############################################################################

enable_testing()
ENABLE_LANGUAGE(C)

include(TestBigEndian)
include(CheckTypeSize)
include(CheckIncludeFile)
include(CheckFunctionExists)
include(CheckCSourceCompiles)

check_function_exists(snprintf HAVE_SNPRINTF)

set(LEPTONICA_INCLUDE ${CMAKE_CURRENT_SOURCE_DIR})
set(LEPTONICA_LIBRARIE ${CMAKE_CURRENT_SOURCE_DIR})
set(LEPTONICA_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})



###############################################################################
# compiler/linker
###############################################################################

if (CYGWIN)
    add_definitions(-D__CYGWIN__)
endif()

if(MSVC)
	add_definitions(-D_CRT_SECURE_NO_DEPRECATE)
	set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /MT")
	set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} /MTd /Zi")
	set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} /MT")
	set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} /MTd /Zi")
	# Multithreaded building
	if(MSVC_VERSION GREATER 1400)
		set(PROCESSOR_COUNT "$ENV{NUMBER_OF_PROCESSORS}")
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /MP${PROCESSOR_COUNT}")
		set(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS} /MP${PROCESSOR_COUNT}")
	endif()
endif()

if( HAVE_SNPRINTF )
	add_definitions( -DHAVE_SNPRINTF )
endif()



###############################################################################
# library settings
###############################################################################

if( NOT LEPTONICA )
	set(LEPTONICA liblept)
endif()
project(${LEPTONICA} C)
set(LEPTONICA_VERSION "1.72")

set(LIBRARY_HEADERS "")
include(cmake/LoadLibs.cmake)	# Here, we load all libraries
add_subdirectory("${LEPTONICA_DIRECTORY}/src")	# Build the library

# The configuration file and included directories
include_directories(
	"${${LEPTONICA}_SOURCE_DIR}" "${${LEPTONICA}_BINARY_DIR}"
	${LEPTONICA_DIRECTORY}/src
)



###############################################################################
# program settings
###############################################################################

add_subdirectory("${LEPTONICA_DIRECTORY}/prog")	# Build the programs
