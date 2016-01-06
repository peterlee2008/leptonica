###############################################################################
# cmake settings
###############################################################################
cmake_minimum_required(VERSION 3.0.0)


###############################################################################
# compiler/linker
###############################################################################

if (WIN32)
	add_definitions(-D__WIN32__)
endif()

if (CYGWIN)
	add_definitions(-D__CYGWIN__)
endif()

# For MSVC compiler
if (MSVC)
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
# configuration
###############################################################################
enable_testing()
ENABLE_LANGUAGE(C)
include(CheckTypeSize)
include(CheckIncludeFile)
include(CheckFunctionExists)
include(CheckCSourceCompiles)

if(PNG_DEBUG)
	add_definitions(-DPNG_DEBUG)
endif()



###############################################################################
# library settings
###############################################################################
if(NOT PNG)
	set(PNG libpng)
endif()
project(${PNG} C)
set(PNG_VERSION "1.6.20")

# We need the zlib library
if( NOT ZLIB )
	include(FindZLIB)
	if( ZLIB_FOUND AND EXISTS ${ZLIB_INCLUDE_DIRS}/zlib.h )
		set(ZLIB ${ZLIB_LIBRARIES})
		include_directories( ${ZLIB_INCLUDE_DIRS} )
	else()
		message(FATAL_ERROR "Can not Find the 'zlib' package")
	endif()
endif()
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



###############################################################################
# program settings
###############################################################################

# Build all test programs if LEPTONICA is not a sub-project
if(${CMAKE_SOURCE_DIR} STREQUAL ${LEPTONICA_DIRECTORY})
	
	#
	add_executable(pngvalid contrib/libtests/pngvalid.c)
	target_link_libraries(pngvalid ${PNG})
	add_test(NAME pngvalid COMMAND pngvalid)
	
	#
	add_executable(pngstest contrib/libtests/pngstest.c)
	target_link_libraries(pngstest ${PNG})
	add_test(NAME pngstest COMMAND pngstest
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/basn0g01.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/basn0g02.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/basn0g04.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/basn0g08.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/basn0g16.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/basn2c08.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/basn2c16.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/basn3p01.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/basn3p02.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/basn3p04.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/basn3p08.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/basn4a08.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/basn4a16.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/basn6a08.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/basn6a16.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/ftbbn0g01.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/ftbbn0g02.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/ftbbn0g04.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/ftbbn2c16.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/ftbbn3p08.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/ftbgn2c16.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/ftbgn3p08.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/ftbrn2c08.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/ftbwn0g16.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/ftbwn3p08.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/ftbyn3p08.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/ftp0n0g08.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/ftp0n2c08.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/ftp0n3p08.png"
		"${CMAKE_CURRENT_SOURCE_DIR}/contrib/pngsuite/ftp1n3p08.png"
	)

	# Does not work with msvc due to png_lib_ver issue
	add_executable(pngtest pngtest.c)
	target_link_libraries(pngtest ${PNG})
	add_test(NAME pngtest COMMAND pngtest
		"${CMAKE_CURRENT_SOURCE_DIR}/pngtest.png")

endif()