cmake_minimum_required(VERSION 3.25)
project(
	mde
)

set(CLASSIC_THEME 1)
set(USE_FREETYPE2 0)
add_subdirectory(external/milsko)

include_directories(external)

add_subdirectory(mdelibs)
add_subdirectory(mdebase)
