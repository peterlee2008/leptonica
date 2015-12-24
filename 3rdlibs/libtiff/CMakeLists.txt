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

if (UNIX)
    set(LIB_pthread pthread)
endif()


###############################################################################
# configuration
###############################################################################
ENABLE_LANGUAGE(C)
include(TestBigEndian)
include(CheckTypeSize)
include(CheckIncludeFile)
include(CheckFunctionExists)
include(CheckCSourceCompiles)

test_big_endian(HOST_BIGENDIAN)
if (NOT HOST_BIGENDIAN)
	set(HOST_BIGENDIAN 0)
endif()

check_type_size("int8" INT8)
check_type_size("int16" INT16)
check_type_size("int32" INT32)

check_type_size("size_t" SIZEOF_SIZE_T)
check_type_size("signed int" SIZEOF_SIGNED_INT)
check_type_size("signed long" SIZEOF_SIGNED_LONG)
check_type_size("signed short" SIZEOF_SIGNED_SHORT)
check_type_size("signed long long" SIZEOF_SIGNED_LONG_LONG)

check_type_size("unsigned int" SIZEOF_UNSIGNED_INT)
check_type_size("unsigned long" SIZEOF_UNSIGNED_LONG)
check_type_size("unsigned short" SIZEOF_UNSIGNED_SHORT)
check_type_size("unsigned char *" SIZEOF_UNSIGNED_CHAR_P)
check_type_size("unsigned long long" SIZEOF_UNSIGNED_LONG_LONG)

# -----------------------------------------------------------------------------
# Note, you can find some similar code on GitHub:
# https://github.com/vadz/libtiff/blob/master/CMakeLists.txt
set(TIFF_INT8_T "signed char")
set(TIFF_UINT8_T "unsigned char")

set(TIFF_INT16_T "signed short")
set(TIFF_UINT16_T "unsigned short")

if(SIZEOF_SIGNED_INT EQUAL 4)
	set(TIFF_INT32_T "signed int")
	set(TIFF_INT32_FORMAT "%d")
elseif(SIZEOF_SIGNED_LONG EQUAL 4)
	set(TIFF_INT32_T "signed long")
	set(TIFF_INT32_FORMAT "%ld")
else()
	message(WARNING "The selected compiler is not Supported by this script")
endif()

if(SIZEOF_UNSIGNED_INT EQUAL 4)
	set(TIFF_UINT32_T "unsigned int")
	set(TIFF_UINT32_FORMAT "%u")
elseif(SIZEOF_UNSIGNED_LONG EQUAL 4)
	set(TIFF_UINT32_T "unsigned long")
	set(TIFF_UINT32_FORMAT "%lu")
else()
	message(WARNING "The selected compiler is not Supported by this script")
endif()

if(MSVC)
	set(TIFF_INT64_FORMAT "%I64d")
	set(TIFF_INT64_T "signed __int64")
elseif(SIZEOF_SIGNED_LONG EQUAL 8)
	set(TIFF_INT64_FORMAT "%ld")
	set(TIFF_INT64_T "signed long")
elseif(SIZEOF_SIGNED_LONG_LONG EQUAL 8)
	set(TIFF_INT64_FORMAT "%lld")
	set(TIFF_INT64_T "signed long long")
else()
	message(WARNING "The selected compiler is not Supported by this script")
endif()

if(MSVC)
	set(TIFF_UINT64_FORMAT "%I64u")
	set(TIFF_UINT64_T "unsigned __int64")
elseif(SIZEOF_UNSIGNED_LONG EQUAL 8)
	set(TIFF_UINT64_FORMAT "%lu")
	set(TIFF_UINT64_T "unsigned long")
elseif(SIZEOF_UNSIGNED_LONG_LONG EQUAL 8)
	set(TIFF_UINT64_FORMAT "%llu")
	set(TIFF_UINT64_T "unsigned long long")
else()
	message(WARNING "The selected compiler is not Supported by this script")
endif()

