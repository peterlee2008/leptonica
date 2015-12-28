
###############################################################################
# program settings
###############################################################################

# The configuration file and included directories
include_directories(
	"${CMAKE_CURRENT_SOURCE_DIR}" "${CMAKE_CURRENT_BINARY_DIR}" )

# The files in cjpeg program
set( HEADERS cdjpeg.h cderror.h transupp.h )
set( SOURCES 
	cjpeg.c rdppm.c rdgif.c rdtarga.c rdbmp.c rdswitch.c cdjpeg.c 
)
# Here build cjpeg program
add_executable(cjpeg ${SOURCES} ${HEADERS})
target_link_libraries(cjpeg ${JPEG})

# The files in djpeg program
set( HEADERS cdjpeg.h cderror.h transupp.h )
set( SOURCES 
	djpeg.c wrppm.c wrgif.c wrtarga.c wrbmp.c rdcolmap.c cdjpeg.c
)
# Here build djpeg program
add_executable(djpeg ${SOURCES} ${HEADERS})
target_link_libraries(djpeg ${JPEG})

# Here build jpegtran program
add_executable(jpegtran jpegtran.c rdswitch.c cdjpeg.c transupp.c)
target_link_libraries(jpegtran ${JPEG})

# Here build rdjpgcom program
add_executable(rdjpgcom rdjpgcom.c)
target_link_libraries(rdjpgcom ${JPEG})

# Here build wrjpgcom program
add_executable(wrjpgcom wrjpgcom.c)
target_link_libraries(wrjpgcom ${JPEG})


set( INPUTFILE "${CMAKE_CURRENT_SOURCE_DIR}/testimg.ppm"  )
set( OUTPUTFILE "${CMAKE_CURRENT_BINARY_DIR}/testout.jpg" )
set( ARGS "-dct;int;-outfile;${OUTPUTFILE};${INPUTFILE}"  )
add_test( NAME cjpeg-dct-int COMMAND "${CMAKE_COMMAND}"
    "-DARGS=${ARGS}"
    "-DPROGRAM=$<TARGET_FILE:cjpeg>"
    "-DSOURCE=${CMAKE_CURRENT_SOURCE_DIR}/testimg.jpg"
    "-DTARGET=${CMAKE_CURRENT_BINARY_DIR}/testout.jpg"
    -P "${CMAKE_CURRENT_SOURCE_DIR}/jpegtester.cmake"
)

set( INPUTFILE "${CMAKE_CURRENT_SOURCE_DIR}/testimg.ppm"  )
set( OUTPUTFILE "${CMAKE_CURRENT_BINARY_DIR}/testoutp.jpg" )
set( ARGS "-dct;int;-progressive;-opt;-outfile;${OUTPUTFILE};${INPUTFILE}" )
add_test( NAME cjpeg-dct-int-opt-progressive COMMAND "${CMAKE_COMMAND}"
    "-DARGS=${ARGS}"
    "-DPROGRAM=$<TARGET_FILE_NAME:cjpeg>"
    "-DSOURCE=${CMAKE_CURRENT_SOURCE_DIR}/testimgp.jpg"
    "-DTARGET=${CMAKE_CURRENT_BINARY_DIR}/testoutp.jpg"
    -P "${CMAKE_CURRENT_SOURCE_DIR}/jpegtester.cmake"
)

set( INPUTFILE "${CMAKE_CURRENT_SOURCE_DIR}/testorig.jpg" )
set( OUTPUTFILE "${CMAKE_CURRENT_BINARY_DIR}/testout.ppm" )
set( ARGS "-dct;int;-ppm;-outfile;${OUTPUTFILE};${INPUTFILE}" )
add_test( NAME cjpeg-dct-int-ppm COMMAND "${CMAKE_COMMAND}"
    "-DARGS=${ARGS}"
    "-DPROGRAM=$<TARGET_FILE_NAME:djpeg>"
    "-DSOURCE_FILE=${CMAKE_CURRENT_SOURCE_DIR}/testimg.ppm"
    "-DTARGET_FILE=${CMAKE_CURRENT_BINARY_DIR}/testout.ppm"
    -P "${CMAKE_CURRENT_SOURCE_DIR}/jpegtester.cmake"
)

set( INPUTFILE "${CMAKE_CURRENT_SOURCE_DIR}/testorig.jpg" )
set( OUTPUTFILE "${CMAKE_CURRENT_BINARY_DIR}/testout.bmp" )
set( ARGS "-dct;int;-bmp;-colors;256;-outfile;${OUTPUTFILE};${INPUTFILE}" )
add_test( NAME cjpeg-dct-int-bmp COMMAND "${CMAKE_COMMAND}"
    "-DARGS=${ARGS}"
    "-DPROGRAM=$<TARGET_FILE_NAME:djpeg>"
    "-DSOURCE=${CMAKE_CURRENT_SOURCE_DIR}/testimg.bmp"
    "-DTARGET=${CMAKE_CURRENT_BINARY_DIR}/testout.bmp"
    -P "${CMAKE_CURRENT_SOURCE_DIR}/jpegtester.cmake"
)

set( INPUTFILE "${CMAKE_CURRENT_SOURCE_DIR}/testprog.jpg" )
set( OUTPUTFILE "${CMAKE_CURRENT_BINARY_DIR}/testoutp.ppm" )
set( ARGS "-dct;int;-ppm;-outfile;${OUTPUTFILE};${INPUTFILE}" )
add_test( NAME djpeg-dct-int-bmp COMMAND "${CMAKE_COMMAND}"
    "-DARGS=${ARGS}"
    "-DPROGRAM=$<TARGET_FILE_NAME:djpeg>"
    "-DSOURCE=${CMAKE_CURRENT_SOURCE_DIR}/testimg.ppm"
    "-DTARGET=${CMAKE_CURRENT_BINARY_DIR}/testoutp.ppm"
    -P "${CMAKE_CURRENT_SOURCE_DIR}/jpegtester.cmake"
)

set( INPUTFILE "${CMAKE_CURRENT_SOURCE_DIR}/testprog.jpg" )
set( OUTPUTFILE "${CMAKE_CURRENT_BINARY_DIR}/testoutt.jpg" )
set( ARGS "-outfile;${OUTPUTFILE};${INPUTFILE}" )
add_test( NAME jpegtran COMMAND "${CMAKE_COMMAND}"
    "-DARGS=${ARGS}"
    "-DPROGRAM=$<TARGET_FILE_NAME:jpegtran>"
    "-DSOURCE=${CMAKE_CURRENT_SOURCE_DIR}/testorig.jpg"
    "-DTARGET=${CMAKE_CURRENT_BINARY_DIR}/testoutt.jpg"
    -P "${CMAKE_CURRENT_SOURCE_DIR}/jpegtester.cmake"
)
