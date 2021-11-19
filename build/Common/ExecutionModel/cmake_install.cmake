# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkCommonExecutionModel-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkCommonExecutionModel-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/Common/ExecutionModel/CMakeFiles/vtkCommonExecutionModel.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkAlgorithmOutput.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkAnnotationLayersAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkArrayDataAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkCachedStreamingDemandDrivenPipeline.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkCastToConcrete.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkCompositeDataPipeline.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkCompositeDataSetAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkDataObjectAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkDataSetAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkDemandDrivenPipeline.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkDirectedGraphAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkEnsembleSource.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkExecutive.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkExtentSplitter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkExtentTranslator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkFilteringInformationKeyManager.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkGraphAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkHierarchicalBoxDataSetAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkHyperTreeGridAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkImageAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkImageInPlaceFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkImageProgressIterator.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkImageToStructuredGrid.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkImageToStructuredPoints.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkInformationDataObjectMetaDataKey.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkInformationExecutivePortKey.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkInformationExecutivePortVectorKey.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkInformationIntegerRequestKey.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkMoleculeAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkMultiBlockDataSetAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkMultiTimeStepAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkParallelReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkPassInputTypeAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkPiecewiseFunctionAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkPiecewiseFunctionShiftScale.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkPointSetAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkPolyDataAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkReaderAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkReaderExecutive.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkRectilinearGridAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkScalarTree.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkSimpleImageToImageFilter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkSimpleReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkSimpleScalarTree.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkSpanSpace.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkSphereTree.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkStreamingDemandDrivenPipeline.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkStructuredGridAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkTableAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkSMPProgressObserver.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkThreadedCompositeDataPipeline.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkThreadedImageAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkTreeAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkTrivialConsumer.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkTrivialProducer.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkUndirectedGraphAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkUnstructuredGridAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkUnstructuredGridBaseAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkProgressObserver.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkSelectionAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkExtentRCBPartitioner.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkUniformGridPartitioner.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkUniformGridAMRAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkOverlappingAMRAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Common/ExecutionModel/vtkNonOverlappingAMRAlgorithm.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/Common/ExecutionModel/vtkCommonExecutionModelModule.h"
    )
endif()