if(CMAKE_SIZEOF_VOID_P EQUAL 4)
	# Unsigned size type
	set(TIFF_SIZE_T ${TIFF_UINT32_T})
	set(TIFF_SIZE_FORMAT ${TIFF_UINT32_FORMAT})
	# Signed size type
	set(TIFF_SSIZE_T ${TIFF_INT32_T})
	set(TIFF_SSIZE_FORMAT ${TIFF_INT32_FORMAT})
	# Pointer difference type and formatter
	set(TIFF_PTRDIFF_T ${TIFF_UINT32_T})
	set(TIFF_PTRDIFF_FORMAT ${TIFF_UINT32_FORMAT})
elseif(CMAKE_SIZEOF_VOID_P EQUAL 8)
	# Unsigned size type
	set(TIFF_SIZE_T ${TIFF_UINT64_T})
	set(TIFF_SIZE_FORMAT ${TIFF_UINT64_FORMAT})
	# Signed size type
	set(TIFF_SSIZE_T ${TIFF_INT64_T})
	set(TIFF_SSIZE_FORMAT ${TIFF_INT64_FORMAT})
	# Pointer difference type and formatter
	set(TIFF_PTRDIFF_T ${TIFF_UINT64_T})
	set(TIFF_PTRDIFF_FORMAT ${TIFF_UINT64_FORMAT})
else()
	message(WARNING "The selected compiler is not Supported by this script")
endif()
# -----------------------------------------------------------------------------

check_include_file(io.h HAVE_IO_H)
check_include_file(dlfcn.h HAVE_DLFCN_H)
check_include_file(fcntl.h HAVE_FCNTL_H)
check_include_file(stdlib.h HAVE_STDLIB_H)
check_include_file(stdint.h HAVE_STDINT_H)
check_include_file(memory.h HAVE_MEMORY_H)
check_include_file(malloc.h HAVE_MALLOC_H)
check_include_file(limits.h HAVE_LIMITS_H)
check_include_file(assert.h HAVE_ASSERT_H)
check_include_file(unistd.h HAVE_UNISTD_H)
check_include_file(search.h HAVE_SEARCH_H)
check_include_file(string.h HAVE_STRING_H)
check_include_file(strings.h HAVE_STRINGS_H)
check_include_file(windows.h HAVE_WINDOWS_H)
check_include_file(inttypes.h HAVE_INTTYPES_H)
check_include_file(sys/time.h TM_IN_SYS_TIME)
check_include_file(sys/time.h HAVE_SYS_TIME_H)
check_include_file(sys/stat.h HAVE_SYS_STAT_H)
check_include_file(sys/types.h HAVE_SYS_TYPES_H)

check_include_file(GL/gl.h HAVE_GL_GL_H)
check_include_file(GL/glu.h HAVE_GL_GLU_H)
check_include_file(GL/glut.h HAVE_GL_GLUT_H)
check_include_file(GLUT/glut.h HAVE_GLUT_GLUT_H)
check_include_file(OpenGL/gl.h HAVE_OPENGL_GL_H)
check_include_file(OpenGL/glu.h HAVE_OPENGL_GLU_H)

check_function_exists(pow HAVE_POW)
check_function_exists(mmap HAVE_MMAP)
check_function_exists(sqrt HAVE_SQRT)
check_function_exists(floor HAVE_FLOOR)
check_function_exists(lfind HAVE_LFIND)
check_function_exists(strtol HAVE_STRTOL)
check_function_exists(strstr HAVE_STRSTR)
check_function_exists(strchr HAVE_STRCHR)
check_function_exists(getopt HAVE_GETOPT)
check_function_exists(memset HAVE_MEMSET)
check_function_exists(setmode HAVE_SETMODE)
check_function_exists(isascii HAVE_ISASCII)
check_function_exists(memmove HAVE_MEMMOVE)
check_function_exists(strrchr HAVE_STRRCHR)
check_function_exists(strtoul HAVE_STRTOUL)
check_function_exists(strtoull HAVE_STRTOULL)
check_function_exists(strcasecmp HAVE_STRCASECMP)
check_function_exists(jbg_newlen HAVE_JBG_NEWLEN)

