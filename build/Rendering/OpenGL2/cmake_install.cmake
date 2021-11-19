# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingOpenGL2-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkRenderingOpenGL2-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Rendering/OpenGL2/CMakeFiles/vtkRenderingOpenGL2.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGL.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkStateStorage.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Rendering/OpenGL2/vtkTDxConfigure.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Rendering/OpenGL2/vtkOpenGLError.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Rendering/OpenGL2/vtkRenderingOpenGLConfigure.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkCocoaMacOSXSDKCompatibility.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Rendering/OpenGL2/vtkRenderingOpenGL2ObjectFactory.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkCameraPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkClearRGBPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkClearZPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkCompositePolyDataMapper2.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkDefaultPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkDepthOfFieldPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkDepthImageProcessingPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkDepthPeelingPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkDualDepthPeelingPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkEDLShading.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkFramebufferPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkGaussianBlurPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkGenericOpenGLRenderWindow.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkHiddenLineRemovalPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkImageProcessingPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkLightingMapPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkLightsPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpaquePass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLActor.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLBillboardTextActor3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLBufferObject.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLCamera.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLFXAAFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLFramebufferObject.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLGL2PSHelper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLGlyph3DHelper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLGlyph3DMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLHardwareSelector.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLHelper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLImageAlgorithmHelper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLImageMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLImageSliceMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLIndexBufferObject.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLInstanceCulling.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLLabeledContourMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLLight.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLPointGaussianMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLPolyDataMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLPolyDataMapper2D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLProperty.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLQuadHelper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLRenderPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLRenderTimer.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLRenderTimerLog.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLRenderUtilities.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLRenderWindow.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLRenderer.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLShaderCache.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLSkybox.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLSphereMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLState.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLStickMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLTextActor.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLTextActor3D.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLTextMapper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLTexture.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLVertexArrayObject.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLVertexBufferObject.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLVertexBufferObjectCache.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOpenGLVertexBufferObjectGroup.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOrderIndependentTranslucentPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkOverlayPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkPanoramicProjectionPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkPixelBufferObject.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkPointFillPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkRenderPassCollection.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkRenderStepsPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkRenderbuffer.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkSSAAPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkSequencePass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkShader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkShaderProgram.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkShadowMapBakerPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkShadowMapPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkSimpleMotionBlurPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkSobelGradientMagnitudePass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkTextureObject.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkTextureUnitManager.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkToneMappingPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkTransformFeedback.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkTranslucentPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkValuePass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkVolumetricPass.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkDataTransferHelper.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkDummyGPUInfoList.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkCocoaRenderWindowInteractor.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkCocoaRenderWindow.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Rendering/OpenGL2/vtkCocoaGLView.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Rendering/OpenGL2/vtkRenderingOpenGL2Module.h"
    )
endif()

