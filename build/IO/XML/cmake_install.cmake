# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOXML-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkIOXML-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/IO/XML/CMakeFiles/vtkIOXML.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkRTXMLPolyDataReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLCompositeDataReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLCompositeDataWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLDataReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLDataSetWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLDataObjectWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLFileReadTester.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLGenericDataObjectReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLHierarchicalBoxDataFileConverter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLHierarchicalBoxDataReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLHierarchicalBoxDataWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLHierarchicalDataReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLHyperTreeGridReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLHyperTreeGridWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLImageDataReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLImageDataWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLMultiBlockDataReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLMultiBlockDataWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLMultiGroupDataReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLPDataReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLPDataObjectReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLPImageDataReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLPolyDataReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLPolyDataWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLPPolyDataReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLPRectilinearGridReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLPStructuredDataReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLPStructuredGridReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLPTableReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLPUnstructuredDataReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLPUnstructuredGridReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLPartitionedDataSetReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLPartitionedDataSetWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLPartitionedDataSetCollectionReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLPartitionedDataSetCollectionWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLRectilinearGridReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLRectilinearGridWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLStructuredDataReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLStructuredDataWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLStructuredGridReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLStructuredGridWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLTableReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLTableWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLUniformGridAMRReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLUniformGridAMRWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLUnstructuredDataReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLUnstructuredDataWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLUnstructuredGridReader.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLUnstructuredGridWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLWriterC.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/IO/XML/vtkXMLWriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/IO/XML/vtkIOXMLModule.h"
    )
endif()

