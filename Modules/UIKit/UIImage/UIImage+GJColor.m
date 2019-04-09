//
//  UIImage+GJColor.m
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/8.
//

#import "UIImage+GJColor.h"

@implementation UIImage (GJColor)

+ (UIImage *)gj_imageWithColor:(UIColor *)color {
    return [self gj_imageWithColor:color size:CGSizeMake(1, 1)];
}

+ (UIImage *)gj_imageWithColor:(UIColor *)color size:(CGSize)size {
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context,color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

@end
