# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersGeneral-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersGeneral-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Filters/General/CMakeFiles/vtkFiltersGeneral.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkAnnotationLink.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkAppendPoints.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkApproximatingSubdivisionFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkAreaContourSpectrumFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkAxes.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkBlankStructuredGrid.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkBlankStructuredGridWithImage.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkBlockIdScalars.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkBoxClipDataSet.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkBrownianPoints.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkCellCenters.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkCellDerivatives.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkCellValidator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkClipClosedSurface.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkClipConvexPolyData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkClipDataSet.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkClipVolume.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkCoincidentPoints.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkContourTriangulator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkCountFaces.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkCountVertices.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkCursor2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkCursor3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkCurvatures.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkDataSetGradient.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkDataSetGradientPrecompute.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkDataSetTriangleFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkDeformPointSet.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkDensifyPolyData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkDicer.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkDiscreteFlyingEdges2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkDiscreteFlyingEdges3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkDiscreteFlyingEdgesClipper2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkDiscreteMarchingCubes.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkEdgePoints.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkExtractSelectedFrustum.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkExtractSelectionBase.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkGradientFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkGraphLayoutFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkGraphToPoints.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkHierarchicalDataLevelFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkHyperStreamline.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkIconGlyphFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkImageMarchingCubes.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkInterpolateDataSetAttributes.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkInterpolatingSubdivisionFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkLevelIdScalars.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkLinkEdgels.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkMergeCells.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkMultiBlockDataGroupFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkMultiBlockFromTimeSeriesFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkMultiBlockMergeFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkMultiThreshold.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkOBBDicer.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkOBBTree.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkPassThrough.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkPointConnectivityFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkPolyDataStreamer.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkPolyDataToReebGraphFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkProbePolyhedron.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkQuadraturePointInterpolator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkQuadraturePointsGenerator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkQuadratureSchemeDictionaryGenerator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkQuantizePolyDataPoints.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkRandomAttributeGenerator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkRectilinearGridClip.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkRectilinearGridToTetrahedra.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkRecursiveDividingCubes.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkReflectionFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkRotationFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkSampleImplicitFunctionFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkShrinkFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkShrinkPolyData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkSpatialRepresentationFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkSplineFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkSplitByCellScalarFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkSplitField.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkStructuredGridClip.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkSubdivisionFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkSubPixelPositionEdgels.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkSynchronizeTimeFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkTableBasedClipDataSet.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkTableToPolyData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkTableToStructuredGrid.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkTemporalPathLineFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkTemporalStatistics.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkTessellatorFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkTimeSourceExample.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkTransformFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkTransformPolyDataFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkUncertaintyTubeFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkVertexGlyphFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkVolumeContourSpectrumFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkVoxelContoursToSurfaceFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkWarpLens.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkWarpScalar.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkWarpTo.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkWarpVector.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkYoungsMaterialInterface.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkMarchingContourFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkRectilinearGridToPointSet.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkGraphWeightEuclideanDistanceFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkGraphWeightFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkImageDataToPointSet.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkIntersectionPolyDataFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkBooleanOperationPolyDataFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkLoopBooleanPolyDataFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkDistancePolyDataFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkOverlappingAMRLevelIdScalars.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkExtractArray.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkMatricizeArray.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkNormalizeMatrixVectors.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkPassArrays.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkSplitColumnComponents.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/General/vtkCellTreeLocator.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Filters/General/vtkFiltersGeneralModule.h"
    )
endif()

