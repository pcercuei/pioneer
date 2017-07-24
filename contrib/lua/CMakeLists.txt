project(lua LANGUAGES C)

set(BUILD_SHARED_LIBS OFF)

file(GLOB SRC_FILES *.c)

add_library(${PROJECT_NAME} ${SRC_FILES})
