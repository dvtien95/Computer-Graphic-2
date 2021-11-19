# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersSources-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkFiltersSources-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Filters/Sources/CMakeFiles/vtkFiltersSources.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkArcSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkArrowSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkButtonSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkCellTypeSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkConeSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkCubeSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkCylinderSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkDiskSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkEllipseArcSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkEllipticalButtonSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkFrustumSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkGlyphSource2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkHyperTreeGridSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkLineSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkOutlineCornerFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkOutlineCornerSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkOutlineSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkParametricFunctionSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkPlaneSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkPlatonicSolidSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkPointSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkPolyLineSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkProgrammableDataObjectSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkProgrammableSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkRandomHyperTreeGridSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkRectangularButtonSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkRegularPolygonSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkSelectionSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkSphereSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkSuperquadricSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkTessellatedBoxSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkTextSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkTexturedSphereSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkGraphToPolyData.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Filters/Sources/vtkDiagonalMatrixSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Filters/Sources/vtkFiltersSourcesModule.h"
    )
endif()

