//
//  NSMutableArray+GJSafety.h
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableArray (GJSafety)

- (nullable id)gj_objectAtIndex:(NSUInteger)index;

- (void)gj_addObject:(_Nonnull id)obj;

- (void)gj_insertObject:(_Nonnull id)anObj atIndex:(NSUInteger)index;

- (void)gj_removeObjectAtIndex:(NSUInteger)index;

- (void)gj_replaceObjectAtIndex:(NSUInteger)index withObject:anObj;

@end

NS_ASSUME_NONNULL_END
