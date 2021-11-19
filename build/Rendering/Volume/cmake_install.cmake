# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingVolume-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingVolume-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Rendering/Volume/CMakeFiles/vtkRenderingVolume.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkDirectionEncoder.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkEncodedGradientEstimator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkEncodedGradientShader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkFiniteDifferenceGradientEstimator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkFixedPointRayCastImage.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeGOHelper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeGOShadeHelper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeHelper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeShadeHelper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkFixedPointVolumeRayCastHelper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkFixedPointVolumeRayCastMIPHelper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkFixedPointVolumeRayCastMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkGPUVolumeRayCastMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkMultiVolume.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkOSPRayVolumeInterface.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkProjectedTetrahedraMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkRayCastImageDisplayHelper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkRecursiveSphereDirectionEncoder.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkSphericalDirectionEncoder.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkUnstructuredGridBunykRayCastFunction.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkUnstructuredGridHomogeneousRayIntegrator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkUnstructuredGridLinearRayIntegrator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkUnstructuredGridPartialPreIntegration.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkUnstructuredGridPreIntegration.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkUnstructuredGridVolumeMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkUnstructuredGridVolumeRayCastFunction.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkUnstructuredGridVolumeRayCastIterator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkUnstructuredGridVolumeRayCastMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkUnstructuredGridVolumeRayIntegrator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkUnstructuredGridVolumeZSweepMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkVolumeMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkVolumeOutlineSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkVolumePicker.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Volume/vtkVolumeRayCastSpaceLeapingImageFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Rendering/Volume/vtkRenderingVolumeModule.h"
    )
endif()

