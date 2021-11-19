# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOImage-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOImage-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/IO/Image/CMakeFiles/vtkIOImage.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkBMPReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkBMPWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkDEMReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkDICOMImageReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkGESignaReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkImageExport.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkImageImport.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkImageImportExecutive.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkImageReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkImageReader2.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkImageReader2Collection.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkImageReader2Factory.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkImageWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkJPEGReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkJPEGWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkJSONImageWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkMedicalImageProperties.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkMedicalImageReader2.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkMetaImageReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkMetaImageWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkMRCReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkNIFTIImageHeader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkNIFTIImageReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkNIFTIImageWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkNrrdReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkPNGReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkPNGWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkPNMReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkPNMWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkPostScriptWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkSLCReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkTIFFReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkTIFFWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkVolume16Reader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/Image/vtkVolumeReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/IO/Image/vtkIOImageModule.h"
    )
endif()

