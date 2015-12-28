# CMake build for libtiff
#
# Copyright © 2015 Open Microscopy Environment / University of Dundee
# Written by Roger Leigh <rleigh@codelibre.net>
#
# Permission to use, copy, modify, distribute, and sell this software and
# its documentation for any purpose is hereby granted without fee, provided
# that (i) the above copyright notices and this permission notice appear in
# all copies of the software and related documentation, and (ii) the names of
# Sam Leffler and Silicon Graphics may not be used in any advertising or
# publicity relating to the software without the specific, prior written
# permission of Sam Leffler and Silicon Graphics.
#
# THE SOFTWARE IS PROVIDED "AS-IS" AND WITHOUT WARRANTY OF ANY KIND,
# EXPRESS, IMPLIED OR OTHERWISE, INCLUDING WITHOUT LIMITATION, ANY
# WARRANTY OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
#
# IN NO EVENT SHALL SAM LEFFLER OR SILICON GRAPHICS BE LIABLE FOR
# ANY SPECIAL, INCIDENTAL, INDIRECT OR CONSEQUENTIAL DAMAGES OF ANY KIND,
# OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
# WHETHER OR NOT ADVISED OF THE POSSIBILITY OF DAMAGE, AND ON ANY THEORY OF
# LIABILITY, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE
# OF THIS SOFTWARE.

add_executable(bmp2tiff bmp2tiff.c)
target_link_libraries(bmp2tiff ${TIFF} ${ZLIB} ${PORT})

add_executable(fax2ps fax2ps.c)
target_link_libraries(fax2ps ${TIFF} ${ZLIB} ${PORT})

add_executable(fax2tiff fax2tiff.c)
target_link_libraries(fax2tiff ${TIFF} ${ZLIB} ${PORT})

add_executable(gif2tiff gif2tiff.c)
target_link_libraries(gif2tiff ${TIFF} ${ZLIB} ${PORT})

add_executable(pal2rgb pal2rgb.c)
target_link_libraries(pal2rgb ${TIFF} ${ZLIB} ${PORT})

add_executable(ppm2tiff ppm2tiff.c)
target_link_libraries(ppm2tiff ${TIFF} ${ZLIB} ${PORT})

add_executable(ras2tiff ras2tiff.c rasterfile.h)
target_link_libraries(ras2tiff ${TIFF} ${ZLIB} ${PORT})

add_executable(raw2tiff raw2tiff.c)
target_link_libraries(raw2tiff ${TIFF} ${ZLIB} ${PORT})

add_executable(rgb2ycbcr rgb2ycbcr.c)
target_link_libraries(rgb2ycbcr ${TIFF} ${ZLIB} ${PORT})

add_executable(thumbnail thumbnail.c)
target_link_libraries(thumbnail ${TIFF} ${ZLIB} ${PORT})

add_executable(tiff2bw tiff2bw.c)
target_link_libraries(tiff2bw ${TIFF} ${ZLIB} ${PORT})

add_executable(tiff2pdf tiff2pdf.c)
target_link_libraries(tiff2pdf ${TIFF} ${ZLIB} ${PORT})

add_executable(tiff2ps tiff2ps.c)
target_link_libraries(tiff2ps ${TIFF} ${ZLIB} ${PORT})

add_executable(tiff2rgba tiff2rgba.c)
target_link_libraries(tiff2rgba ${TIFF} ${ZLIB} ${PORT})

add_executable(tiffcmp tiffcmp.c)
target_link_libraries(tiffcmp ${TIFF} ${ZLIB} ${PORT})

add_executable(tiffcp tiffcp.c)
target_link_libraries(tiffcp ${TIFF} ${ZLIB} ${PORT})

add_executable(tiffcrop tiffcrop.c)
target_link_libraries(tiffcrop ${TIFF} ${ZLIB} ${PORT})

add_executable(tiffdither tiffdither.c)
target_link_libraries(tiffdither ${TIFF} ${ZLIB} ${PORT})

add_executable(tiffdump tiffdump.c)
target_link_libraries(tiffdump ${TIFF} ${ZLIB} ${PORT})

add_executable(tiffinfo tiffinfo.c)
target_link_libraries(tiffinfo ${TIFF} ${ZLIB} ${PORT})

add_executable(tiffmedian tiffmedian.c)
target_link_libraries(tiffmedian ${TIFF} ${ZLIB} ${PORT})

add_executable(tiffset tiffset.c)
target_link_libraries(tiffset ${TIFF} ${ZLIB} ${PORT})

add_executable(tiffsplit tiffsplit.c)
target_link_libraries(tiffsplit ${TIFF} ${ZLIB} ${PORT})

if(HAVE_OPENGL)
	if(OPENGL_INCLUDE_DIR)
		include_directories(${OPENGL_INCLUDE_DIR})
	endif()
	if(GLUT_INCLUDE_DIR)
		include_directories(${GLUT_INCLUDE_DIR})
	endif()
	add_executable(tiffgt tiffgt.c)
	target_link_libraries(tiffgt tiff ${GLUT_LIBRARIES} ${OPENGL_LIBRARIES})
endif()
