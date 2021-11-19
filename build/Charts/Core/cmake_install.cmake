# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkChartsCore-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkChartsCore-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Charts/Core/CMakeFiles/vtkChartsCore.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkAxis.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkAxisExtended.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkCategoryLegend.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkChart.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkChartBox.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkChartHistogram2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkChartLegend.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkChartMatrix.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkChartParallelCoordinates.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkChartPie.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkChartXY.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkChartXYZ.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkColorLegend.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkColorTransferControlPointsItem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkColorTransferFunctionItem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkCompositeControlPointsItem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkCompositeTransferFunctionItem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkContextArea.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkContextPolygon.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkControlPointsItem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkInteractiveArea.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkLookupTableItem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPiecewiseControlPointsItem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPiecewiseFunctionItem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPiecewisePointHandleItem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlot.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlot3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlotArea.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlotBag.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlotBar.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlotBox.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlotFunctionalBag.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlotGrid.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlotHistogram2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlotLine.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlotLine3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlotParallelCoordinates.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlotPie.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlotPoints.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlotPoints3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlotStacked.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkPlotSurface.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkScalarsToColorsItem.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Charts/Core/vtkScatterPlotMatrix.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Charts/Core/vtkChartsCoreModule.h"
    )
endif()

