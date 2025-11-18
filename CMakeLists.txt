cmake_minimum_required(VERSION 3.25)
project(
	mde
)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/mdecmake)

configure_file(include/config.h.in ${CMAKE_CURRENT_BINARY_DIR}/config.h)
include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(CLASSIC_THEME 1)
set(USE_FREETYPE2 0)
add_subdirectory(external/milsko)

include_directories(external)

add_subdirectory(mdelibs)
add_subdirectory(mdebase)
add_subdirectory(mdeutils)
