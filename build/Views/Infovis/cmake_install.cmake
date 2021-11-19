# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkViewsInfovis-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkViewsInfovis-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Views/Infovis/CMakeFiles/vtkViewsInfovis.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkApplyColors.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkApplyIcons.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkDendrogramItem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkGraphItem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkGraphLayoutView.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkHeatmapItem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkHierarchicalGraphPipeline.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkHierarchicalGraphView.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkIcicleView.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkInteractorStyleAreaSelectHover.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkInteractorStyleTreeMapHover.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkParallelCoordinatesHistogramRepresentation.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkParallelCoordinatesRepresentation.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkParallelCoordinatesView.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkRenderedGraphRepresentation.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkRenderedHierarchyRepresentation.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkRenderedRepresentation.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkRenderedSurfaceRepresentation.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkRenderedTreeAreaRepresentation.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkRenderView.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkSCurveSpline.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkTanglegramItem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkTreeAreaView.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkTreeHeatmapItem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkTreeMapView.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkTreeRingView.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Views/Infovis/vtkViewUpdater.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Views/Infovis/vtkViewsInfovisModule.h"
    )
endif()

