

execute_process( 
	COMMAND ${MEMCHECK} ${PROGRAM} ${ARGS}
	OUTPUT_FILE "${OUTPUT}" RESULT_VARIABLE TEST_STATUS )
if( TEST_STATUS )
	file( WRITE "v:/123.txt" "${MEMCHECK} ${PROGRAM} ${ARGS} ${TEST_STATUS}" )
	message( FATAL_ERROR "Returned failed status ${TEST_STATUS}! \
		Output (if any) is in \"${OUTPUT}\"" )
endif()

if( SOURCE AND TARGET )
	if( EXISTS ${SOURCE} )
		file( READ ${SOURCE} SOURCE HEX )
	endif()
	if( EXISTS ${TARGET} )
		file( READ ${TARGET} TARGET HEX )
	endif()
	string( TOLOWER ${SOURCE} SOURCE )
	string( TOLOWER ${TARGET} TARGET )
	if( ${SOURCE} STREQUAL ${TARGET} )
		message( STATUS "Test Passed!" )
	else()
		message( FATAL_ERROR "Test Failed, Data corruption is detected!" )
	endif()
endif()
