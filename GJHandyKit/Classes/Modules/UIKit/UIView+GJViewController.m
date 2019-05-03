//
//  UIView+GJViewController.m
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/23.
//

#import "UIView+GJViewController.h"

@implementation UIView (GJViewController)

- (UIViewController*)gj_viewController {
    //获取当前view的superView对应的控制器
    UIResponder *next = [self nextResponder];
    do {
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
        }
        next = [next nextResponder];
    } while (next != nil);
    return nil;
}

@end
