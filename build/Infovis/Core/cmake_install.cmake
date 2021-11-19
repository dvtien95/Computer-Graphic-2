# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkInfovisCore-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkInfovisCore-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Infovis/Core/CMakeFiles/vtkInfovisCore.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkAddMembershipArray.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkAdjacencyMatrixToEdgeTable.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkArrayNorm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkArrayToTable.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkCollapseGraph.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkCollapseVerticesByArray.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkContinuousScatterplot.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkDataObjectToTable.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkDotProductSimilarity.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkExtractSelectedTree.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkEdgeCenters.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkExpandSelectedGraph.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkExtractSelectedGraph.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkGenerateIndexArray.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkGraphHierarchicalBundleEdges.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkGroupLeafVertices.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkMergeColumns.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkMergeGraphs.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkMergeTables.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkMutableGraphHelper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkNetworkHierarchy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkPipelineGraphSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkPruneTreeFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkRandomGraphSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkReduceTable.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkRemoveIsolatedVertices.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkSparseArrayToTable.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkStreamGraph.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkStringToCategory.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkStringToNumeric.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkTableToArray.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkTableToGraph.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkTableToSparseArray.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkTableToTreeFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkThresholdGraph.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkThresholdTable.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkTransferAttributes.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkTransposeMatrix.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkTreeFieldAggregator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkTreeDifferenceFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkTreeLevelsFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkVertexDegree.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkRemoveHiddenData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Core/vtkKCoreDecomposition.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Infovis/Core/vtkInfovisCoreModule.h"
    )
endif()

