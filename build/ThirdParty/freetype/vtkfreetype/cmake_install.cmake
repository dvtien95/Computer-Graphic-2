# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkfreetype-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkfreetype-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkfreetype-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkfreetype-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkfreetype-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkfreetype-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkfreetype-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkfreetype-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkfreetype-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkfreetype-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2/vtkfreetype/include" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/ft2build.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/vtk_freetype_mangle.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/vtk_ftmodule.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/freetype/vtkfreetype/include/vtkFreeTypeConfig.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2/vtkfreetype/include/freetype" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/freetype.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftadvanc.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftbbox.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftbdf.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftbitmap.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftbzip2.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftcache.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftchapters.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftcid.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/fterrdef.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/fterrors.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftgasp.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftglyph.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftgxval.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftgzip.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftimage.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftincrem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftlcdfil.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftlist.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftlzw.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftmac.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftmm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftmodapi.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftmoderr.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftotval.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftoutln.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftpfr.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftrender.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftsizes.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftsnames.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftstroke.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftsynth.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftsystem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/fttrigon.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/fttypes.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftwinfnt.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftxf86.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/t1tables.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ttnameid.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/tttables.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/tttags.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/ttunpat.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2/vtkfreetype/include/freetype/config" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftheader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftmodule.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftoption.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftstdlib.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftconfig.h"
    )
endif()

