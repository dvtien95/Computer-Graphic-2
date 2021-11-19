# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersCore-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersCore-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Filters/Core/CMakeFiles/vtkFiltersCore.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkAppendArcLength.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkAppendFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkAppendPolyData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkAppendSelection.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkArrayCalculator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkAssignAttribute.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkAttributeDataToFieldDataFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkBinCellDataFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkCellDataToPointData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkCleanPolyData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkClipPolyData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkCompositeDataProbeFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkConnectivityFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkContourFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkContourGrid.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkContourHelper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkContour3DLinearGrid.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkDataObjectGenerator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkDataObjectToDataSetFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkDataSetEdgeSubdivisionCriterion.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkDataSetToDataObjectFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkDecimatePolylineFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkDecimatePro.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkDelaunay2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkDelaunay3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkElevationFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkExecutionTimer.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkFeatureEdges.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkFieldDataToAttributeDataFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkFlyingEdges2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkFlyingEdges3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkFlyingEdgesPlaneCutter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkGlyph2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkGlyph3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkHedgeHog.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkHull.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkIdFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkMarchingCubes.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkMarchingSquares.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkMaskFields.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkMaskPoints.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkMaskPolyData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkMassProperties.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkMergeDataObjectFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkMergeFields.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkMergeFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkMoleculeAppend.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkMultiObjectMassProperties.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkPlaneCutter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkPointDataToCellData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkPolyDataConnectivityFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkPolyDataNormals.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkProbeFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkQuadricClustering.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkQuadricDecimation.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkRearrangeFields.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkRemoveDuplicatePolys.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkResampleToImage.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkResampleWithDataSet.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkReverseSense.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkSimpleElevationFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkSmoothPolyDataFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkSphereTreeFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkStaticCleanPolyData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkStripper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkStructuredGridOutlineFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkSynchronizedTemplates2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkSynchronizedTemplates3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkSynchronizedTemplatesCutter3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkTensorGlyph.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkThreshold.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkThresholdPoints.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkTransposeTable.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkTriangleFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkTriangleMeshPointNormals.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkTubeFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkUnstructuredGridQuadricDecimation.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkVectorDot.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkVectorNorm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkVoronoi2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkWindowedSincPolyDataFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkCutter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkCompositeCutter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkGridSynchronizedTemplates3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkRectilinearSynchronizedTemplates.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkEdgeSubdivisionCriterion.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkStreamingTessellator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkImplicitPolyDataDistance.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkStreamerBase.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkCenterOfMass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkImageAppend.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkStructuredGridAppend.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Core/vtkAppendCompositeDataLeaves.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Filters/Core/vtkFiltersCoreModule.h"
    )
endif()

