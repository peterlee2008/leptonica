###############################################################################
# cmake settings
###############################################################################
cmake_minimum_required(VERSION 3.4.0)


###############################################################################
# compiler/linker
###############################################################################
if (WIN32)
    if (MSVC)
		add_definitions(-D_CRT_SECURE_NO_DEPRECATE)
    endif()
endif()

if (CYGWIN)
    add_definitions(-D__CYGWIN__)
endif()


###############################################################################
# configuration
###############################################################################
ENABLE_LANGUAGE(C)
include(CheckTypeSize)
include(CheckIncludeFile)
include(CheckFunctionExists)
include(CheckCSourceCompiles)


###############################################################################
# library settings
###############################################################################
if(NOT PNG)
	set(PNG libpng)
endif()
project(${PNG} C)
set(PNG_VERSION "1.6.18")

# We need the zlib library
# include_directories(${ZLIB_DIRECTORIES})
# We need the math library
if(NOT WIN32)
	find_library(MATH NAMES m PATHS /usr/lib /usr/local/lib)
	if(NOT MATH)
		message(STATUS "'libm' not found, floating point support disabled")
	endif()
else()
	set(MATH "")	# not needed on windows
endif()

# The configuration file and included directories
configure_file(
	"${CMAKE_CURRENT_SOURCE_DIR}/pnglibconf.h.cmakein"
	"${CMAKE_CURRENT_BINARY_DIR}/pnglibconf.h" @ONLY)
include_directories(
	"${CMAKE_CURRENT_SOURCE_DIR}" "${CMAKE_CURRENT_BINARY_DIR}")
# The files in our project
set( LIBRARY_HEADERS
	png.h pngconf.h ${CMAKE_CURRENT_BINARY_DIR}/pnglibconf.h
)
set( HEADERS pngdebug.h pnginfo.h pngpriv.h pngstruct.h )
set( SOURCES
	png.c pngerror.c pngget.c pngmem.c pngpread.c pngread.c pngrio.c 
	pngrtran.c pngrutil.c pngset.c pngtrans.c pngwio.c pngwrite.c 
	pngwtran.c pngwutil.c
)

# Set up the library
add_library(${PNG} STATIC ${SOURCES} ${HEADERS} ${LIBRARY_HEADERS})
target_link_libraries(${PNG} ${ZLIB} ${MATH})	# Link with zlib and math

# Set properties on the target.
set_target_properties(${PNG} PROPERTIES PREFIX "")
set_target_properties(${PNG} PROPERTIES LIBRARY_OUTPUT_NAME ${PNG})
if(MSVC)
	set_target_properties(${PNG} PROPERTIES COMPILE_PDB_NAME ${PNG})
endif()
