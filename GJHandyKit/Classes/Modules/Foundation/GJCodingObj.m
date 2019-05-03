//
//  GJCodingObj.m
//  GJHandyKit
//
//  Created by Gaojin Hsu on 2019/4/19.
//

#import "GJCodingObj.h"
#import <objc/runtime.h>

@implementation GJCodingObj

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        Class c = self.class;
        // 截取类和父类的成员变量
        while (c && c != [NSObject class]) {
            unsigned int count = 0;
            Ivar *ivars = class_copyIvarList(c, &count);
            for (int i = 0; i < count; i++) {
                
                NSString *key = [NSString stringWithUTF8String:ivar_getName(ivars[i])];
                
                id value = [aDecoder decodeObjectForKey:key];
                if (value) {
                    [self setValue:value forKey:key];
                }
            }
            // 获得c的父类
            c = [c superclass];
            free(ivars);
        }
        
        
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    Class c = self.class;
    // 截取类和父类的成员变量
    while (c && c != [NSObject class]) {
        unsigned int count = 0;
        
        Ivar *ivars = class_copyIvarList(c, &count);
        
        for (int i = 0; i < count; i++) {
            Ivar ivar = ivars[i];
            NSString *key = [NSString stringWithUTF8String:ivar_getName(ivar)];
            
            id value = [self valueForKey:key];
            if (![value conformsToProtocol:@protocol(NSCoding)]) {
                continue;
            }
            [aCoder encodeObject:value forKey:key];
        }
        c = [c superclass];
        // 释放内存
        free(ivars);
    }
}

@end
