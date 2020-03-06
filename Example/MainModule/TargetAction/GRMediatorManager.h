//
//  GRMediatorManager.h
//  MainModule_Example
//
//  Created by 东哥 on 4/3/2020.
//  Copyright © 2020 1049646716@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GRMediatorManager : NSObject

// 本地组件调用入口 对声明参数添加属性（__nullable）时参数可传nil，传（__nonnull）时参数不能为空
+ (id)performTarget:(NSString *__nullable)targetName action:(NSString *__nullable )actionName params:(id __nullable)params isRequiredReturnValue: (BOOL)isRequiredReturnValue;

@end

NS_ASSUME_NONNULL_END
