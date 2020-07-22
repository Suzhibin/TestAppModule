//
//  CTMediator+TestA.m
//  TestBasis
//
//  Created by Suzhibin on 2019/7/17.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "CTMediator+TestA.h"

@implementation CTMediator (TestA)
- (UIViewController *)ModuleA_viewControllerWithCallback:(void(^)(NSString *result))callback {
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    /*
     1. 字符串 是类名 Target_xxx.h 中的 xxx 部分
     2. 字符串是 Target_xxx.h 中 定义的 Action_xxxx 函数名的 xxxx 部分
     */
    return [self performTarget:@"TestA" action:@"TestAViewController" params:params shouldCacheTarget:NO];
}


@end
