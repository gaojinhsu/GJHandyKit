//
//  NSArray+GJSafety.h
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (GJSafety)

- (nullable id)gj_objectAtIndex:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
