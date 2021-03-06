# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles/VTKConfig.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/build/VTKConfigVersion.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkexportheader.cmake.in"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/VTKGenerateExportHeader.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkInitializeBuildType.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/pythonmodules.h.in"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/UseVTK.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/TopologicalSort.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtk-forward.c.in"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkGroups.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkEncodeString.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkForwardingExecutable.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkHashSource.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkJavaWrapping.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkModuleAPI.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkModuleHeaders.cmake.in"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkModuleInfo.cmake.in"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkModuleMacros.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkModuleMacrosPython.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkMPI.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkExternalModuleMacros.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkObjectFactory.cxx.in"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkObjectFactory.h.in"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkPythonPackages.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkPythonWrapping.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkTargetLinkLibrariesWithDynamicLookup.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkThirdParty.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkWrapHierarchy.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkWrapJava.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkWrapperInit.data.in"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkWrapping.cmake"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/CMake/vtkWrapPython.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/VTKTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/VTKTargets.cmake"
         "/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles/Export/lib/cmake/vtk-8.2/VTKTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/VTKTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/VTKTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles/Export/lib/cmake/vtk-8.2/VTKTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/build/CMakeFiles/Export/lib/cmake/vtk-8.2/VTKTargets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/vtk-8.2" TYPE FILE FILES "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/Copyright.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/biyeuphuong/Desktop/CIS541/build/Remote/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Utilities/KWIML/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Utilities/KWSys/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/utf8/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Common/Core/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Common/Math/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Common/Misc/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Common/System/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Common/Transforms/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Common/DataModel/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Common/Color/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Common/ExecutionModel/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Common/ComputationalGeometry/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/Core/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/General/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Imaging/Core/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Imaging/Fourier/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/eigen/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/Statistics/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/Extraction/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Infovis/Core/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/Geometry/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/Sources/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Rendering/Core/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/zlib/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/freetype/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Rendering/FreeType/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Rendering/Context2D/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Charts/Core/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Utilities/DICOMParser/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/doubleconversion/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/lz4/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/lzma/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/Core/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/Legacy/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/expat/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/XMLParser/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Domains/Chemistry/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/glew/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Rendering/OpenGL2/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Domains/ChemistryOpenGL2/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/XML/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Parallel/Core/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/AMR/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/FlowPaths/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/Generic/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Imaging/Sources/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/Hybrid/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/HyperTree/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Imaging/General/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/Imaging/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/Modeling/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/Parallel/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/ParallelImaging/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/Points/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/Programmable/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/SMP/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/Selection/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/Texture/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/Topology/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/verdict/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Filters/Verdict/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Utilities/MetaIO/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/jpeg/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/png/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/tiff/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/Image/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Imaging/Hybrid/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Infovis/Layout/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Interaction/Style/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Imaging/Color/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Rendering/Annotation/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Rendering/Volume/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Interaction/Widgets/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Views/Core/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libproj/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Geovis/Core/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/hdf5/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/AMR/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/Asynchronous/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/pugixml/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/CityGML/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/EnSight/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/netcdf/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/exodusII/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/Exodus/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/gl2ps/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Rendering/GL2PSOpenGL2/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/Export/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/ExportOpenGL2/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libharu/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/ExportPDF/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/Geometry/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/Import/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/Infovis/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/LSDyna/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/MINC/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/ogg/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/theora/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/Movie/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/NetCDF/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/PLY/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/jsoncpp/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/Parallel/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/ParallelXML/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/sqlite/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/SQL/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/SegY/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/TecplotTable/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/VeraOut/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/IO/Video/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Imaging/Math/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Imaging/Morphological/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Imaging/Statistics/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Imaging/Stencil/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Interaction/Image/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Rendering/ContextOpenGL2/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Rendering/Image/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Rendering/LOD/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Rendering/Label/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Rendering/VolumeOpenGL2/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Views/Context2D/cmake_install.cmake")
  include("/Users/biyeuphuong/Desktop/CIS541/build/Views/Infovis/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/biyeuphuong/Desktop/CIS541/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
