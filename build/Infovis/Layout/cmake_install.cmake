# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkInfovisLayout-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkInfovisLayout-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Infovis/Layout/CMakeFiles/vtkInfovisLayout.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkArcParallelEdgeStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkAreaLayout.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkAreaLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkAssignCoordinates.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkAssignCoordinatesLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkAttributeClustering2DLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkBoxLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkCirclePackFrontChainLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkCirclePackLayout.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkCirclePackLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkCirclePackToPolyData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkCircularLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkClustering2DLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkCommunity2DLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkConeLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkConstrained2DLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkCosmicTreeLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkEdgeLayout.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkEdgeLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkFast2DLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkForceDirectedLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkGeoEdgeStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkGeoMath.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkGraphLayout.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkGraphLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkIncrementalForceLayout.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkPassThroughEdgeStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkPassThroughLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkPerturbCoincidentVertices.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkRandomLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkSimple2DLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkSimple3DCirclesStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkSliceAndDiceLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkSpanTreeLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkSplineGraphEdges.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkSquarifyLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkStackedTreeLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkTreeLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkTreeMapLayout.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkTreeMapLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkTreeMapToPolyData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkTreeOrbitLayoutStrategy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkTreeRingToPolyData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Infovis/Layout/vtkKCoreLayout.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Infovis/Layout/vtkInfovisLayoutModule.h"
    )
endif()

