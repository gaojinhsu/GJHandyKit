//
//  NSMutableArray+GJSafety.m
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/8.
//

#import "NSMutableArray+GJSafety.h"

@implementation NSMutableArray (GJSafety)

- (nullable id)gj_objectAtIndex:(NSUInteger)index {
    if (self.count > index) {
        return [self objectAtIndex:index];
    }
    return nil;
}

- (void)gj_addObject:(_Nonnull id)anObj {
    if (anObj) {
        [self addObject:anObj];
    }
}

- (void)gj_insertObject:(id)anObj atIndex:(NSUInteger)index {
    if (anObj && index < self.count) {
        [self insertObject:anObj atIndex:index];
    }
}

- (void)gj_removeObjectAtIndex:(NSUInteger)index {
    if (index < self.count) {
        [self removeObjectAtIndex:index];
    }
}

- (void)gj_replaceObjectAtIndex:(NSUInteger)index withObject:anObj {
    if (index < self.count && anObj) {
        [self replaceObjectAtIndex:index withObject:anObj];
    }
}

@end
