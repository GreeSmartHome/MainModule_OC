//
//  GRMediatorManager.m
//  MainModule_Example
//
//  Created by 东哥 on 4/3/2020.
//  Copyright © 2020 1049646716@qq.com. All rights reserved.
//

#import "GRMediatorManager.h"

#define SuppressPerformSelectorLeakWarning(Stuff) \
do { \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"") \
Stuff; \
_Pragma("clang diagnostic pop") \
} while (0)

#import <objc/runtime.h>

@implementation GRMediatorManager

// 本地组件调用入口
+ (id)performTarget:(NSString *__nullable)targetName action:(NSString * __nullable )actionName params:(id __nullable)params isRequiredReturnValue: (BOOL)isRequiredReturnValue {
    
    // 1. 获取目标
    Class targetCls = NSClassFromString(targetName);
    if (targetCls == nil) {
        NSLog(@"目标不存在");
        return nil;
    }

    // 2. 获取行为
    SEL sel = NSSelectorFromString(actionName);
    if (sel == nil) {
        NSLog(@"行为不存在");
        return nil;
    }

    //NSObject *obj = [[targetCls alloc] init];
    if (![targetCls respondsToSelector:sel]) {
        NSLog(@"目标不存在该方法");
        return nil;
    }


    if (isRequiredReturnValue) {
        SuppressPerformSelectorLeakWarning(return [targetCls performSelector:sel withObject:params]);
    }else {
        SuppressPerformSelectorLeakWarning([targetCls performSelector:sel withObject:params]);
    }

    return nil;
    
}
@end
