
###############################################################################
# program settings
###############################################################################

add_executable(example example.c)
target_link_libraries(example ${ZLIB})

add_executable(minigzip minigzip.c)
target_link_libraries(minigzip ${ZLIB})

if(HAVE_OFF64_T)
	set_target_properties(
		example PROPERTIES COMPILE_FLAGS "-D_FILE_OFFSET_BITS=64")
	set_target_properties(
		minigzip PROPERTIES COMPILE_FLAGS "-D_FILE_OFFSET_BITS=64")
endif()

add_test(example example)
add_test(minigzip minigzip minigzip.exe)
