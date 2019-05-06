
find_library(PCRE2_LIBRARIES NAMES pcre2-16)
find_path(PCRE2_INCLUDE_DIRS pcre2.h)

if (PCRE2_LIBRARIES STREQUAL "PCRE2_LIBRARIES-NOTFOUND" OR PCRE2_INCLUDE_DIRS STREQUAL "PCRE2_INCLUDE_DIRS-NOTFOUND")
    set(PCRE2_FOUND 0)
else()
    add_library(PCRE2 INTERFACE IMPORTED)
    target_link_libraries(PCRE2 INTERFACE ${PCRE2_LIBRARIES})
    target_include_directories(PCRE2 INTERFACE ${PCRE2_INCLUDE_DIRS})
    set(PCRE2_FOUND 1)
endif()
