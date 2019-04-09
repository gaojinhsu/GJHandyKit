//
//  NSArray+GJSafety.m
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/8.
//

#import "NSArray+GJSafety.h"

@implementation NSArray (GJSafety)

- (nullable id)gj_objectAtIndex:(NSUInteger)index {
    if (self.count > index) {
        return [self objectAtIndex:index];
    }
    return nil;
}

@end
