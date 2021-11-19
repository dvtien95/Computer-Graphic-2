# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkImagingGeneral-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingGeneral-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingGeneral-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingGeneral-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingGeneral-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkImagingGeneral-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingGeneral-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingGeneral-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingGeneral-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingGeneral-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Imaging/General/CMakeFiles/vtkImagingGeneral.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageAnisotropicDiffusion2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageAnisotropicDiffusion3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageCheckerboard.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageCityBlockDistance.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageConvolve.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageCorrelation.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageEuclideanDistance.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageEuclideanToPolar.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageGaussianSmooth.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageGradient.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageGradientMagnitude.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageHybridMedian2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageLaplacian.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageMedian3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageNormalize.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageRange3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageSeparableConvolution.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageSobel2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageSobel3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageSpatialAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageVariance3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkSimpleImageFilterExample.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageSlab.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/General/vtkImageSlabReslice.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Imaging/General/vtkImagingGeneralModule.h"
    )
endif()

