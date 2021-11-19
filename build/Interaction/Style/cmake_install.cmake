# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkInteractionStyle-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionStyle-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionStyle-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionStyle-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionStyle-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkInteractionStyle-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionStyle-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionStyle-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionStyle-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionStyle-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Interaction/Style/CMakeFiles/vtkInteractionStyle.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleDrawPolygon.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleFlight.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleImage.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleJoystickActor.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleJoystickCamera.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleMultiTouchCamera.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleRubberBand2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleRubberBand3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleRubberBandPick.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleRubberBandZoom.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleTerrain.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleTrackballActor.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleTrackballCamera.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleTrackball.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleUnicam.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleUser.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkInteractorStyleSwitch.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Interaction/Style/vtkParallelCoordinatesInteractorStyle.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Interaction/Style/vtkInteractionStyleObjectFactory.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Interaction/Style/vtkInteractionStyleModule.h"
    )
endif()