check_function_exists(lfind HAVE_LFIND)
check_function_exists(getopt HAVE_GETOPT)
check_function_exists(strtoul HAVE_STRTOUL)
check_function_exists(strtoull HAVE_STRTOULL)
check_function_exists(strcasecmp HAVE_STRCASECMP)

# The CPU bit order, see more details in configuration file
# Note: Actually, am not sure if I'm right here, But for now, 
#       it works well, You can find the following code on GitHub.
# https://github.com/uclouvain/openjpeg/blob/master/thirdparty/libtiff/
if(HOST_BIGENDIAN)
	set(HOST_FILLORDER "FILLORDER_MSB2LSB")
else()
	set(HOST_FILLORDER "FILLORDER_LSB2MSB")
endif()

# Strip chopping
set(STRIP_SIZE_DEFAULT 8192)

find_package(Threads)
# Check if we are using pthreads, see more ditails in tif_config.h
if( CMAKE_USE_PTHREADS_INIT )
	set(HAVE_PTHREAD 1)
endif()
# Enable WIN32 File IO if we're using Windows OS (see tif_config.h.in)
if(WIN32 AND NOT WINRT)
	set(USE_WIN32_FILEIO 1)
endif()


###############################################################################
# library settings
###############################################################################
if(NOT TIFF)
	set(TIFF libtiff)
endif()
project(${TIFF} C)
set(TIFF_VERSION "1.2.8")

configure_file(
	"${CMAKE_CURRENT_SOURCE_DIR}/tiffconf.h.cmakein"
	"${CMAKE_CURRENT_BINARY_DIR}/tiffconf.h" @ONLY)
configure_file(
	"${CMAKE_CURRENT_SOURCE_DIR}/tif_config.h.cmakein"
	"${CMAKE_CURRENT_BINARY_DIR}/tif_config.h" @ONLY)
include_directories(
	"${CMAKE_CURRENT_SOURCE_DIR}" "${CMAKE_CURRENT_BINARY_DIR}")
	
# Build port library
set(PORT libport)
add_subdirectory(port)

# The files in our project
set(HEADERS 
	t4.h tif_dir.h tif_predict.h uvcode.h tiffiop.h tif_fax3.h 
	tiffio.hxx		# Support C++ IO stream API
)
set(SOURCES
	tif_aux.c tif_close.c tif_codec.c tif_color.c tif_compress.c 
	tif_dir.c tif_dirinfo.c tif_dirread.c tif_dirwrite.c tif_dumpmode.c 
	tif_error.c tif_extension.c tif_fax3.c tif_fax3sm.c tif_flush.c 
	tif_getimage.c tif_jbig.c tif_jpeg.c tif_jpeg_12.c tif_luv.c 
	tif_lzma.c tif_lzw.c tif_next.c tif_ojpeg.c tif_open.c tif_packbits.c 
	tif_pixarlog.c tif_predict.c tif_print.c tif_read.c tif_strip.c 
	tif_swab.c tif_thunder.c tif_tile.c tif_version.c tif_warning.c 
	tif_write.c tif_zip.c tif_stream.cxx	# Support C++ IO stream API
)
set( LIBRARY_HEADERS tiff.h tiffio.h tiffconf.h tiffvers.h )
if(WIN32 AND NOT WINRT)
	list(APPEND SOURCES tif_win32.c)	# WIN32 IO API, For Windows system
else()
	list(APPEND SOURCES tif_unix.c)		# UNIX IO API, For UNIX-like system
endif()

# Set up the library
add_library(${TIFF} STATIC ${SOURCES} ${HEADERS} ${LIBRARY_HEADERS})
target_link_libraries(${TIFF} ${ZLIB} ${PORT})	# TIFF need zlib component

# The c properties on the target.
set_target_properties(${TIFF} PROPERTIES PREFIX "")
set_target_properties(${TIFF} PROPERTIES LIBRARY_OUTPUT_NAME ${TIFF})
if(MSVC)
	set_target_properties(${TIFF} PROPERTIES COMPILE_PDB_NAME ${TIFF})
