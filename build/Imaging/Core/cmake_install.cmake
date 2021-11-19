# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkImagingCore-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkImagingCore-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Imaging/Core/CMakeFiles/vtkImagingCore.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkExtractVOI.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageAppendComponents.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageBlend.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageCacheFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageCast.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageChangeInformation.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageClip.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageConstantPad.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageDataStreamer.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageDecomposeFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageDifference.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageExtractComponents.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageFlip.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageIterateFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageMagnify.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageMapToColors.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageMask.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageMirrorPad.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImagePadFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImagePermute.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImagePointDataIterator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImagePointIterator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageResample.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageReslice.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageResliceToColors.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageShiftScale.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageShrink3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageStencilIterator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageThreshold.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageTranslateExtent.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageWrapPad.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkRTAnalyticSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageResize.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageBSplineCoefficients.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageStencilData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageStencilAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkAbstractImageInterpolator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageBSplineInternals.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageBSplineInterpolator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageSincInterpolator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageInterpolator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Imaging/Core/vtkImageStencilSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Imaging/Core/vtkImagingCoreModule.h"
    )
endif()

