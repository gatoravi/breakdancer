execute_process(
    COMMAND ${CMAKE_SOURCE_DIR}/build-common/bin/gitrev.pl
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    OUTPUT_VARIABLE VERSION_DATA
    ERROR_VARIABLE VERSION_ERR
    OUTPUT_STRIP_TRAILING_WHITESPACE
)
separate_arguments(VERSION_DATA)
list(GET VERSION_DATA 0 EXE_VERSION_SUFFIX)
list(GET VERSION_DATA 1 FULL_VERSION)
list(GET VERSION_DATA 2 COMMIT_HASH)
