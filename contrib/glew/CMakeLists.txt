project(glew LANGUAGES C)

set(BUILD_SHARED_LIBS OFF)

add_library(${PROJECT_NAME} glew.c)
