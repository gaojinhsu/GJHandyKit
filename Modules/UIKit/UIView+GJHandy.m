//
//  UIView+GJHandy.m
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/8.
//

#import "UIView+GJHandy.h"

@implementation UIView (GJHandy)

- (void)setGj_x:(CGFloat)x {
    self.frame = CGRectMake(x, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

- (CGFloat)gj_x {
    return self.frame.origin.x;
}

- (void)setGj_y:(CGFloat)y {
    self.frame = CGRectMake(self.frame.origin.x, y, self.frame.size.width, self.frame.size.height);
}

- (CGFloat)gj_y {
    return self.frame.origin.y;
}

- (void)setGj_height:(CGFloat)height {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height);
}

- (CGFloat)gj_height {
    return self.frame.size.height;
}

- (void)setGj_width:(CGFloat)width {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, self.frame.size.height);
}

- (CGFloat)gj_width {
    return self.frame.size.width;
}

- (void)setGj_origin:(CGPoint)origin {
    self.frame = CGRectMake(origin.x, origin.y, self.frame.size.width, self.frame.size.height);
}

- (CGPoint)gj_origin {
    return self.frame.origin;
}

- (void)setGj_size:(CGSize)size {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, size.width, size.height);
}

- (CGSize)gj_size {
    return self.frame.size;
}

- (void)setGj_left:(CGFloat)left {
    self.gj_x = left;
}

- (CGFloat)gj_left {
    return self.gj_x;
}

- (void)setGj_right:(CGFloat)right {
    self.gj_x = self.gj_x - self.gj_width;
}

- (CGFloat)gj_right {
    return self.gj_x + self.gj_width;
}

- (void)setGj_top:(CGFloat)top {
    self.gj_y = top;
}

- (CGFloat)gj_top {
    return self.gj_y;
}

- (void)setGj_bottom:(CGFloat)bottom {
    self.gj_y = bottom - self.gj_height;
}

- (CGFloat)gj_bottom {
    return self.gj_y + self.gj_height;
}

@end
