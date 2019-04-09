//
//  UIImage+GJResize.h
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (GJResize)

- (UIImage *)gj_resizeToRect:(CGRect)rect;

@end

NS_ASSUME_NONNULL_END
