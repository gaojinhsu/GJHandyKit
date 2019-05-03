//
//  NSMutableDictionary+GJSafety.m
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/8.
//

#import "NSMutableDictionary+GJSafety.h"

@implementation NSMutableDictionary (GJSafety)

- (void)gj_setObject:(_Nonnull id)anObj forKey:(_Nonnull id)key {
    if (!key || !anObj) {
        return;
    }
    [self setObject:anObj forKey:key];
}

@end
