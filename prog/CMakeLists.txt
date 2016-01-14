

###############################################################################
# program settings
###############################################################################

add_executable(adaptmap_dark adaptmap_dark.c ${LIBRARY_HEADERS})
target_link_libraries(adaptmap_dark ${LEPTONICA})
add_test(NAME adaptmap_dark COMMAND adaptmap_dark)
if ( WIN32 )
    target_compile_definitions(adaptmap_dark PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(adaptmap_dark PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(adaptmap_dark PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(adaptmaptest adaptmaptest.c ${LIBRARY_HEADERS})
target_link_libraries(adaptmaptest ${LEPTONICA})
add_test(NAME adaptmaptest COMMAND adaptmaptest "map1.jpg"
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(adaptmaptest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(adaptmaptest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(adaptmaptest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(adaptnorm_reg adaptnorm_reg.c ${LIBRARY_HEADERS})
target_link_libraries(adaptnorm_reg ${LEPTONICA})
add_test(NAME adaptnorm_reg COMMAND adaptnorm_reg 
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(adaptnorm_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(adaptnorm_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(adaptnorm_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(affine_reg affine_reg.c ${LIBRARY_HEADERS})
target_link_libraries(affine_reg ${LEPTONICA})
add_test(NAME affine_reg COMMAND affine_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(affine_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(affine_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(affine_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(alphaops_reg alphaops_reg.c ${LIBRARY_HEADERS})
target_link_libraries(alphaops_reg ${LEPTONICA})
add_test(NAME alphaops-gen COMMAND alphaops_reg "generate" 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME alphaops-cmp COMMAND alphaops_reg  "compare" 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(alphaops_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(alphaops_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(alphaops_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(alphaxform_reg alphaxform_reg.c ${LIBRARY_HEADERS})
target_link_libraries(alphaxform_reg ${LEPTONICA})
add_test(NAME alphaxform-gen COMMAND alphaxform_reg "generate" 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME alphaxform-cmp COMMAND alphaxform_reg  "compare" 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(alphaxform_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(alphaxform_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(alphaxform_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(arabic_lines arabic_lines.c ${LIBRARY_HEADERS})
target_link_libraries(arabic_lines ${LEPTONICA})
add_test(NAME arabic_lines COMMAND arabic_lines
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(fax2ps PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(fax2ps PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(fax2ps PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(arithtest arithtest.c ${LIBRARY_HEADERS})
target_link_libraries(arithtest ${LEPTONICA})
add_test(NAME arithtest COMMAND arithtest "blendtext.tif" 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(fax2ps PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(fax2ps PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(fax2ps PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(autogentest1 autogentest1.c ${LIBRARY_HEADERS})
target_link_libraries(autogentest1 ${LEPTONICA})
add_test(NAME autogentest1 COMMAND autogentest1  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(fax2ps PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(fax2ps PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(fax2ps PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(barcodetest barcodetest.c ${LIBRARY_HEADERS})
target_link_libraries(barcodetest ${LEPTONICA})
add_test(NAME barcodetest COMMAND barcodetest "blendtext.tif" 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(barcodetest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(barcodetest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(barcodetest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(baselinetest baselinetest.c ${LIBRARY_HEADERS})
target_link_libraries(baselinetest ${LEPTONICA})
add_test(NAME baselinetest COMMAND baselinetest 
		"blendtext.tif" "blendout.tif" 
		WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(baselinetest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(baselinetest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(baselinetest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(bilateral1_reg bilateral1_reg.c ${LIBRARY_HEADERS})
target_link_libraries(bilateral1_reg ${LEPTONICA})
add_test(NAME bilateral1-gen COMMAND bilateral1_reg "generate" 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME bilateral1-cmp COMMAND bilateral1_reg  "compare" 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(bilateral1_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(bilateral1_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(bilateral1_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(bilateral2_reg bilateral2_reg.c ${LIBRARY_HEADERS})
target_link_libraries(bilateral2_reg ${LEPTONICA})
add_test(NAME bilateral2-gen COMMAND bilateral2_reg "generate" 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME bilateral2-cmp COMMAND bilateral2_reg  "compare" 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(bilateral2_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(bilateral2_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(bilateral2_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(bilinear_reg bilinear_reg.c ${LIBRARY_HEADERS})
target_link_libraries(bilinear_reg ${LEPTONICA})
add_test(NAME bilinear_reg COMMAND bilinear_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(bilinear_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(bilinear_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(bilinear_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(binarize_reg binarize_reg.c ${LIBRARY_HEADERS})
target_link_libraries(binarize_reg ${LEPTONICA})
add_test(NAME binarize-gen COMMAND binarize_reg "generate" 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME binarize-cmp COMMAND binarize_reg  "compare" 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(binarize_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(binarize_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(binarize_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(binarize_set binarize_set.c ${LIBRARY_HEADERS})
target_link_libraries(binarize_set ${LEPTONICA})
add_test(NAME binarize_set COMMAND binarize_set "blendtext.tif" 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(binarize_set PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(binarize_set PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(binarize_set PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(binarizefiles binarizefiles.c ${LIBRARY_HEADERS})
target_link_libraries(binarizefiles ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(binarizefiles PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(binarizefiles PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(binarizefiles PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(bincompare bincompare.c ${LIBRARY_HEADERS})
target_link_libraries(bincompare ${LEPTONICA})
add_test(NAME bincompare COMMAND bincompare  
		"blendtext.tif" "blendtext.tif" "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(bincompare PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(bincompare PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(bincompare PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(binmorph1_reg binmorph1_reg.c ${LIBRARY_HEADERS})
target_link_libraries(binmorph1_reg ${LEPTONICA})
add_test(NAME binmorph1_reg COMMAND binmorph1_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(binmorph1_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(binmorph1_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(binmorph1_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(binmorph2_reg binmorph2_reg.c ${LIBRARY_HEADERS})
target_link_libraries(binmorph2_reg ${LEPTONICA})
add_test(NAME binmorph2_reg COMMAND binmorph2_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(binmorph2_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(binmorph2_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(binmorph2_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(binmorph3_reg binmorph3_reg.c ${LIBRARY_HEADERS})
target_link_libraries(binmorph3_reg ${LEPTONICA})
add_test(NAME binmorph3_reg COMMAND binmorph3_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(binmorph3_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(binmorph3_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(binmorph3_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(binmorph4_reg binmorph4_reg.c ${LIBRARY_HEADERS})
target_link_libraries(binmorph4_reg ${LEPTONICA})
add_test(NAME binmorph4_reg COMMAND binmorph4_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(binmorph4_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(binmorph4_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(binmorph4_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(binmorph5_reg binmorph5_reg.c ${LIBRARY_HEADERS})
target_link_libraries(binmorph5_reg ${LEPTONICA})
add_test(NAME binmorph5_reg COMMAND binmorph5_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(binmorph5_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(binmorph5_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(binmorph5_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(blackwhite_reg blackwhite_reg.c ${LIBRARY_HEADERS})
target_link_libraries(blackwhite_reg ${LEPTONICA})
add_test(NAME blackwhite-gen COMMAND blackwhite_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME blackwhite-cmp COMMAND blackwhite_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(blackwhite_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(blackwhite_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(blackwhite_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(blend1_reg blend1_reg.c ${LIBRARY_HEADERS})
target_link_libraries(blend1_reg ${LEPTONICA})
add_test(NAME blend1_reg COMMAND blend1_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(blend1_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(blend1_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(blend1_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(blend2_reg blend2_reg.c ${LIBRARY_HEADERS})
target_link_libraries(blend2_reg ${LEPTONICA})
add_test(NAME blend2_reg COMMAND blend2_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(blend2_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(blend2_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(blend2_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(blend3_reg blend3_reg.c ${LIBRARY_HEADERS})
target_link_libraries(blend3_reg ${LEPTONICA})
add_test(NAME blend3-gen COMMAND blend3_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME blend3-cmp COMMAND blend3_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(blend3_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(blend3_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(blend3_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(blend4_reg blend4_reg.c ${LIBRARY_HEADERS})
target_link_libraries(blend4_reg ${LEPTONICA})
add_test(NAME blend4-gen COMMAND blend4_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME blend4-cmp COMMAND blend4_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(blend4_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(blend4_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(blend4_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(blendcmaptest blendcmaptest.c ${LIBRARY_HEADERS})
target_link_libraries(blendcmaptest ${LEPTONICA})
add_test(NAME blendcmaptest COMMAND blendcmaptest  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(blendcmaptest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(blendcmaptest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(blendcmaptest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(boxa1_reg boxa1_reg.c ${LIBRARY_HEADERS})
target_link_libraries(boxa1_reg ${LEPTONICA})
add_test(NAME boxa1_reg COMMAND boxa1_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(boxa1_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(boxa1_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(boxa1_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(buffertest buffertest.c ${LIBRARY_HEADERS})
target_link_libraries(buffertest ${LEPTONICA})
add_test(NAME buffertest COMMAND buffertest 
		"blendtext.tif" "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(buffertest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(buffertest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(buffertest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(byteatest byteatest.c ${LIBRARY_HEADERS})
target_link_libraries(byteatest ${LEPTONICA})
add_test(NAME byteatest COMMAND byteatest  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(byteatest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(byteatest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(byteatest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(ccbordtest ccbordtest.c ${LIBRARY_HEADERS})
target_link_libraries(ccbordtest ${LEPTONICA})
add_test(NAME ccbordtest COMMAND ccbordtest "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(ccbordtest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(ccbordtest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(ccbordtest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(cctest1 cctest1.c ${LIBRARY_HEADERS})
target_link_libraries(cctest1 ${LEPTONICA})
add_test(NAME cctest1 COMMAND cctest1 "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(cctest1 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(cctest1 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(cctest1 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(ccthin1_reg ccthin1_reg.c ${LIBRARY_HEADERS})
target_link_libraries(ccthin1_reg ${LEPTONICA})
add_test(NAME ccthin1_reg COMMAND ccthin1_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(ccthin1_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(ccthin1_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(ccthin1_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(ccthin2_reg ccthin2_reg.c ${LIBRARY_HEADERS})
target_link_libraries(ccthin2_reg ${LEPTONICA})
add_test(NAME ccthin2_reg COMMAND ccthin2_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(ccthin2_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(ccthin2_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(ccthin2_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(cleanpdf cleanpdf.c ${LIBRARY_HEADERS})
target_link_libraries(cleanpdf ${LEPTONICA})
target_compile_definitions(cleanpdf PRIVATE MINGW_HAS_SECURE_API)
if ( WIN32 )
    target_compile_definitions(cleanpdf PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(cleanpdf PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(cleanpdf PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(cmapquant_reg cmapquant_reg.c ${LIBRARY_HEADERS})
target_link_libraries(cmapquant_reg ${LEPTONICA})
add_test(NAME cmapquant_reg COMMAND cmapquant_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(cmapquant_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(cmapquant_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(cmapquant_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(colorcontent_reg colorcontent_reg.c ${LIBRARY_HEADERS})
target_link_libraries(colorcontent_reg ${LEPTONICA})
add_test(NAME colorcontent-gen COMMAND colorcontent_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME colorcontent-cmp COMMAND colorcontent_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(colorcontent_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(colorcontent_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(colorcontent_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(coloring_reg coloring_reg.c ${LIBRARY_HEADERS})
target_link_libraries(coloring_reg ${LEPTONICA})
add_test(NAME coloring-gen COMMAND coloring_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME coloring-cmp COMMAND coloring_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(coloring_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(coloring_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(coloring_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(colorize_reg colorize_reg.c ${LIBRARY_HEADERS})
target_link_libraries(colorize_reg ${LEPTONICA})
add_test(NAME colorize-gen COMMAND colorize_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME colorize-cmp COMMAND colorize_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(colorize_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(colorize_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(colorize_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(colormask_reg colormask_reg.c ${LIBRARY_HEADERS})
target_link_libraries(colormask_reg ${LEPTONICA})
add_test(NAME colormask-gen COMMAND colormask_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME colormask-cmp COMMAND colormask_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(colormask_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(colormask_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(colormask_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(colormorphtest colormorphtest.c ${LIBRARY_HEADERS})
target_link_libraries(colormorphtest ${LEPTONICA})
add_test(NAME colormorphtest COMMAND colormorphtest "test8.jpg" 10
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(colormorphtest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(colormorphtest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(colormorphtest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(colorquant_reg colorquant_reg.c ${LIBRARY_HEADERS})
target_link_libraries(colorquant_reg ${LEPTONICA})
add_test(NAME colorquant-gen COMMAND colorquant_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME colorquant-cmp COMMAND colorquant_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(colorquant_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(colorquant_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(colorquant_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(colorseg_reg colorseg_reg.c ${LIBRARY_HEADERS})
target_link_libraries(colorseg_reg ${LEPTONICA})
add_test(NAME colorseg_reg COMMAND colorseg_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(colorseg_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(colorseg_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(colorseg_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(colorsegtest colorsegtest.c ${LIBRARY_HEADERS})
target_link_libraries(colorsegtest ${LEPTONICA})
add_test(NAME colorsegtest COMMAND colorsegtest  
		"blendtext.tif" "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(colorsegtest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(colorsegtest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(colorsegtest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(colorspace_reg colorspace_reg.c ${LIBRARY_HEADERS})
target_link_libraries(colorspace_reg ${LEPTONICA})
add_test(NAME colorspace-gen COMMAND colorspace_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME colorspace-cmp COMMAND colorspace_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(colorspace_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(colorspace_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(colorspace_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(colorspacetest colorspacetest.c ${LIBRARY_HEADERS})
target_link_libraries(colorspacetest ${LEPTONICA})
add_test(NAME colorspacetest COMMAND colorspacetest "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(colorspacetest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(colorspacetest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(colorspacetest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(compare_reg compare_reg.c ${LIBRARY_HEADERS})
target_link_libraries(compare_reg ${LEPTONICA})
add_test(NAME compare-gen COMMAND compare_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME compare-cmp COMMAND compare_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(compare_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(compare_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(compare_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(comparepages comparepages.c ${LIBRARY_HEADERS})
target_link_libraries(comparepages ${LEPTONICA})
add_test(NAME comparepages COMMAND comparepages  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(comparepages PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(comparepages PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(comparepages PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(comparetest comparetest.c ${LIBRARY_HEADERS})
target_link_libraries(comparetest ${LEPTONICA})
add_test(NAME comparetest COMMAND comparetest  
		"blendtext.tif" "blendtext.tif" 1 "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(comparetest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(comparetest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(comparetest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(compfilter_reg compfilter_reg.c ${LIBRARY_HEADERS})
target_link_libraries(compfilter_reg ${LEPTONICA})
add_test(NAME compfilter_reg COMMAND compfilter_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(compfilter_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(compfilter_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(compfilter_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(concatpdf concatpdf.c ${LIBRARY_HEADERS})
target_link_libraries(concatpdf ${LEPTONICA})
add_test(NAME concatpdf COMMAND concatpdf "${CMAKE_CURRENT_SOURCE_DIR}"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(concatpdf PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(concatpdf PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(concatpdf PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(conncomp_reg conncomp_reg.c ${LIBRARY_HEADERS})
target_link_libraries(conncomp_reg ${LEPTONICA})
add_test(NAME conncomp_reg COMMAND conncomp_reg 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(conncomp_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(conncomp_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(conncomp_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(contrasttest contrasttest.c ${LIBRARY_HEADERS})
target_link_libraries(contrasttest ${LEPTONICA})
add_test(NAME contrasttest COMMAND contrasttest  
        "blendtext.tif" 1 "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(contrasttest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(contrasttest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(contrasttest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(conversion_reg conversion_reg.c ${LIBRARY_HEADERS})
target_link_libraries(conversion_reg ${LEPTONICA})
add_test(NAME conversion_reg COMMAND conversion_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(conversion_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(conversion_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(conversion_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(convertfilestopdf convertfilestopdf.c ${LIBRARY_HEADERS})
target_link_libraries(convertfilestopdf ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(convertfilestopdf PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(convertfilestopdf PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(convertfilestopdf PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(convertfilestops convertfilestops.c ${LIBRARY_HEADERS})
target_link_libraries(convertfilestops ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(convertfilestops PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(convertfilestops PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(convertfilestops PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(convertformat convertformat.c ${LIBRARY_HEADERS})
target_link_libraries(convertformat ${LEPTONICA})
add_test(NAME convertformat COMMAND convertformat 
        "blendtext.tif" "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(convertformat PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(convertformat PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(convertformat PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(convertsegfilestopdf convertsegfilestopdf.c ${LIBRARY_HEADERS})
target_link_libraries(convertsegfilestopdf ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(convertsegfilestopdf PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(convertsegfilestopdf PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(convertsegfilestopdf PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(convertsegfilestops convertsegfilestops.c ${LIBRARY_HEADERS})
target_link_libraries(convertsegfilestops ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(convertsegfilestops PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(convertsegfilestops PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(convertsegfilestops PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(converttogray converttogray.c ${LIBRARY_HEADERS})
target_link_libraries(converttogray ${LEPTONICA})
add_test(NAME converttogray COMMAND converttogray 
        "blendtext.tif" "blendout.tif"
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(converttogray PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(converttogray PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(converttogray PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(converttopdf converttopdf.c ${LIBRARY_HEADERS})
target_link_libraries(converttopdf ${LEPTONICA})
add_test(NAME converttopdf COMMAND converttopdf  
        "recog/bootnums" "allfiles"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(converttopdf PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(converttopdf PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(converttopdf PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(converttops converttops.c ${LIBRARY_HEADERS})
target_link_libraries(converttops ${LEPTONICA})
add_test(NAME converttops COMMAND converttops  
        "blendtext.tif" "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(converttops PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(converttops PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(converttops PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(convolve_reg convolve_reg.c ${LIBRARY_HEADERS})
target_link_libraries(convolve_reg ${LEPTONICA})
add_test(NAME convolve-gen COMMAND convolve_reg "generate"
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME convolve-cmp COMMAND convolve_reg  "compare"
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(convolve_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(convolve_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(convolve_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(convolvetest convolvetest.c ${LIBRARY_HEADERS})
target_link_libraries(convolvetest ${LEPTONICA})
add_test(NAME convolvetest COMMAND convolvetest  
        "blendtext.tif" 1 1 "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(convolvetest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(convolvetest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(convolvetest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(cornertest cornertest.c ${LIBRARY_HEADERS})
target_link_libraries(cornertest ${LEPTONICA})
add_test(NAME cornertest COMMAND cornertest  
        "blendtext.tif" "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(cornertest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(cornertest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(cornertest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(croptest croptest.c ${LIBRARY_HEADERS})
target_link_libraries(croptest ${LEPTONICA})
add_test(NAME croptest COMMAND croptest  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(croptest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(croptest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(croptest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(croptext croptext.c ${LIBRARY_HEADERS})
target_link_libraries(croptext ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(croptext PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(croptext PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(croptext PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(dewarp_reg dewarp_reg.c ${LIBRARY_HEADERS})
target_link_libraries(dewarp_reg ${LEPTONICA})
add_test(NAME dewarp-gen COMMAND dewarp_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME dewarp-cmp COMMAND dewarp_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(dewarp_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(dewarp_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(dewarp_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(dewarprules dewarprules.c ${LIBRARY_HEADERS})
target_link_libraries(dewarprules ${LEPTONICA})
add_test(NAME dewarprules COMMAND dewarprules 1 1
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(dewarprules PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(dewarprules PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(dewarprules PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(dewarptest1 dewarptest1.c ${LIBRARY_HEADERS})
target_link_libraries(dewarptest1 ${LEPTONICA})
add_test(NAME dewarptest1 COMMAND dewarptest1  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(dewarptest1 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(dewarptest1 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(dewarptest1 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(dewarptest2 dewarptest2.c ${LIBRARY_HEADERS})
target_link_libraries(dewarptest2 ${LEPTONICA})
add_test(NAME dewarptest2 COMMAND dewarptest2 1
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(dewarptest2 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(dewarptest2 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(dewarptest2 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(dewarptest3 dewarptest3.c ${LIBRARY_HEADERS})
target_link_libraries(dewarptest3 ${LEPTONICA})
add_test(NAME dewarptest3 COMMAND dewarptest3  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(dewarptest3 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(dewarptest3 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(dewarptest3 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(dewarptest4 dewarptest4.c ${LIBRARY_HEADERS})
target_link_libraries(dewarptest4 ${LEPTONICA})
add_test(NAME dewarptest4 COMMAND dewarptest4  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(dewarptest4 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(dewarptest4 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(dewarptest4 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(dewarptest5 dewarptest5.c ${LIBRARY_HEADERS})
target_link_libraries(dewarptest5 ${LEPTONICA})
add_test(NAME dewarptest5 COMMAND dewarptest5  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(dewarptest5 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(dewarptest5 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(dewarptest5 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(digitprep1 digitprep1.c ${LIBRARY_HEADERS})
target_link_libraries(digitprep1 ${LEPTONICA})
add_test(NAME digitprep1 COMMAND digitprep1  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(digitprep1 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(digitprep1 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(digitprep1 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(displayboxa displayboxa.c ${LIBRARY_HEADERS})
target_link_libraries(displayboxa ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(displayboxa PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(displayboxa PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(displayboxa PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(displaypix displaypix.c ${LIBRARY_HEADERS})
target_link_libraries(displaypix ${LEPTONICA})
add_test(NAME displaypix COMMAND displaypix "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(displaypix PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(displaypix PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(displaypix PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(displaypixa displaypixa.c ${LIBRARY_HEADERS})
target_link_libraries(displaypixa ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(displaypixa PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(displaypixa PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(displaypixa PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(distance_reg distance_reg.c ${LIBRARY_HEADERS})
target_link_libraries(distance_reg ${LEPTONICA})
add_test(NAME distance-gen COMMAND distance_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME distance-cmp COMMAND distance_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(distance_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(distance_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(distance_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(dithertest dithertest.c ${LIBRARY_HEADERS})
target_link_libraries(dithertest ${LEPTONICA})
add_test(NAME dithertest COMMAND dithertest 
        "test8.jpg" "${CMAKE_CURRENT_BINARY_DIR}/testout.jpg"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(dithertest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(dithertest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(dithertest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(dna_reg dna_reg.c ${LIBRARY_HEADERS})
target_link_libraries(dna_reg ${LEPTONICA})
add_test(NAME dna-gen COMMAND dna_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME dna-cmp COMMAND dna_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(dna_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(dna_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(dna_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(dwalineargen dwalineargen.c ${LIBRARY_HEADERS})
target_link_libraries(dwalineargen ${LEPTONICA})
add_test(NAME dwalineargen COMMAND dwalineargen  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(dwalineargen PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(dwalineargen PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(dwalineargen PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(edgetest edgetest.c ${LIBRARY_HEADERS})
target_link_libraries(edgetest ${LEPTONICA})
add_test(NAME edgetest COMMAND edgetest 
        "test8.jpg" "${CMAKE_CURRENT_BINARY_DIR}/testout.jpg"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(edgetest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(edgetest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(edgetest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(enhance_reg enhance_reg.c ${LIBRARY_HEADERS})
target_link_libraries(enhance_reg ${LEPTONICA})
add_test(NAME enhance-gen COMMAND enhance_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME enhance-cmp COMMAND enhance_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(enhance_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(enhance_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(enhance_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(equal_reg equal_reg.c ${LIBRARY_HEADERS})
target_link_libraries(equal_reg ${LEPTONICA})
add_test(NAME equal_reg COMMAND equal_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(equal_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(equal_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(equal_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(expand_reg expand_reg.c ${LIBRARY_HEADERS})
target_link_libraries(expand_reg ${LEPTONICA})
add_test(NAME expand_reg COMMAND expand_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(expand_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(expand_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(expand_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(extrema_reg extrema_reg.c ${LIBRARY_HEADERS})
target_link_libraries(extrema_reg ${LEPTONICA})
add_test(NAME extrema-gen COMMAND extrema_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME extrema-cmp COMMAND extrema_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(extrema_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(extrema_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(extrema_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(falsecolortest falsecolortest.c ${LIBRARY_HEADERS})
target_link_libraries(falsecolortest ${LEPTONICA})
add_test(NAME falsecolortest COMMAND falsecolortest 1
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(falsecolortest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(falsecolortest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(falsecolortest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(fcombautogen fcombautogen.c ${LIBRARY_HEADERS})
target_link_libraries(fcombautogen ${LEPTONICA})
add_test(NAME fcombautogen COMMAND fcombautogen  1
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(fcombautogen PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(fcombautogen PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(fcombautogen PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(fhmtauto_reg fhmtauto_reg.c ${LIBRARY_HEADERS})
target_link_libraries(fhmtauto_reg ${LEPTONICA})
add_test(NAME fhmtauto_reg COMMAND fhmtauto_reg "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(fhmtauto_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(fhmtauto_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(fhmtauto_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(fhmtautogen fhmtautogen.c ${LIBRARY_HEADERS})
target_link_libraries(fhmtautogen ${LEPTONICA})
add_test(NAME fhmtautogen COMMAND fhmtautogen 1
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(fhmtautogen PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(fhmtautogen PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(fhmtautogen PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(fileinfo fileinfo.c ${LIBRARY_HEADERS})
target_link_libraries(fileinfo ${LEPTONICA})
add_test(NAME fileinfo COMMAND fileinfo "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(fileinfo PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(fileinfo PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(fileinfo PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(files_reg files_reg.c ${LIBRARY_HEADERS})
target_link_libraries(files_reg ${LEPTONICA})
add_test(NAME files_reg COMMAND files_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(files_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(files_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(files_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(findcorners_reg findcorners_reg.c ${LIBRARY_HEADERS})
target_link_libraries(findcorners_reg ${LEPTONICA})
add_test(NAME findcorners-gen COMMAND findcorners_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME findcorners-cmp COMMAND findcorners_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(findcorners_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(findcorners_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(findcorners_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(findpattern1 findpattern1.c ${LIBRARY_HEADERS})
target_link_libraries(findpattern1 ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(findpattern1 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(findpattern1 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(findpattern1 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(findpattern2 findpattern2.c ${LIBRARY_HEADERS})
target_link_libraries(findpattern2 ${LEPTONICA})
add_test(NAME findpattern2 COMMAND findpattern2  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(findpattern2 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(findpattern2 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(findpattern2 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(findpattern3 findpattern3.c ${LIBRARY_HEADERS})
target_link_libraries(findpattern3 ${LEPTONICA})
add_test(NAME findpattern3 COMMAND findpattern3  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(findpattern3 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(findpattern3 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(findpattern3 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(findpattern_reg findpattern_reg.c ${LIBRARY_HEADERS})
target_link_libraries(findpattern_reg ${LEPTONICA})
add_test(NAME findpattern-gen COMMAND findpattern_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME findpattern-cmp COMMAND findpattern_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(findpattern_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(findpattern_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(findpattern_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(flipdetect_reg flipdetect_reg.c ${LIBRARY_HEADERS})
target_link_libraries(flipdetect_reg ${LEPTONICA})
add_test(NAME flipdetect_reg COMMAND flipdetect_reg "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(flipdetect_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(flipdetect_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(flipdetect_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(flipselgen flipselgen.c ${LIBRARY_HEADERS})
target_link_libraries(flipselgen ${LEPTONICA})
add_test(NAME flipselgen COMMAND flipselgen  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(flipselgen PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(flipselgen PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(flipselgen PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(fmorphauto_reg fmorphauto_reg.c ${LIBRARY_HEADERS})
target_link_libraries(fmorphauto_reg ${LEPTONICA})
add_test(NAME fmorphauto_reg COMMAND fmorphauto_reg "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(fmorphauto_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(fmorphauto_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(fmorphauto_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(fmorphautogen fmorphautogen.c ${LIBRARY_HEADERS})
target_link_libraries(fmorphautogen ${LEPTONICA})
add_test(NAME fmorphautogen COMMAND fmorphautogen 1
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(fmorphautogen PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(fmorphautogen PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(fmorphautogen PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(fpix1_reg fpix1_reg.c ${LIBRARY_HEADERS})
target_link_libraries(fpix1_reg ${LEPTONICA})
add_test(NAME fpix1-gen COMMAND fpix1_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME fpix1-cmp COMMAND fpix1_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(fpix1_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(fpix1_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(fpix1_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(fpix2_reg fpix2_reg.c ${LIBRARY_HEADERS})
target_link_libraries(fpix2_reg ${LEPTONICA})
add_test(NAME fpix2_reg COMMAND fpix2_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(fpix2_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(fpix2_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(fpix2_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(fpixcontours fpixcontours.c ${LIBRARY_HEADERS})
target_link_libraries(fpixcontours ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(fpixcontours PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(fpixcontours PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(fpixcontours PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(gammatest gammatest.c ${LIBRARY_HEADERS})
target_link_libraries(gammatest ${LEPTONICA})
add_test(NAME gammatest COMMAND gammatest
        "blendtext.tif" 1 "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(gammatest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(gammatest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(gammatest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(genfonts_reg genfonts_reg.c ${LIBRARY_HEADERS})
target_link_libraries(genfonts_reg ${LEPTONICA})
add_test(NAME genfonts-gen COMMAND genfonts_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME genfonts-cmp COMMAND genfonts_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(genfonts_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(genfonts_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(genfonts_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(gifio_leaktest gifio_leaktest.c ${LIBRARY_HEADERS})
target_link_libraries(gifio_leaktest ${LEPTONICA})
add_test(NAME gifio_leaktest COMMAND gifio_leaktest  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(gifio_leaktest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(gifio_leaktest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(gifio_leaktest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(gifio_reg gifio_reg.c ${LIBRARY_HEADERS})
target_link_libraries(gifio_reg ${LEPTONICA})
add_test(NAME gifio_reg COMMAND gifio_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(gifio_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(gifio_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(gifio_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(graphicstest graphicstest.c ${LIBRARY_HEADERS})
target_link_libraries(graphicstest ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(graphicstest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(graphicstest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(graphicstest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(grayfill_reg grayfill_reg.c ${LIBRARY_HEADERS})
target_link_libraries(grayfill_reg ${LEPTONICA})
add_test(NAME grayfill_reg COMMAND grayfill_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(grayfill_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(grayfill_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(grayfill_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(graymorph1_reg graymorph1_reg.c ${LIBRARY_HEADERS})
target_link_libraries(graymorph1_reg ${LEPTONICA})
add_test(NAME graymorph1_reg COMMAND graymorph1_reg "test8.jpg"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(graymorph1_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(graymorph1_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(graymorph1_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(graymorph2_reg graymorph2_reg.c ${LIBRARY_HEADERS})
target_link_libraries(graymorph2_reg ${LEPTONICA})
add_test(NAME graymorph2_reg COMMAND graymorph2_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(graymorph2_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(graymorph2_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(graymorph2_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(graymorphtest graymorphtest.c ${LIBRARY_HEADERS})
target_link_libraries(graymorphtest ${LEPTONICA})
add_test(NAME graymorphtest COMMAND graymorphtest 
        "test8.jpg" 10 10 "${CMAKE_CURRENT_BINARY_DIR}/testout.jpg"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(graymorphtest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(graymorphtest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(graymorphtest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(grayquant_reg grayquant_reg.c ${LIBRARY_HEADERS})
target_link_libraries(grayquant_reg ${LEPTONICA})
add_test(NAME grayquant_reg COMMAND grayquant_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(grayquant_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(grayquant_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(grayquant_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(hardlight_reg hardlight_reg.c ${LIBRARY_HEADERS})
target_link_libraries(hardlight_reg ${LEPTONICA})
add_test(NAME hardlight-gen COMMAND hardlight_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME hardlight-cmp COMMAND hardlight_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(hardlight_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(hardlight_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(hardlight_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(heap_reg heap_reg.c ${LIBRARY_HEADERS})
target_link_libraries(heap_reg ${LEPTONICA})
add_test(NAME heap_reg COMMAND heap_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(heap_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(heap_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(heap_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(histotest histotest.c ${LIBRARY_HEADERS})
target_link_libraries(histotest ${LEPTONICA})
add_test(NAME histotest COMMAND histotest "test8.jpg" 1
		WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(histotest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(histotest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(histotest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(insert_reg insert_reg.c ${LIBRARY_HEADERS})
target_link_libraries(insert_reg ${LEPTONICA})
add_test(NAME insert-gen COMMAND insert_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME insert-cmp COMMAND insert_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(insert_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(insert_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(insert_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(ioformats_reg ioformats_reg.c ${LIBRARY_HEADERS})
target_link_libraries(ioformats_reg ${LEPTONICA})
add_test(NAME ioformats_reg COMMAND ioformats_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(ioformats_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(ioformats_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(ioformats_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(iotest iotest.c ${LIBRARY_HEADERS})
target_link_libraries(iotest ${LEPTONICA})
add_test(NAME iotest COMMAND iotest  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(iotest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(iotest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(iotest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(italictest italictest.c ${LIBRARY_HEADERS})
target_link_libraries(italictest ${LEPTONICA})
add_test(NAME italictest COMMAND italictest  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(italictest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(italictest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(italictest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(jbcorrelation jbcorrelation.c ${LIBRARY_HEADERS})
target_link_libraries(jbcorrelation ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(jbcorrelation PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(jbcorrelation PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(jbcorrelation PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(jbrankhaus jbrankhaus.c ${LIBRARY_HEADERS})
target_link_libraries(jbrankhaus ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(jbrankhaus PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(jbrankhaus PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(jbrankhaus PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(jbwords jbwords.c ${LIBRARY_HEADERS})
target_link_libraries(jbwords ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(jbwords PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(jbwords PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(jbwords PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(jp2kio_reg jp2kio_reg.c ${LIBRARY_HEADERS})
target_link_libraries(jp2kio_reg ${LEPTONICA})
add_test(NAME jp2kio_reg COMMAND jp2kio_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(jp2kio_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(jp2kio_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(jp2kio_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(jpegio_reg jpegio_reg.c ${LIBRARY_HEADERS})
target_link_libraries(jpegio_reg ${LEPTONICA})
add_test(NAME jpegio-gen COMMAND jpegio_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME jpegio-cmp COMMAND jpegio_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(jpegio_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(jpegio_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(jpegio_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(kernel_reg kernel_reg.c ${LIBRARY_HEADERS})
target_link_libraries(kernel_reg ${LEPTONICA})
add_test(NAME kernel-gen COMMAND kernel_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME kernel-cmp COMMAND kernel_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(kernel_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(kernel_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(kernel_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(label_reg label_reg.c ${LIBRARY_HEADERS})
target_link_libraries(label_reg ${LEPTONICA})
add_test(NAME label-gen COMMAND label_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME label-cmp COMMAND label_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(label_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(label_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(label_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(lineremoval lineremoval.c ${LIBRARY_HEADERS})
target_link_libraries(lineremoval ${LEPTONICA})
add_test(NAME lineremoval COMMAND lineremoval "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(lineremoval PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(lineremoval PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(lineremoval PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(listtest listtest.c ${LIBRARY_HEADERS})
target_link_libraries(listtest ${LEPTONICA})
add_test(NAME listtest COMMAND listtest "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(listtest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(listtest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(listtest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(livre_adapt livre_adapt.c ${LIBRARY_HEADERS})
target_link_libraries(livre_adapt ${LEPTONICA})
add_test(NAME livre_adapt COMMAND livre_adapt  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(livre_adapt PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(livre_adapt PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(livre_adapt PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(livre_hmt livre_hmt.c ${LIBRARY_HEADERS})
target_link_libraries(livre_hmt ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(livre_hmt PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(livre_hmt PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(livre_hmt PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(livre_makefigs livre_makefigs.c ${LIBRARY_HEADERS})
target_link_libraries(livre_makefigs ${LEPTONICA})
add_test(NAME livre_makefigs COMMAND livre_makefigs  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(livre_makefigs PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(livre_makefigs PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(livre_makefigs PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(livre_orient livre_orient.c ${LIBRARY_HEADERS})
target_link_libraries(livre_orient ${LEPTONICA})
add_test(NAME livre_orient COMMAND livre_orient  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(livre_orient PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(livre_orient PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(livre_orient PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(livre_pageseg livre_pageseg.c ${LIBRARY_HEADERS})
target_link_libraries(livre_pageseg ${LEPTONICA})
add_test(NAME livre_pageseg COMMAND livre_pageseg "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(livre_pageseg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(livre_pageseg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(livre_pageseg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(livre_seedgen livre_seedgen.c ${LIBRARY_HEADERS})
target_link_libraries(livre_seedgen ${LEPTONICA})
add_test(NAME livre_seedgen COMMAND livre_seedgen  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(livre_seedgen PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(livre_seedgen PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(livre_seedgen PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(livre_tophat livre_tophat.c ${LIBRARY_HEADERS})
target_link_libraries(livre_tophat ${LEPTONICA})
add_test(NAME livre_tophat COMMAND livre_tophat  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(livre_tophat PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(livre_tophat PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(livre_tophat PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(locminmax_reg locminmax_reg.c ${LIBRARY_HEADERS})
target_link_libraries(locminmax_reg ${LEPTONICA})
add_test(NAME locminmax_reg COMMAND locminmax_reg 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(locminmax_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(locminmax_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(locminmax_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(logicops_reg logicops_reg.c ${LIBRARY_HEADERS})
target_link_libraries(logicops_reg ${LEPTONICA})
add_test(NAME logicops_reg COMMAND logicops_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(logicops_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(logicops_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(logicops_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(lowaccess_reg lowaccess_reg.c ${LIBRARY_HEADERS})
target_link_libraries(lowaccess_reg ${LEPTONICA})
add_test(NAME lowaccess_reg COMMAND lowaccess_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(lowaccess_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(lowaccess_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(lowaccess_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(maketile maketile.c ${LIBRARY_HEADERS})
target_link_libraries(maketile ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(maketile PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(maketile PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(maketile PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(maze_reg maze_reg.c ${LIBRARY_HEADERS})
target_link_libraries(maze_reg ${LEPTONICA})
add_test(NAME maze-gen COMMAND maze_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME maze-cmp COMMAND maze_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(maze_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(maze_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(maze_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(misctest1 misctest1.c ${LIBRARY_HEADERS})
target_link_libraries(misctest1 ${LEPTONICA})
add_test(NAME misctest1 COMMAND misctest1  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(misctest1 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(misctest1 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(misctest1 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(modifyhuesat modifyhuesat.c ${LIBRARY_HEADERS})
target_link_libraries(modifyhuesat ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(modifyhuesat PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(modifyhuesat PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(modifyhuesat PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(morphseq_reg morphseq_reg.c ${LIBRARY_HEADERS})
target_link_libraries(morphseq_reg ${LEPTONICA})
add_test(NAME morphseq_reg COMMAND morphseq_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(morphseq_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(morphseq_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(morphseq_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(morphtest1 morphtest1.c ${LIBRARY_HEADERS})
target_link_libraries(morphtest1 ${LEPTONICA})
add_test(NAME morphtest1 COMMAND morphtest1  
        "blendtext.tif" "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(morphtest1 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(morphtest1 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(morphtest1 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(mtifftest mtifftest.c ${LIBRARY_HEADERS})
target_link_libraries(mtifftest ${LEPTONICA})
add_test(NAME mtifftest COMMAND mtifftest  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(mtifftest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(mtifftest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(mtifftest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(multitype_reg multitype_reg.c ${LIBRARY_HEADERS})
target_link_libraries(multitype_reg ${LEPTONICA})
add_test(NAME multitype-gen COMMAND multitype_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME multitype-cmp COMMAND multitype_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(multitype_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(multitype_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(multitype_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(nearline_reg nearline_reg.c ${LIBRARY_HEADERS})
target_link_libraries(nearline_reg ${LEPTONICA})
add_test(NAME nearline-gen COMMAND nearline_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME nearline-cmp COMMAND nearline_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(nearline_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(nearline_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(nearline_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(newspaper_reg newspaper_reg.c ${LIBRARY_HEADERS})
target_link_libraries(newspaper_reg ${LEPTONICA})
add_test(NAME newspaper-gen COMMAND newspaper_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME newspaper-cmp COMMAND newspaper_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(newspaper_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(newspaper_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(newspaper_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(numa1_reg numa1_reg.c ${LIBRARY_HEADERS})
target_link_libraries(numa1_reg ${LEPTONICA})
add_test(NAME numa1_reg COMMAND numa1_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(numa1_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(numa1_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(numa1_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(numa2_reg numa2_reg.c ${LIBRARY_HEADERS})
target_link_libraries(numa2_reg ${LEPTONICA})
add_test(NAME numa2_reg COMMAND numa2_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(numa2_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(numa2_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(numa2_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(numaranktest numaranktest.c ${LIBRARY_HEADERS})
target_link_libraries(numaranktest ${LEPTONICA})
add_test(NAME numaranktest COMMAND numaranktest "test8.jpg" 10  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(numaranktest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(numaranktest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(numaranktest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(otsutest1 otsutest1.c ${LIBRARY_HEADERS})
target_link_libraries(otsutest1 ${LEPTONICA})
add_test(NAME otsutest1 COMMAND otsutest1  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(otsutest1 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(otsutest1 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(otsutest1 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(otsutest2 otsutest2.c ${LIBRARY_HEADERS})
target_link_libraries(otsutest2 ${LEPTONICA})
add_test(NAME otsutest2 COMMAND otsutest2  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(otsutest2 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(otsutest2 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(otsutest2 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(overlap_reg overlap_reg.c ${LIBRARY_HEADERS})
target_link_libraries(overlap_reg ${LEPTONICA})
add_test(NAME overlap-gen COMMAND overlap_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME overlap-cmp COMMAND overlap_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(overlap_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(overlap_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(overlap_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(pagesegtest1 pagesegtest1.c ${LIBRARY_HEADERS})
target_link_libraries(pagesegtest1 ${LEPTONICA})
add_test(NAME pagesegtest1 COMMAND pagesegtest1 "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(pagesegtest1 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(pagesegtest1 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(pagesegtest1 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(pagesegtest2 pagesegtest2.c ${LIBRARY_HEADERS})
target_link_libraries(pagesegtest2 ${LEPTONICA})
add_test(NAME pagesegtest2 COMMAND pagesegtest2 
        "blendtext.tif" 1 "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(pagesegtest2 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(pagesegtest2 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(pagesegtest2 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(paint_reg paint_reg.c ${LIBRARY_HEADERS})
target_link_libraries(paint_reg ${LEPTONICA})
add_test(NAME paint-gen COMMAND paint_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME paint-cmp COMMAND paint_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(paint_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(paint_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(paint_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(paintmask_reg paintmask_reg.c ${LIBRARY_HEADERS})
target_link_libraries(paintmask_reg ${LEPTONICA})
add_test(NAME paintmask-gen COMMAND paintmask_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME paintmask-cmp COMMAND paintmask_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(paintmask_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(paintmask_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(paintmask_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(partitiontest partitiontest.c ${LIBRARY_HEADERS})
target_link_libraries(partitiontest ${LEPTONICA})
add_test(NAME partitiontest COMMAND partitiontest "test8.jpg" 10
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(partitiontest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(partitiontest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(partitiontest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(pdfiotest pdfiotest.c ${LIBRARY_HEADERS})
target_link_libraries(pdfiotest ${LEPTONICA})
add_test(NAME pdfiotest COMMAND pdfiotest  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(pdfiotest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(pdfiotest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(pdfiotest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(pdfseg_reg pdfseg_reg.c ${LIBRARY_HEADERS})
target_link_libraries(pdfseg_reg ${LEPTONICA})
add_test(NAME pdfseg-gen COMMAND pdfseg_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME pdfseg-cmp COMMAND pdfseg_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(pdfseg_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(pdfseg_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(pdfseg_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(pixa1_reg pixa1_reg.c ${LIBRARY_HEADERS})
target_link_libraries(pixa1_reg ${LEPTONICA})
add_test(NAME pixa1_reg COMMAND pixa1_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(pixa1_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(pixa1_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(pixa1_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(pixa2_reg pixa2_reg.c ${LIBRARY_HEADERS})
target_link_libraries(pixa2_reg ${LEPTONICA})
add_test(NAME pixa2_reg COMMAND pixa2_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(pixa2_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(pixa2_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(pixa2_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(pixaatest pixaatest.c ${LIBRARY_HEADERS})
target_link_libraries(pixaatest ${LEPTONICA})
add_test(NAME pixaatest COMMAND pixaatest  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(pixaatest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(pixaatest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(pixaatest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(pixadisp_reg pixadisp_reg.c ${LIBRARY_HEADERS})
target_link_libraries(pixadisp_reg ${LEPTONICA})
add_test(NAME pixadisp_reg COMMAND pixadisp_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(pixadisp_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(pixadisp_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(pixadisp_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(pixalloc_reg pixalloc_reg.c ${LIBRARY_HEADERS})
target_link_libraries(pixalloc_reg ${LEPTONICA})
add_test(NAME pixalloc_reg COMMAND pixalloc_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(pixalloc_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(pixalloc_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(pixalloc_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(pixcomp_reg pixcomp_reg.c ${LIBRARY_HEADERS})
target_link_libraries(pixcomp_reg ${LEPTONICA})
add_test(NAME pixcomp_reg COMMAND pixcomp_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(pixcomp_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(pixcomp_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(pixcomp_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(pixmem_reg pixmem_reg.c ${LIBRARY_HEADERS})
target_link_libraries(pixmem_reg ${LEPTONICA})
add_test(NAME pixmem_reg COMMAND pixmem_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(pixmem_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(pixmem_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(pixmem_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(pixserial_reg pixserial_reg.c ${LIBRARY_HEADERS})
target_link_libraries(pixserial_reg ${LEPTONICA})
add_test(NAME pixserial-gen COMMAND pixserial_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME pixserial-cmp COMMAND pixserial_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(pixserial_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(pixserial_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(pixserial_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(pixtile_reg pixtile_reg.c ${LIBRARY_HEADERS})
target_link_libraries(pixtile_reg ${LEPTONICA})
add_test(NAME pixtile_reg COMMAND pixtile_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(pixtile_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(pixtile_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(pixtile_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(plottest plottest.c ${LIBRARY_HEADERS})
target_link_libraries(plottest ${LEPTONICA})
add_test(NAME plottest COMMAND plottest
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(plottest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(plottest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(plottest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(pngio_reg pngio_reg.c ${LIBRARY_HEADERS})
target_link_libraries(pngio_reg ${LEPTONICA})
add_test(NAME pngio_reg COMMAND pngio_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(pngio_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(pngio_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(pngio_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(pnmio_reg pnmio_reg.c ${LIBRARY_HEADERS})
target_link_libraries(pnmio_reg ${LEPTONICA})
add_test(NAME pnmio_reg COMMAND pnmio_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(pnmio_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(pnmio_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(pnmio_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(printimage printimage.c ${LIBRARY_HEADERS})
target_link_libraries(printimage ${LEPTONICA})
add_test(NAME printimage COMMAND printimage "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(printimage PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(printimage PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(printimage PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(printsplitimage printsplitimage.c ${LIBRARY_HEADERS})
target_link_libraries(printsplitimage ${LEPTONICA})
add_test(NAME printsplitimage COMMAND printsplitimage 
        "blendtext.tif" 10 10
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(printsplitimage PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(printsplitimage PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(printsplitimage PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(printtiff printtiff.c ${LIBRARY_HEADERS})
target_link_libraries(printtiff ${LEPTONICA})
add_test(NAME printtiff COMMAND printtiff "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(printtiff PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(printtiff PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(printtiff PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(projection_reg projection_reg.c ${LIBRARY_HEADERS})
target_link_libraries(projection_reg ${LEPTONICA})
add_test(NAME projection-gen COMMAND projection_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME projection-cmp COMMAND projection_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(projection_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(projection_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(projection_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(projective_reg projective_reg.c ${LIBRARY_HEADERS})
target_link_libraries(projective_reg ${LEPTONICA})
add_test(NAME projective_reg COMMAND projective_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(projective_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(projective_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(projective_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(psio_reg psio_reg.c ${LIBRARY_HEADERS})
target_link_libraries(psio_reg ${LEPTONICA})
add_test(NAME psio-gen COMMAND psio_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME psio-cmp COMMAND psio_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(psio_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(psio_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(psio_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(psioseg_reg psioseg_reg.c ${LIBRARY_HEADERS})
target_link_libraries(psioseg_reg ${LEPTONICA})
add_test(NAME psioseg-gen COMMAND psioseg_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME psioseg-cmp COMMAND psioseg_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(psioseg_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(psioseg_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(psioseg_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(pta_reg pta_reg.c ${LIBRARY_HEADERS})
target_link_libraries(pta_reg ${LEPTONICA})
add_test(NAME pta-gen COMMAND pta_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME pta-cmp COMMAND pta_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(pta_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(pta_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(pta_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(ptra1_reg ptra1_reg.c ${LIBRARY_HEADERS})
target_link_libraries(ptra1_reg ${LEPTONICA})
add_test(NAME ptra1_reg COMMAND ptra1_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(ptra1_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(ptra1_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(ptra1_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(ptra2_reg ptra2_reg.c ${LIBRARY_HEADERS})
target_link_libraries(ptra2_reg ${LEPTONICA})
add_test(NAME ptra2_reg COMMAND ptra2_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(ptra2_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(ptra2_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(ptra2_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(quadtreetest quadtreetest.c ${LIBRARY_HEADERS})
target_link_libraries(quadtreetest ${LEPTONICA})
add_test(NAME quadtreetest COMMAND quadtreetest  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(quadtreetest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(quadtreetest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(quadtreetest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(rank_reg rank_reg.c ${LIBRARY_HEADERS})
target_link_libraries(rank_reg ${LEPTONICA})
add_test(NAME rank_reg COMMAND rank_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(rank_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(rank_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(rank_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(rankbin_reg rankbin_reg.c ${LIBRARY_HEADERS})
target_link_libraries(rankbin_reg ${LEPTONICA})
add_test(NAME rankbin-gen COMMAND rankbin_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME rankbin-cmp COMMAND rankbin_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(rankbin_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(rankbin_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(rankbin_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(rankhisto_reg rankhisto_reg.c ${LIBRARY_HEADERS})
target_link_libraries(rankhisto_reg ${LEPTONICA})
add_test(NAME rankhisto-gen COMMAND rankhisto_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME rankhisto-cmp COMMAND rankhisto_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(rankhisto_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(rankhisto_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(rankhisto_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(ranktest ranktest.c ${LIBRARY_HEADERS})
target_link_libraries(ranktest ${LEPTONICA})
add_test(NAME ranktest COMMAND ranktest 
        "test8.jpg" 10 10 10 "${CMAKE_CURRENT_BINARY_DIR}/testout.jpg"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(ranktest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(ranktest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(ranktest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(rasterop_reg rasterop_reg.c ${LIBRARY_HEADERS})
target_link_libraries(rasterop_reg ${LEPTONICA})
add_test(NAME rasterop_reg COMMAND rasterop_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(rasterop_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(rasterop_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(rasterop_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(rasteropip_reg rasteropip_reg.c ${LIBRARY_HEADERS})
target_link_libraries(rasteropip_reg ${LEPTONICA})
add_test(NAME rasteropip-gen COMMAND rasteropip_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME rasteropip-cmp COMMAND rasteropip_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(rasteropip_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(rasteropip_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(rasteropip_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(recogsort recogsort.c ${LIBRARY_HEADERS})
target_link_libraries(recogsort ${LEPTONICA})
add_test(NAME recogsort COMMAND recogsort  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(recogsort PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(recogsort PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(recogsort PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(recogtest1 recogtest1.c ${LIBRARY_HEADERS})
target_link_libraries(recogtest1 ${LEPTONICA})
add_test(NAME recogtest1 COMMAND recogtest1  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(recogtest1 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(recogtest1 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(recogtest1 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(reducetest reducetest.c ${LIBRARY_HEADERS})
target_link_libraries(reducetest ${LEPTONICA})
add_test(NAME reducetest COMMAND reducetest 
        "blendtext.tif" "blendout.tif" 1 2 3 4
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(reducetest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(reducetest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(reducetest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(removecmap removecmap.c ${LIBRARY_HEADERS})
target_link_libraries(removecmap ${LEPTONICA})
add_test(NAME removecmap COMMAND removecmap
        "blendtext.tif" 1 "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(removecmap PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(removecmap PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(removecmap PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(renderfonts renderfonts.c ${LIBRARY_HEADERS})
target_link_libraries(renderfonts ${LEPTONICA})
add_test(NAME renderfonts COMMAND renderfonts  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(renderfonts PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(renderfonts PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(renderfonts PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(rotate1_reg rotate1_reg.c ${LIBRARY_HEADERS})
target_link_libraries(rotate1_reg ${LEPTONICA})
add_test(NAME rotate1-gen COMMAND rotate1_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME rotate1-cmp COMMAND rotate1_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(rotate1_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(rotate1_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(rotate1_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(rotate2_reg rotate2_reg.c ${LIBRARY_HEADERS})
target_link_libraries(rotate2_reg ${LEPTONICA})
add_test(NAME rotate2-gen COMMAND rotate2_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME rotate2-cmp COMMAND rotate2_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(rotate2_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(rotate2_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(rotate2_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(rotatefastalt rotatefastalt.c ${LIBRARY_HEADERS})
target_link_libraries(rotatefastalt ${LEPTONICA})
add_test(NAME rotatefastalt COMMAND rotatefastalt  
        "blendtext.tif" 1 "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(rotatefastalt PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(rotatefastalt PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(rotatefastalt PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(rotateorth_reg rotateorth_reg.c ${LIBRARY_HEADERS})
target_link_libraries(rotateorth_reg ${LEPTONICA})
add_test(NAME rotateorth_reg COMMAND rotateorth_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(rotateorth_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(rotateorth_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(rotateorth_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(rotateorthtest1 rotateorthtest1.c ${LIBRARY_HEADERS})
target_link_libraries(rotateorthtest1 ${LEPTONICA})
add_test(NAME rotateorthtest1 COMMAND rotateorthtest1
        "blendtext.tif" "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(rotateorthtest1 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(rotateorthtest1 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(rotateorthtest1 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(rotatetest1 rotatetest1.c ${LIBRARY_HEADERS})
target_link_libraries(rotatetest1 ${LEPTONICA})
add_test(NAME rotatetest1 COMMAND rotatetest1  
        "blendtext.tif" 1 "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(rotatetest1 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(rotatetest1 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(rotatetest1 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(runlengthtest runlengthtest.c ${LIBRARY_HEADERS})
target_link_libraries(runlengthtest ${LEPTONICA})
add_test(NAME runlengthtest COMMAND runlengthtest  
        "blendtext.tif" "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(runlengthtest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(runlengthtest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(runlengthtest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(scale_reg scale_reg.c ${LIBRARY_HEADERS})
target_link_libraries(scale_reg ${LEPTONICA})
add_test(NAME scale-gen COMMAND scale_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME scale-cmp COMMAND scale_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(scale_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(scale_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(scale_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(scaleandtile scaleandtile.c ${LIBRARY_HEADERS})
target_link_libraries(scaleandtile ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(scaleandtile PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(scaleandtile PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(scaleandtile PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(scaletest1 scaletest1.c ${LIBRARY_HEADERS})
target_link_libraries(scaletest1 ${LEPTONICA})
add_test(NAME scaletest1 COMMAND scaletest1 
        "test8.jpg" 1 1 "${CMAKE_CURRENT_BINARY_DIR}/testout.jpg"  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(scaletest1 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(scaletest1 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(scaletest1 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(scaletest2 scaletest2.c ${LIBRARY_HEADERS})
target_link_libraries(scaletest2 ${LEPTONICA})
add_test(NAME scaletest2 COMMAND scaletest2 "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(scaletest2 PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(scaletest2 PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(scaletest2 PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(seedfilltest seedfilltest.c ${LIBRARY_HEADERS})
target_link_libraries(seedfilltest ${LEPTONICA})
add_test(NAME seedfilltest COMMAND seedfilltest  
        "blendtext.tif" "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(seedfilltest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(seedfilltest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(seedfilltest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(seedspread_reg seedspread_reg.c ${LIBRARY_HEADERS})
target_link_libraries(seedspread_reg ${LEPTONICA})
add_test(NAME seedspread-gen COMMAND seedspread_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME seedspread-cmp COMMAND seedspread_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(seedspread_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(seedspread_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(seedspread_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(selio_reg selio_reg.c ${LIBRARY_HEADERS})
target_link_libraries(selio_reg ${LEPTONICA})
add_test(NAME selio-gen COMMAND selio_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME selio-cmp COMMAND selio_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(selio_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(selio_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(selio_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(sharptest sharptest.c ${LIBRARY_HEADERS})
target_link_libraries(sharptest ${LEPTONICA})
add_test(NAME sharptest COMMAND sharptest 
        "test8.jpg" 1 1 "${CMAKE_CURRENT_BINARY_DIR}/testout.jpg"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(sharptest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(sharptest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(sharptest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(shear1_reg shear1_reg.c ${LIBRARY_HEADERS})
target_link_libraries(shear1_reg ${LEPTONICA})
add_test(NAME shear1-gen COMMAND shear1_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME shear1-cmp COMMAND shear1_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(shear1_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(shear1_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(shear1_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(shear2_reg shear2_reg.c ${LIBRARY_HEADERS})
target_link_libraries(shear2_reg ${LEPTONICA})
add_test(NAME shear2-gen COMMAND shear2_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME shear2-cmp COMMAND shear2_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(shear2_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(shear2_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(shear2_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(sheartest sheartest.c ${LIBRARY_HEADERS})
target_link_libraries(sheartest ${LEPTONICA})
add_test(NAME sheartest COMMAND sheartest
        "blendtext.tif" 1 "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(sheartest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(sheartest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(sheartest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(showedges showedges.c ${LIBRARY_HEADERS})
target_link_libraries(showedges ${LEPTONICA})
add_test(NAME showedges COMMAND showedges 
        "test8.jpg" "${CMAKE_CURRENT_BINARY_DIR}/testout.jpg"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(showedges PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(showedges PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(showedges PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(skew_reg skew_reg.c ${LIBRARY_HEADERS})
target_link_libraries(skew_reg ${LEPTONICA})
add_test(NAME skew-gen COMMAND skew_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME skew-cmp COMMAND skew_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(skew_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(skew_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(skew_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(skewtest skewtest.c ${LIBRARY_HEADERS})
target_link_libraries(skewtest ${LEPTONICA})
add_test(NAME skewtest COMMAND skewtest
        "blendtext.tif" "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(skewtest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(skewtest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(skewtest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(smallpix_reg smallpix_reg.c ${LIBRARY_HEADERS})
target_link_libraries(smallpix_reg ${LEPTONICA})
add_test(NAME smallpix_reg COMMAND smallpix_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(smallpix_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(smallpix_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(smallpix_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(smoothedge_reg smoothedge_reg.c ${LIBRARY_HEADERS})
target_link_libraries(smoothedge_reg ${LEPTONICA})
add_test(NAME smoothedge_reg COMMAND smoothedge_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(smoothedge_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(smoothedge_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(smoothedge_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(snapcolortest snapcolortest.c ${LIBRARY_HEADERS})
target_link_libraries(snapcolortest ${LEPTONICA})
add_test(NAME snapcolortest COMMAND snapcolortest  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(snapcolortest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(snapcolortest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(snapcolortest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(sorttest sorttest.c ${LIBRARY_HEADERS})
target_link_libraries(sorttest ${LEPTONICA})
add_test(NAME sorttest COMMAND sorttest "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(sorttest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(sorttest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(sorttest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(splitcomp_reg splitcomp_reg.c ${LIBRARY_HEADERS})
target_link_libraries(splitcomp_reg ${LEPTONICA})
add_test(NAME splitcomp-gen COMMAND splitcomp_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME splitcomp-cmp COMMAND splitcomp_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(splitcomp_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(splitcomp_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(splitcomp_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(splitimage2pdf splitimage2pdf.c ${LIBRARY_HEADERS})
target_link_libraries(splitimage2pdf ${LEPTONICA})
add_test(NAME splitimage2pdf COMMAND splitimage2pdf
        "blendtext.tif" 10 10 "blendout.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(splitimage2pdf PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(splitimage2pdf PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(splitimage2pdf PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(string_reg string_reg.c ${LIBRARY_HEADERS})
target_link_libraries(string_reg ${LEPTONICA})
add_test(NAME string_reg COMMAND string_reg "blendtext.tif"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(string_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(string_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(string_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(subpixel_reg subpixel_reg.c ${LIBRARY_HEADERS})
target_link_libraries(subpixel_reg ${LEPTONICA})
add_test(NAME subpixel-gen COMMAND subpixel_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME subpixel-cmp COMMAND subpixel_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(subpixel_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(subpixel_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(subpixel_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(sudokutest sudokutest.c ${LIBRARY_HEADERS})
target_link_libraries(sudokutest ${LEPTONICA})
add_test(NAME sudokutest COMMAND sudokutest  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(sudokutest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(sudokutest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(sudokutest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(texturefill_reg texturefill_reg.c ${LIBRARY_HEADERS})
target_link_libraries(texturefill_reg ${LEPTONICA})
add_test(NAME texturefill-gen COMMAND texturefill_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME texturefill-cmp COMMAND texturefill_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(texturefill_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(texturefill_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(texturefill_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(threshnorm_reg threshnorm_reg.c ${LIBRARY_HEADERS})
target_link_libraries(threshnorm_reg ${LEPTONICA})
add_test(NAME threshnorm-gen COMMAND threshnorm_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME threshnorm-cmp COMMAND threshnorm_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(threshnorm_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(threshnorm_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(threshnorm_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(translate_reg translate_reg.c ${LIBRARY_HEADERS})
target_link_libraries(translate_reg ${LEPTONICA})
add_test(NAME translate-gen COMMAND translate_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME translate-cmp COMMAND translate_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(translate_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(translate_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(translate_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(trctest trctest.c ${LIBRARY_HEADERS})
target_link_libraries(trctest ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(trctest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(trctest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(trctest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(viewertest viewertest.c ${LIBRARY_HEADERS})
target_link_libraries(viewertest ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(viewertest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(viewertest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(viewertest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(warper_reg warper_reg.c ${LIBRARY_HEADERS})
target_link_libraries(warper_reg ${LEPTONICA})
add_test(NAME warper-gen COMMAND warper_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME warper-cmp COMMAND warper_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(warper_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(warper_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(warper_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(warpertest warpertest.c ${LIBRARY_HEADERS})
target_link_libraries(warpertest ${LEPTONICA})
add_test(NAME warpertest COMMAND warpertest  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(warpertest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(warpertest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(warpertest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(watershedtest watershedtest.c ${LIBRARY_HEADERS})
target_link_libraries(watershedtest ${LEPTONICA})
add_test(NAME watershedtest COMMAND watershedtest  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(watershedtest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(watershedtest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(watershedtest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(webpio_reg webpio_reg.c ${LIBRARY_HEADERS})
target_link_libraries(webpio_reg ${LEPTONICA})
add_test(NAME webpio_reg COMMAND webpio_reg  
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(webpio_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(webpio_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(webpio_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(wordboxes_reg wordboxes_reg.c ${LIBRARY_HEADERS})
target_link_libraries(wordboxes_reg ${LEPTONICA})
add_test(NAME wordboxes-gen COMMAND wordboxes_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME wordboxes-cmp COMMAND wordboxes_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(wordboxes_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(wordboxes_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(wordboxes_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(wordsinorder wordsinorder.c ${LIBRARY_HEADERS})
target_link_libraries(wordsinorder ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(wordsinorder PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(wordsinorder PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(wordsinorder PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(writemtiff writemtiff.c ${LIBRARY_HEADERS})
target_link_libraries(writemtiff ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(writemtiff PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(writemtiff PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(writemtiff PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(writetext_reg writetext_reg.c ${LIBRARY_HEADERS})
target_link_libraries(writetext_reg ${LEPTONICA})
add_test(NAME writetext-gen COMMAND writetext_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME writetext-cmp COMMAND writetext_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(writetext_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(writetext_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(writetext_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(xformbox_reg xformbox_reg.c ${LIBRARY_HEADERS})
target_link_libraries(xformbox_reg ${LEPTONICA})
add_test(NAME xformbox-gen COMMAND xformbox_reg "generate"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME xformbox-cmp COMMAND xformbox_reg  "compare"
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
if ( WIN32 )
    target_compile_definitions(xformbox_reg PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(xformbox_reg PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(xformbox_reg PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(xtractprotos xtractprotos.c ${LIBRARY_HEADERS})
target_link_libraries(xtractprotos ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(xtractprotos PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(xtractprotos PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(xtractprotos PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

add_executable(yuvtest yuvtest.c ${LIBRARY_HEADERS})
target_link_libraries(yuvtest ${LEPTONICA})
if ( WIN32 )
    target_compile_definitions(yuvtest PRIVATE _CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(yuvtest PRIVATE _CRT_SECURE_NO_DEPRECATE)
    target_compile_definitions(yuvtest PRIVATE _CRT_NONSTDC_NO_DEPRECATE)
endif()