endif()


###############################################################################
# program settings
###############################################################################
# Check out [+] .\libtiff\tiffiop.h
check_function_exists(snprintf HAVE_SNPRINTF)
if (HAVE_SNPRINTF)
	add_definitions(-DHAVE_SNPRINTF)
endif()
#add_executable(bmp2tiff tools/bmp2tiff.c ${LIBRARY_HEADERS})
#add_executable(tiffinfo tools/tiffinfo.c ${LIBRARY_HEADERS})
#add_executable(tiffdump tools/tiffdump.c ${LIBRARY_HEADERS})
#add_executable(fax2tiff tools/fax2tiff.c ${LIBRARY_HEADERS})
#add_executable(fax2ps tools/fax2ps.c ${LIBRARY_HEADERS})
#add_executable(gif2tiff tools/gif2tiff.c ${LIBRARY_HEADERS})
#add_executable(pal2rgb tools/pal2rgb.c ${LIBRARY_HEADERS})
#add_executable(ppm2tiff tools/ppm2tiff.c ${LIBRARY_HEADERS})
#add_executable(rgb2ycbcr tools/rgb2ycbcr.c ${LIBRARY_HEADERS})
#add_executable(thumbnail tools/thumbnail.c ${LIBRARY_HEADERS})
#add_executable(ras2tiff tools/ras2tiff.c ${LIBRARY_HEADERS})
#add_executable(raw2tiff tools/raw2tiff.c ${LIBRARY_HEADERS})
#add_executable(tiff2bw tools/tiff2bw.c ${LIBRARY_HEADERS})
#add_executable(tiff2rgba tools/tiff2rgba.c ${LIBRARY_HEADERS})
#add_executable(tiff2pdf tools/tiff2pdf.c ${LIBRARY_HEADERS})
#add_executable(tiff2ps tools/tiff2ps.c ${LIBRARY_HEADERS})
#add_executable(tiffcmp tools/tiffcmp.c ${LIBRARY_HEADERS})
#add_executable(tiffcp tools/tiffcp.c ${LIBRARY_HEADERS})
#add_executable(tiffcrop tools/tiffcrop.c ${LIBRARY_HEADERS})
#add_executable(tiffdither tools/tiffdither.c ${LIBRARY_HEADERS})
#add_executable(tiffmedian tools/tiffmedian.c ${LIBRARY_HEADERS})
#add_executable(tiffset tools/tiffset.c ${LIBRARY_HEADERS})
#add_executable(tiffsplit tools/tiffsplit.c ${LIBRARY_HEADERS})
#target_link_libraries(bmp2tiff ${TIFF})
#target_link_libraries(tiffinfo ${TIFF})
#target_link_libraries(tiffdump ${TIFF})
#target_link_libraries(fax2tiff ${TIFF})
#target_link_libraries(fax2ps ${TIFF})
#target_link_libraries(gif2tiff ${TIFF})
#target_link_libraries(pal2rgb ${TIFF})
#target_link_libraries(ppm2tiff ${TIFF})
#target_link_libraries(rgb2ycbcr ${TIFF})
#target_link_libraries(thumbnail ${TIFF})
#target_link_libraries(ras2tiff ${TIFF})
#target_link_libraries(raw2tiff ${TIFF})
#target_link_libraries(tiff2bw ${TIFF})
#target_link_libraries(tiff2rgba ${TIFF})
#target_link_libraries(tiff2pdf ${TIFF})
#target_link_libraries(tiff2ps ${TIFF})
#target_link_libraries(tiffcmp ${TIFF})
#target_link_libraries(tiffcp ${TIFF})
#target_link_libraries(tiffcrop ${TIFF})
#target_link_libraries(tiffdither ${TIFF})
#target_link_libraries(tiffmedian ${TIFF})
#target_link_libraries(tiffset ${TIFF})
#target_link_libraries(tiffsplit ${TIFF})
