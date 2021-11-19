# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersModeling-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersModeling-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersModeling-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersModeling-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersModeling-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersModeling-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersModeling-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersModeling-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersModeling-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersModeling-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Filters/Modeling/CMakeFiles/vtkFiltersModeling.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkAdaptiveSubdivisionFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkBandedPolyDataContourFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkButterflySubdivisionFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkContourLoopExtraction.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkCookieCutter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkDijkstraGraphGeodesicPath.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkDijkstraImageGeodesicPath.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkFitToHeightMapFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkFillHolesFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkGeodesicPath.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkGraphGeodesicPath.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkLinearExtrusionFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkLinearSubdivisionFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkLoopSubdivisionFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkOutlineFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkPolyDataPointSampler.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkProjectedTexture.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkQuadRotationalExtrusionFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkRibbonFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkRotationalExtrusionFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkRuledSurfaceFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkSectorSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkSelectEnclosedPoints.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkSelectPolyData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkSpherePuzzleArrows.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkSpherePuzzle.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkSubdivideTetra.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkTrimmedExtrusionFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Modeling/vtkVolumeOfRevolutionFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Filters/Modeling/vtkFiltersModelingModule.h"
    )
endif()

