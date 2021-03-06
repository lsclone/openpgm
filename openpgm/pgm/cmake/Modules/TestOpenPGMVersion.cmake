message(STATUS "Detecting OpenPGM")
file(READ "${CMAKE_CURRENT_SOURCE_DIR}/mkversion.c" _VERSION_H)
string(REGEX REPLACE ".*const unsigned pgm_major_version = ([0-9]+);.*" "\\1" OPENPGM_VERSION_MAJOR "${_VERSION_H}")
string(REGEX REPLACE ".*const unsigned pgm_minor_version = ([0-9]+);.*" "\\1" OPENPGM_VERSION_MINOR "${_VERSION_H}")
string(REGEX REPLACE ".*const unsigned pgm_micro_version = ([0-9]+);.*" "\\1" OPENPGM_VERSION_MICRO "${_VERSION_H}")
unset(_VERSION_H)
message(STATUS "Detecting OpenPGM - ${OPENPGM_VERSION_MAJOR}.${OPENPGM_VERSION_MINOR}.${OPENPGM_VERSION_MICRO}")

if(MSVC_IDE)
	set(_pgm_COMPILER "-${CMAKE_VS_PLATFORM_TOOLSET}")
else()
	set(_pgm_COMPILER "")
endif()
