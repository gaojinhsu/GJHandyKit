//
//  UIView+GJHandy.h
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (GJHandy)

- (void)setGj_X:(CGFloat)x;
- (CGFloat)gj_x;

- (void)setGj_y:(CGFloat)y;
- (CGFloat)gj_y;

- (void)setGj_height:(CGFloat)height;
- (CGFloat)gj_height;

- (void)setGj_width:(CGFloat)width;
- (CGFloat)gj_width;

- (void)setGj_size:(CGSize)size;
- (CGSize)gj_size;

- (void)setGj_origin:(CGPoint)origin;
- (CGPoint)gj_origin;

- (void)setGj_left:(CGFloat)left;
- (CGFloat)gj_left;

- (void)setGj_right:(CGFloat)right;
- (CGFloat)gj_right;

- (void)setGj_top:(CGFloat)top;
- (CGFloat)gj_top;

- (void)setGj_bottom:(CGFloat)bottom;
- (CGFloat)gj_bottom;

- (void)setGj_centerX:(CGFloat)centerX;
- (CGFloat)gj_centerX;

- (void)setGj_centerY:(CGFloat)centerY;
- (CGFloat)gj_centerY;

@end

NS_ASSUME_NONNULL_END
