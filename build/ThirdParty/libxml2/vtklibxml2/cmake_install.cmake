# Install script for directory: /Users/biyeuphuong/Desktop/CIS541/VTK-8.2.0/ThirdParty/libxml2/vtklibxml2

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtklibxml2-8.2.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-8.2.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-8.2.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-8.2.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-8.2.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimeLibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/biyeuphuong/Desktop/CIS541/build/lib/libvtklibxml2-8.2.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-8.2.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-8.2.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/biyeuphuong/Desktop/CIS541/build/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-8.2.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-8.2.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2/vtklibxml2/libxml" TYPE FILE FILES
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xmlversion.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/DOCBparser.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/HTMLparser.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/HTMLtree.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/SAX.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/SAX2.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/c14n.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/catalog.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/chvalid.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/debugXML.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/dict.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/encoding.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/entities.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/globals.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/hash.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/list.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/nanoftp.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/nanohttp.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/parser.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/parserInternals.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/pattern.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/relaxng.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/schemasInternals.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/schematron.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/threads.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/tree.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/uri.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/valid.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/vtk_libxml2_mangle.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xinclude.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xlink.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xmlIO.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xmlautomata.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xmlerror.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xmlexports.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xmlmemory.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xmlmodule.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xmlreader.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xmlregexp.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xmlsave.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xmlschemas.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xmlschemastypes.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xmlstring.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xmlunicode.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xmlwriter.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xpath.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xpathInternals.h"
    "/Users/biyeuphuong/Desktop/CIS541/build/ThirdParty/libxml2/vtklibxml2/libxml/xpointer.h"
    )
endif()

