//
//  UIImage+GJColor.h
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (GJColor)

+ (UIImage *)gj_imageWithColor:(UIColor *)color;

+ (UIImage *)gj_imageWithColor:(UIColor *)color size:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
