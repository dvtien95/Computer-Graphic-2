# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersPoints-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersPoints-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Filters/Points/CMakeFiles/vtkFiltersPoints.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkBoundedPointSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkConnectedPointsFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkDensifyPointCloudFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkEllipsoidalGaussianKernel.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkEuclideanClusterExtraction.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkExtractHierarchicalBins.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkExtractEnclosedPoints.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkExtractPointCloudPiece.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkExtractPoints.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkExtractSurface.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkFitImplicitFunction.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkGaussianKernel.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkGeneralizedKernel.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkHierarchicalBinningFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkInterpolationKernel.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkLinearKernel.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkMaskPointsFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkPCACurvatureEstimation.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkPCANormalEstimation.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkPointCloudFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkPointDensityFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkPointInterpolator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkPointInterpolator2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkPointOccupancyFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkProbabilisticVoronoiKernel.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkRadiusOutlierRemoval.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkSPHInterpolator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkSPHCubicKernel.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkSPHKernel.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkSPHQuarticKernel.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkSPHQuinticKernel.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkShepardKernel.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkSignedDistance.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkStatisticalOutlierRemoval.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkUnsignedDistance.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkVoxelGrid.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkVoronoiKernel.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Points/vtkWendlandQuinticKernel.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Filters/Points/vtkFiltersPointsModule.h"
    )
endif()

