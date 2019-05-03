//
//  UIView+GJViewController.h
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/23.
//



NS_ASSUME_NONNULL_BEGIN

@interface UIView (GJViewController)


/**
 获取view所在viewcontroller

 @return Instance of an ViewController
 */
- (UIViewController*)gj_viewController;

@end

NS_ASSUME_NONNULL_END
