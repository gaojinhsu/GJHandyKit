//
//  NSMutableDictionary+GJSafety.h
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableDictionary (GJSafety)

- (void)gj_setObject:(_Nonnull id)anObj forKey:(_Nonnull id)key;

@end

NS_ASSUME_NONNULL_END
