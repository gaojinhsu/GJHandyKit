//
//  CALayer+GJHandy.h
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/27.
//

#import <QuartzCore/QuartzCore.h>

NS_ASSUME_NONNULL_BEGIN

@interface CALayer (GJHandy)

- (void)setGj_center:(CGPoint)center;
- (CGPoint)gj_center;

- (void)setGj_size:(CGSize) size;
- (CGSize)gj_size;

- (void)addFadeAnimationWithDuration:(NSTimeInterval)duration curve:(UIViewAnimationCurve)curve;

- (void)removePreviousFadeAnimation;

@property (nonatomic) CGFloat transformScale;        ///< key path "tranform.scale"

@end

NS_ASSUME_NONNULL_END
