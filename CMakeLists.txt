
###############################################################################
# cmake settings
###############################################################################

cmake_minimum_required(VERSION 3.0.0)

# In-source builds are disabled.
if (${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
    message(FATAL_ERROR
        "CMake generation is not possible within the source directory!\n "
        "Remove CMakeCache.txt and try again from another folder, e.g.:\n "
        "rm CMakeCache.txt\n "
        "mkdir build\n "
        "cd build\n "
        "cmake ..\n "
    )
endif()

set(CMAKE_BINARY_OUTPUT_PATH "${CMAKE_BINARY_DIR}/bin")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_OUTPUT_PATH}")
set(CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH};${CMAKE_SOURCE_DIR}/cmake")



###############################################################################
# configuration
###############################################################################

enable_testing()
enable_language(C)

include(TestBigEndian)
include(CheckTypeSize)
include(CheckIncludeFile)
include(CheckFunctionExists)
include(CheckCSourceCompiles)

check_function_exists(snprintf HAVE_SNPRINTF)
if( HAVE_SNPRINTF )
	add_definitions( -DHAVE_SNPRINTF )	# Add this definition
endif()

set(LEPTONICA_INCLUDE ${CMAKE_CURRENT_SOURCE_DIR})
set(LEPTONICA_LIBRARIE ${CMAKE_CURRENT_SOURCE_DIR})
set(LEPTONICA_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})



###############################################################################
# compiler/linker
###############################################################################

macro(check_keyword_exists KEYWORD VARIABLE)
	# See if compiler supports prototypes.
	check_c_source_compiles(
		"
		${KEYWORD} int test() { return 0; }
		int main(int argc, char **argv) { return test(); }
		"
		HAVE_${KEYWORD}
	)
	set(VARIABLE HAVE_${KEYWORD})
endmacro()

if (WIN32)
	add_definitions(-D__WIN32__)
endif()

if (CYGWIN)
	add_definitions(-D__CYGWIN__)
endif()

# For MSVC compiler
if(MSVC)
	check_keyword_exists(static HAVE_KEYWORD_INLINE)
	if( NOT HAVE_KEYWORD_INLINE )
		add_definitions( -Dinline=__inline )
	endif()
	# Enable Security Features
	if (NOT ( MSVC_VERSION LESS 1900 ))
		set(GUARD "/guard:cf")	# New option in vs2015 or later
	endif()
	if (NOT ( MSVC_VERSION LESS 1700 ))
		set(SDL "/sdl")			# New option in vs2012 or later
		set(ANALYZE "/analyze")	# New option in vs2012 or later
	endif()
	if (${CMAKE_SIZEOF_VOID_P} EQUAL 4)
		set(SAFESEH "/SAFESEH")	# It only works on windows 32bit
	endif()
	set(CMAKE_C_FLAGS 
		"${CMAKE_C_FLAGS} ${ANALYZE} ${GUARD} ${SDL} /GS")
	set(CMAKE_C_FLAGS_RELEASE 
		"${CMAKE_C_FLAGS_RELEASE} ${ANALYZE} ${GUARD} ${SDL} /GS")
	set(CMAKE_SHARED_LINKER_FLAGS 
		"${CMAKE_SHARED_LINKER_FLAGS} ${SAFESEH} /NXCOMPAT")
	set(CMAKE_MODULE_LINKER_FLAGS 
		"${CMAKE_MODULE_LINKER_FLAGS} ${SAFESEH} /NXCOMPAT")
	# Multithreaded building
	if(MSVC_VERSION GREATER 1400)
		set(PROCESSOR_COUNT "$ENV{NUMBER_OF_PROCESSORS}")
		set(CMAKE_C_FLAGS 
			"${CMAKE_C_FLAGS} /MP${PROCESSOR_COUNT}")
		set(CMAKE_C_FLAGS_DEBUG 
			"${CMAKE_C_FLAGS_DEBUG} /MP${PROCESSOR_COUNT}")
		set(CMAKE_C_FLAGS_RELEASE 
			"${CMAKE_C_FLAGS_RELEASE}  /MP${PROCESSOR_COUNT}")
	endif()
endif()

# For MINGW compiler
if (MINGW)
	# Enable Security Features
	add_definitions(-D_FORTIFY_SOURCE=2)
	set(CMAKE_C_FLAGS  
		"${CMAKE_C_FLAGS} -fstack-protector-all")
	set(CMAKE_C_FLAGS_RELEASE 
		"${CMAKE_C_FLAGS_RELEASE} -fstack-protector-all")
	#set(CMAKE_SHARED_LINKER_FLAGS 
	#	"${CMAKE_SHARED_LINKER_FLAGS} -Wl,nxcompat -Wl,dynamicbase")
	#set(CMAKE_MODULE_LINKER_FLAGS 
	#	"${CMAKE_MODULE_LINKER_FLAGS} -Wl,nxcompat -Wl,dynamicbase")
endif()



###############################################################################
# library settings
###############################################################################

if( NOT LEPTONICA )
	set(LEPTONICA liblept)
endif()
project(${LEPTONICA} C)
set(LEPTONICA_VERSION "1.72")

include(cmake/LoadLibs.cmake)	# Here, we load all libraries
add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/src")	# Build the library

# The configuration file and included directories
include_directories( 
	"${${LEPTONICA}_SOURCE_DIR}" "${${LEPTONICA}_BINARY_DIR}"
	"${CMAKE_CURRENT_SOURCE_DIR}/src" "${CMAKE_CURRENT_BINARY_DIR}/src"
	"${CMAKE_CURRENT_SOURCE_DIR}/prog" "${CMAKE_CURRENT_BINARY_DIR}/prog"
)



###############################################################################
# program settings
###############################################################################

# Build all test programs if it's not a sub-project
if(${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_CURRENT_SOURCE_DIR})
	add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/prog")	# Build programs
endif()

