//
//  UIImage+GJResize.m
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/8.
//

#import "UIImage+GJResize.h"

@implementation UIImage (GJResize)

- (UIImage *)gj_resizeToRect:(CGRect)rect {
    CGFloat scale = self.scale;
    CGRect cropRect = (CGRect){CGRectGetMinX(rect) * scale,
        CGRectGetMinY(rect) * scale,
        CGRectGetWidth(rect) * scale,
        CGRectGetHeight(rect) * scale};
    
    CGImageRef imageRef = CGImageCreateWithImageInRect([self CGImage], cropRect);
    UIImage *cropped = [UIImage imageWithCGImage:imageRef scale:self.scale orientation:self.imageOrientation];
    CGImageRelease(imageRef);
    return cropped;
}

@end
