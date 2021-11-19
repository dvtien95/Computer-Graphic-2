# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingCore-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingCore-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Rendering/Core/CMakeFiles/vtkRenderingCore.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkGPUInfoListArray.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkNoise200x200.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkPythagoreanQuadruples.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkRayCastStructures.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkRenderingCoreEnums.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkTDxMotionEventInfo.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkAbstractMapper3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkAbstractMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkAbstractPicker.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkAbstractVolumeMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkActor2DCollection.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkActor2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkActorCollection.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkActor.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkAssembly.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkBackgroundColorMonitor.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkBillboardTextActor3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkCameraActor.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkCamera.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkCameraInterpolator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkCellCenterDepthSort.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkCIEDE2000.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkColorTransferFunction.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkCompositeDataDisplayAttributes.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkCompositeDataDisplayAttributesLegacy.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkCompositePolyDataMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkCoordinate.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkCullerCollection.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkCuller.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkDataSetMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkDiscretizableColorTransferFunction.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkDistanceToCamera.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkFollower.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkFrameBufferObjectBase.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkFrustumCoverageCuller.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkFXAAOptions.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkGenericRenderWindowInteractor.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkGenericVertexAttributeMapping.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkGlyph3DMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkGPUInfo.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkGPUInfoList.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkGraphicsFactory.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkGraphMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkGraphToGlyphs.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkHardwareSelector.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkHierarchicalPolyDataMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkImageActor.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkImageMapper3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkImageMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkImageProperty.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkImageSlice.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkImageSliceMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkInteractorEventRecorder.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkInteractorObserver.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkLabeledContourMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkLightActor.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkLightCollection.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkLight.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkLightKit.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkLogLookupTable.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkLookupTableWithEnabling.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkMapArrayValues.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkMapper2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkMapperCollection.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkObserverMediator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkPointGaussianMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkPolyDataMapper2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkPolyDataMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkProp3DCollection.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkProp3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkProp3DFollower.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkPropAssembly.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkPropCollection.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkProp.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkProperty2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkProperty.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkRendererCollection.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkRenderer.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkRendererDelegate.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkRendererSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkRenderPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkRenderState.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkRenderTimerLog.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkRenderWindowCollection.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkRenderWindow.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkRenderWindowInteractor.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkRenderWindowInteractor3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkSelectVisiblePoints.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkShaderDeviceAdapter2.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkSkybox.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkTextActor.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkTextActor3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkTexture.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkTexturedActor2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkTransformCoordinateSystems.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkTransformInterpolator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkTupleInterpolator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkViewDependentErrorMetric.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkViewport.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkVisibilitySort.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkVolumeCollection.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkVolume.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkVolumeProperty.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkWindowLevelLookupTable.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkWindowToImageFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkAssemblyNode.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkAssemblyPath.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkAssemblyPaths.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkAreaPicker.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkPicker.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkAbstractPropPicker.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkPropPicker.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkPickingManager.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkLODProp3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkWorldPointPicker.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkCellPicker.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkPointPicker.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkRenderedAreaPicker.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkScenePicker.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkInteractorStyle.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkInteractorStyleSwitchBase.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkInteractorStyle3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkTDxInteractorStyle.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkTDxInteractorStyleCamera.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkTDxInteractorStyleSettings.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkStringToImage.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkTextMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkTextProperty.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkTextPropertyCollection.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkTextRenderer.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkAbstractInteractionDevice.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkAbstractRenderDevice.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/Core/vtkRenderWidget.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Rendering/Core/vtkRenderingCoreModule.h"
    )
endif()

