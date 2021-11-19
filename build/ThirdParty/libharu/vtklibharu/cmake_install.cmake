# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2/vtklibharu/include" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_types.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_consts.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_version.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_annotation.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_catalog.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_conf.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_destination.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_doc.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_encoder.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_encrypt.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_encryptdict.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_error.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_ext_gstate.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_font.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_fontdef.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_gstate.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_image.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_info.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_list.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_mmgr.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_objects.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_outline.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_pages.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_page_label.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_streams.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_u3d.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_utils.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_pdfa.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_3dmeasure.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/hpdf_exdata.h"
    "/Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libharu/vtklibharu/include/vtk_haru_mangle.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libharu/vtklibharu/include/hpdf_config.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libharu/vtklibharu/src/cmake_install.cmake")

endif()

