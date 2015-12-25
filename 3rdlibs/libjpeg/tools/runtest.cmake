

#execute_process("${COMMAND} ${PROGRAM} ${ARGS}" RESULT_VARIABLE HAD_ERROR)
#if(HAD_ERROR)
    #message(FATAL_ERROR "Test failed")
#endif()
#if(EXISTS "${SOURCE_DIRECTORY}/${SOURCE_FILE}")
    #if(EXISTS "${DBINARY_DIRECTORY}/${TARGET_FILE}")
        #execute_process(
            #COMMAND ${CMAKE_COMMAND} -E compare_files
            #"${SOURCE_DIRECTORY}/${SOURCE_FILE}" 
            #"${DBINARY_DIRECTORY}/${TARGET_FILE}"
            #RESULT_VARIABLE DIFFERENT
        #)
        #if(DIFFERENT)
            #message(FATAL_ERROR "Test failed - files differ")
        #endif()
    #endif()
#endif()
