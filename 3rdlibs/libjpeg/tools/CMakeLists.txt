
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



# The following code is trying to test the programs above, 
# But it doesn't work and I don't know much about the test unit, 
# So if U get a solution, Plz fix this.
# (NOTE: Test in -->  OS Windows 7 x64, CMake v3.4.0)

#set( INPUTFILE "${CMAKE_CURRENT_SOURCE_DIR}/testimg.ppm"  )
#set( OUTPUTFILE "${CMAKE_CURRENT_BINARY_DIR}/testout.jpg" )
#set( ARGS "-dct int -outfile ${OUTPUTFILE} ${INPUTFILE}"  )
#add_test( cjpeg1 cjpeg COMMAND "${CMAKE_COMMAND}"
          #--ARGS ${ARGS}
          #--PROGRAM $<TARGET_FILE_NAME:cjpeg>
          #--SOURCE_FILE "testimg.jpg"
          #--TARGET_FILE "testout.jpg"
          #--SOURCE_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
          #--BINARY_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}"
          #--P "${CMAKE_CURRENT_SOURCE_DIR}/runtest.cmake"
#)
#set( INPUTFILE "${CMAKE_CURRENT_SOURCE_DIR}/testimg.ppm"  )
#set( OUTPUTFILE "${CMAKE_CURRENT_BINARY_DIR}/testoutp.jpg" )
#set( ARGS "-dct int -progressive -opt -outfile ${OUTPUTFILE} ${INPUTFILE}" )
#add_test( cjpeg2 cjpeg COMMAND "${CMAKE_COMMAND}"
          #--ARGS ${ARGS}
          #--PROGRAM $<TARGET_FILE_NAME:cjpeg>
          #--SOURCE_FILE "/testimgp.jpg"
          #--TARGET_FILE "testoutp.jpg"
          #--SOURCE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
          #--BINARY_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
          #--P "${CMAKE_CURRENT_SOURCE_DIR}/runtest.cmake"
#)

#set( INPUTFILE "${CMAKE_CURRENT_SOURCE_DIR}/testorig.jpg" )
#set( OUTPUTFILE "${CMAKE_CURRENT_BINARY_DIR}/testout.ppm" )
#set( ARGS "-dct int -ppm -outfile ${OUTPUTFILE} ${INPUTFILE}" )
#add_test( djpeg1 djpeg COMMAND "${CMAKE_COMMAND}"
          #--ARGS ${ARGS}
          #--PROGRAM $<TARGET_FILE_NAME:djpeg>
          #--SOURCE_FILE "testimg.ppm"
          #--TARGET_FILE "testout.ppm"
          #--SOURCE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
          #--BINARY_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
          #--P "${CMAKE_CURRENT_SOURCE_DIR}/runtest.cmake"
#)
#set( INPUTFILE "${CMAKE_CURRENT_SOURCE_DIR}/testorig.jpg" )
#set( OUTPUTFILE "${CMAKE_CURRENT_BINARY_DIR}/testout.bmp" )
#set( ARGS "-dct int -bmp -colors 256 -outfile ${OUTPUTFILE} ${INPUTFILE}" )
#add_test( djpeg2 djpeg COMMAND "${CMAKE_COMMAND}"
          #--ARGS ${ARGS}
          #--PROGRAM $<TARGET_FILE_NAME:djpeg>
          #--SOURCE_FILE "testimg.bmp"
          #--TARGET_FILE "testout.bmp"
          #--SOURCE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
          #--BINARY_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
          #--P "${CMAKE_CURRENT_SOURCE_DIR}/runtest.cmake"
#)
#set( INPUTFILE "${CMAKE_CURRENT_SOURCE_DIR}/testprog.jpg" )
#set( OUTPUTFILE "${CMAKE_CURRENT_BINARY_DIR}/testoutp.ppm" )
#set( ARGS "-dct int -ppm -outfile ${OUTPUTFILE} ${INPUTFILE}" )
#add_test( djpeg3 djpeg COMMAND "${CMAKE_COMMAND}"
          #--ARGS ${ARGS}
          #--PROGRAM $<TARGET_FILE_NAME:djpeg>
          #--SOURCE_FILE "testimg.ppm"
          #--TARGET_FILE "testoutp.ppm"
          #--SOURCE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
          #--BINARY_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
          #--P "${CMAKE_CURRENT_SOURCE_DIR}/runtest.cmake"
#)

#set( INPUTFILE "${CMAKE_CURRENT_SOURCE_DIR}/testprog.jpg" )
#set( OUTPUTFILE "${CMAKE_CURRENT_BINARY_DIR}/testoutt.jpg" )
#set( ARGS "-outfile ${OUTPUTFILE} ${INPUTFILE}" )
#add_test( jpegtran jpegtran COMMAND "${CMAKE_COMMAND}"
          #--ARGS ${ARGS}
          #--PROGRAM $<TARGET_FILE_NAME:jpegtran>
          #--SOURCE_FILE "testorig.jpg"
          #--TARGET_FILE "testoutt.jpg"
          #--SOURCE_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
          #--BINARY_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}"
          #--P "${CMAKE_CURRENT_SOURCE_DIR}/runtest.cmake"
#)

