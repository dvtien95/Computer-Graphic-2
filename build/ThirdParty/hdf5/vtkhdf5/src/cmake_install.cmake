# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkhdf5-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtkhdf5-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2/vtkhdf5/src" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/hdf5.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5api_adpt.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5public.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/vtk_hdf5_mangle.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Apkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Apublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5ACpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5ACpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Bpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Bpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5B2pkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5B2public.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Cpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Cpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Dpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Dpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Epkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Epublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5EApkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Fpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Fpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5FApkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5FDcore.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5FDdirect.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5FDfamily.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5FDlog.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5FDmpi.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5FDmpio.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5FDmulti.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5FDpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5FDpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5FDsec2.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5FDstdio.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5FDwindows.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5FSpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5FSpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Gpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Gpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5HFpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5HFpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5HGpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5HGpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5HLpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5HLpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Ipkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Ipublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Lpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Lpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5MMpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5MPpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Opkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Opublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Oshared.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Ppkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Ppublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5PBpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5PLextern.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5PLpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5PLpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Rpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Rpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Spkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Spublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5SMpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Tpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Tpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Zpkg.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Zpublic.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/vtk_hdf5_mangle.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Edefin.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Einit.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Epubgen.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5Eterm.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5version.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/hdf5/vtkhdf5/src/H5overflow.h"
    )
endif()

