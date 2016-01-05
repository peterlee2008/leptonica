

###############################################################################
# library settings
###############################################################################

# The files in our project
set( HEADERS 
	heap.h imageio.h
	allheaders.h alltypes.h
	pix.h ptra.h queue.h
	jbclass.h list.h morph.h
	dewarp.h environ.h gplot.h
	array.h arrayaccess.h bbuffer.h
	readbarcode.h recog.h regutils.h
	bmf.h bmfdata.h bmp.h ccbord.h
	stack.h stringcode.h sudoku.h watershed.h
)
set( SOURCES
	adaptmap.c affine.c
	affinecompose.c arrayaccess.c
	bardecode.c baseline.c bbuffer.c
	bilateral.c bilinear.c binarize.c
	binexpand.c binreduce.c
	blend.c bmf.c bmpio.c bmpiostub.c
	bootnumgen.c boxbasic.c boxfunc1.c boxfunc2.c
	boxfunc3.c boxfunc4.c
	bytearray.c ccbord.c ccthin.c classapp.c
	colorcontent.c coloring.c
	colormap.c colormorph.c
	colorquant1.c colorquant2.c
	colorseg.c colorspace.c
	compare.c conncomp.c convertfiles.c
	convolve.c correlscore.c
	dewarp1.c dewarp2.c dewarp3.c dewarp4.c dnabasic.c
	dwacomb.2.c dwacomblow.2.c
	edge.c encoding.c enhance.c
	fhmtauto.c fhmtgen.1.c fhmtgenlow.1.c
	finditalic.c flipdetect.c fliphmtgen.c
	fmorphauto.c fmorphgen.1.c fmorphgenlow.1.c
	fpix1.c fpix2.c
	gifio.c gifiostub.c gplot.c graphics.c
	graymorph.c grayquant.c grayquantlow.c
	heap.c jbclass.c
	jp2kheader.c jp2kheaderstub.c jp2kio.c jp2kiostub.c
	jpegio.c jpegiostub.c kernel.c
	libversions.c list.c maze.c
	morph.c morphapp.c morphdwa.c morphseq.c
	numabasic.c numafunc1.c numafunc2.c
	pageseg.c paintcmap.c
	parseprotos.c partition.c
	pdfio1.c pdfio1stub.c pdfio2.c pdfio2stub.c
	pix1.c pix2.c pix3.c pix4.c pix5.c
	pixabasic.c pixacc.c
	pixafunc1.c pixafunc2.c
	pixalloc.c pixarith.c
	pixcomp.c pixconv.c pixlabel.c pixtiling.c
	pngio.c pngiostub.c
	pnmio.c pnmiostub.c
	projective.c
	psio1.c psio1stub.c psio2.c psio2stub.c
	ptabasic.c ptafunc1.c
	ptra.c quadtree.c queue.c rank.c
	readbarcode.c readfile.c
	recogbasic.c recogdid.c recogident.c recogtrain.c
	regutils.c
	rop.c ropiplow.c roplow.c
	rotate.c rotateam.c rotateamlow.c
	rotateorth.c rotateshear.c
	runlength.c sarray.c
	scale.c scalelow.c
	seedfill.c seedfilllow.c
	sel1.c sel2.c selgen.c
	shear.c skew.c spixio.c
	stack.c stringcode.c sudoku.c
	textops.c tiffio.c tiffiostub.c
	utils.c viewfiles.c
	warper.c watershed.c
	webpio.c webpiostub.c writefile.c
	zlibmem.c zlibmemstub.c
)

# Default is to Compile a SHARED library
if( NOT LEPTONICA_LIBRARIE_TYPE )
	set(LEPTONICA_LIBRARIE_TYPE "SHARED")
endif()
add_library(${LEPTONICA} ${LEPTONICA_LIBRARIE_TYPE} 
	${SOURCES} ${HEADERS} ${LIBRARY_HEADERS})
target_link_libraries(${LEPTONICA} ${ZLIB} ${PNG} ${TIFF} ${JPEG})
if( LEPTONICA_LIBRARIE_TYPE STREQUAL "SHARED" )
	# Export all interfaces if we compile a shared library
	set_target_properties(
		${LEPTONICA} PROPERTIES DEFINE_SYMBOL "LIBLEPT_EXPORTS")
	# CMake 3.4.0 --> The follow doesn't work on MSVC 2010
	#target_compile_definitions(${LEPTONICA} INTERFACE -DLIBLEPT_EXPORTS)
endif()

# Set properties on the target.
set_target_properties(${LEPTONICA} PROPERTIES PREFIX "")
set_target_properties(${LEPTONICA} PROPERTIES LIBRARY_OUTPUT_NAME ${LEPTONICA})
if(MSVC)
	set_target_properties(${LEPTONICA} PROPERTIES COMPILE_PDB_NAME ${LEPTONICA})
endif()

