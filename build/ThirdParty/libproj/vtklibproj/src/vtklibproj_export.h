
#ifndef vtklibproj_EXPORT_H
#define vtklibproj_EXPORT_H

#ifdef VTKLIBPROJ_STATIC_DEFINE
#  define vtklibproj_EXPORT
#  define VTKLIBPROJ_NO_EXPORT
#else
#  ifndef vtklibproj_EXPORT
#    ifdef vtklibproj_EXPORTS
        /* We are building this library */
#      define vtklibproj_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define vtklibproj_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef VTKLIBPROJ_NO_EXPORT
#    define VTKLIBPROJ_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef VTKLIBPROJ_DEPRECATED
#  define VTKLIBPROJ_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef VTKLIBPROJ_DEPRECATED_EXPORT
#  define VTKLIBPROJ_DEPRECATED_EXPORT vtklibproj_EXPORT VTKLIBPROJ_DEPRECATED
#endif

#ifndef VTKLIBPROJ_DEPRECATED_NO_EXPORT
#  define VTKLIBPROJ_DEPRECATED_NO_EXPORT VTKLIBPROJ_NO_EXPORT VTKLIBPROJ_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKLIBPROJ_NO_DEPRECATED
#    define VTKLIBPROJ_NO_DEPRECATED
#  endif
#endif

#endif /* vtklibproj_EXPORT_H */
