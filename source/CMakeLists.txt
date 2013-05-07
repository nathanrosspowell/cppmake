#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# CMakeLists.txt Authored by Nathan Ross Powell.
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cmake_minimum_required( VERSION 2.0 )
project( cor-game )
# Version number.
set( cor-game_VERSION_MAJOR 0 )
set( cor-game_VERSION_MINOR 1 )

set( MAKE_C_COMPILER clang )
set( CMAKE_CXX_COMPILER clang++ )

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Set exe output directory.
set( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/../build/bin )

set( CMAKE_C_FLAGS 
    "-lglut 
    `sdl-config --cflags --libs` 
    -lGL 
    -lGLU 
    -lSDL 
    -lSDL_image 
    -lSDL_ttf 
    -lSDL_mixer
    -v" 
)

set( CMAKE_CXX_FLAGS "-std=gnu++11" )

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# All the source listing files for the component folder. 
#file( GLOB ComponentSource "component/source_listing/*.cpp" )

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# All the source listing files for the entity folder. 
#file( GLOB EntitySource "entity/source_listing/*.cpp" )

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# All the source listing files for the entity folder. 
#file( GLOB LaunchSource "launch/source_listing/*.cpp" )

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# All the source listing files for the resource folder. 
#file( GLOB ResourceSource "resource/source_listing/*.cpp" )

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Set all the sources.
set(
   SOURCES
   main.cpp
   #${ComponentSource}
   #${EntitySource}
   #${LaunchSource}
   #${ResourceSource}
)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# REQUIRED does not work in CMake <=2.4.6 for SDL
#Find_Package( SDL REQUIRED )
#Find_Package( SDL_image REQUIRED ) # if using SDL_image
#Find_Package( SDL_ttf REQUIRED )
#Find_Package( SDL_mixer REQUIRED )

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Workaround for the non-working REQUIRED flag
#if( NOT SDL_FOUND )
#   message ( FATAL_ERROR "SDL not found!" )
#endif( NOT SDL_FOUND )

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Linking.
link_libraries(
   #${SDL_LIBRARY}
   #${SDLIMAGE_LIBRARY} # if using SDL_image
   #${SDLTTF_LIBRARY} # if using SDL_ttf
   #${SDLMIXER_LIBRARY} # if using SDL_mixer
   #SDLmain # Sadly not included in SDL_LIBRARY variable
)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Final executable.
add_executable(
   game 
   #WIN32 # Only if you don't want the DOS prompt to appear in the background in Windows
   #MACOSX_BUNDLE
   ${SOURCES} # We could've listed the source files here directly instead of using a variable to store them
)
