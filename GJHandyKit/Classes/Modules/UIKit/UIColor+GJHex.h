//
//  UIColor+GJHex.h
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (GJHex)

/**
 通过HEX字符 "#00FF00" (#RRGGBB)得到颜色
 
 @param hexString 格式类似于 "#00FF00"的HEX字符串
 @return UIColor 实例
 */
+ (UIColor *)gj_colorWithHexString:(NSString *)hexString;


/**
 返回一个颜色的HEX字符
 
 @return 格式类似于 "#00FF00"的HEX字符串
 */
- (NSString *)gj_hexString;

@end

NS_ASSUME_NONNULL_END
