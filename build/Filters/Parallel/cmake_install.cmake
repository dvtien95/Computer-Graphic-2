# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersParallel-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersParallel-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Filters/Parallel/CMakeFiles/vtkFiltersParallel.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkAggregateDataSetFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkAngularPeriodicFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkCollectGraph.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkCollectPolyData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkCollectTable.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkCutMaterial.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkDuplicatePolyData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkExtractCTHPart.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkExtractPolyDataPiece.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkExtractUnstructuredGridPiece.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkExtractUserDefinedPiece.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkIntegrateAttributes.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPassThroughFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPCellDataToPointData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPeriodicFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPExtractDataArraysOverTime.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPExtractSelectedArraysOverTime.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPieceRequestFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPieceScalars.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPipelineSize.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPKdTree.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPLinearExtrusionFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPMaskPoints.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPOutlineCornerFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPOutlineFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPOutlineFilterInternals.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPPolyDataNormals.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPProbeFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPProjectSphereFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPReflectionFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPResampleFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkProcessIdScalars.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPSphereSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPYoungsMaterialInterface.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkRectilinearGridOutlineFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkRemoveGhosts.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkTransmitPolyDataPiece.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkTransmitRectilinearGridPiece.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkTransmitStructuredDataPiece.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkTransmitStructuredGridPiece.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkTransmitUnstructuredGridPiece.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkUnstructuredGridGhostCellsGenerator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Parallel/vtkPExtractArraysOverTime.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Filters/Parallel/vtkFiltersParallelModule.h"
    )
endif()

