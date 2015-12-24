###############################################################################
# cmake settings
###############################################################################
cmake_minimum_required(VERSION 2.8.11)

###############################################################################
# library settings
###############################################################################
if(NOT ZLIB)
	set(ZLIB libzlib)
endif()
project(${ZLIB} C)
set(ZLIB_VERSION "1.2.8")

include(CheckTypeSize)
include(CheckIncludeFile)
include(CheckFunctionExists)
include(CheckCSourceCompiles)

# Check for fseeko
check_function_exists(fseeko HAVE_FSEEKO)
if(NOT HAVE_FSEEKO)
	add_definitions(-DNO_FSEEKO)
endif()

# Check for unistd.h
check_include_file(unistd.h Z_HAVE_UNISTD_H)

# For MSVC compiler
if(MSVC)
	add_definitions(
		-D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE )
endif()

# Check to see if we have large file support
check_type_size(off64_t OFF64_T)
if(HAVE_OFF64_T)
	add_definitions(-D_LARGEFILE64_SOURCE=1)
endif()

# The configuration file
configure_file(
	"${CMAKE_CURRENT_SOURCE_DIR}/zconf.h.cmakein"
	"${CMAKE_CURRENT_BINARY_DIR}/zconf.h" @ONLY )
include_directories(
	"${CMAKE_CURRENT_SOURCE_DIR}" "${CMAKE_CURRENT_BINARY_DIR}")
# The files in our project
set(HEADERS 
	crc32.h deflate.h gzguts.h inffast.h inffixed.h inflate.h
	inftrees.h trees.h zutil.h
)
set(SOURCES
	adler32.c compress.c crc32.c deflate.c gzclose.c gzlib.c
	gzread.c gzwrite.c inflate.c infback.c inftrees.c
	inffast.c trees.c uncompr.c zutil.c
)
set(LIBRARY_HEADERS "${CMAKE_CURRENT_BINARY_DIR}/zconf.h" zlib.h)

# Set up the library
add_library(${ZLIB} STATIC ${SOURCES} ${HEADERS} ${LIBRARY_HEADERS})

# Set properties on the target.
set_target_properties(${ZLIB} PROPERTIES PREFIX "")
set_target_properties(${ZLIB} PROPERTIES LIBRARY_OUTPUT_NAME ${ZLIB})
if(MSVC)
	set_target_properties(${ZLIB} PROPERTIES COMPILE_PDB_NAME ${ZLIB})
endif()


