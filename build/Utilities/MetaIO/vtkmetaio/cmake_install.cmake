# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkmetaio-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkmetaio-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2/vtkmetaio" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/localMetaConfiguration.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaArray.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaArrow.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaBlob.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaCommand.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaContour.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaDTITube.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaEllipse.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaEvent.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaFEMObject.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaForm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaGaussian.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaGroup.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaITKUtils.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaImage.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaImageTypes.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaImageUtils.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaLandmark.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaLine.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaMesh.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaObject.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaOutput.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaScene.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaSurface.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaTransform.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaTube.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaTubeGraph.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaTypes.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaUtils.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Utilities/MetaIO/vtkmetaio/metaVesselTube.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Utilities/MetaIO/vtkmetaio/metaIOConfig.h"
    )
endif()

