//
//  GJGlobalMacros.h
//  Pods
//
//  Created by Gaojin Hsu on 2019/4/8.
//

#ifndef GJGlobalMacros_h
#define GJGlobalMacros_h

#ifndef GJWeakify
#if DEBUG
#if __has_feature(objc_arc)
#define GJWeakify(object) autoreleasepool{} __weak __typeof__(object) weak##_##object = object;
#else
#define GJWeakify(object) autoreleasepool{} __block __typeof__(object) block##_##object = object;
#endif
#else
#if __has_feature(objc_arc)
#define GJWeakify(object) try{} @finally{} {} __weak __typeof__(object) weak##_##object = object;
#else
#define GJWeakify(object) try{} @finally{} {} __block __typeof__(object) block##_##object = object;
#endif
#endif
#endif

#ifndef GJStrongify
#if DEBUG
#if __has_feature(objc_arc)
#define GJStrongify(object) autoreleasepool{} __typeof__(object) object = weak##_##object;
#else
#define GJStrongify(object) autoreleasepool{} __typeof__(object) object = block##_##object;
#endif
#else
#if __has_feature(objc_arc)
#define GJStrongify(object) try{} @finally{} __typeof__(object) object = weak##_##object;
#else
#define GJStrongify(object) try{} @finally{} __typeof__(object) object = block##_##object;
#endif
#endif
#endif


#endif /* GJGlobalMacros_h */
