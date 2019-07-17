//
//  Target_TestC.m
//  TestC
//
//  Created by Suzhibin on 2019/7/17.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "Target_TestC.h"
#import "TestCViewController.h"
@implementation Target_TestC
- (UIViewController *)Action_TestCViewController:(NSDictionary *)params {
    typedef void (^CallbackType)(NSString *);
    CallbackType callback = params[@"callback"];
    
    TestCViewController *testCVC = [[TestCViewController alloc] init];
    testCVC.TestCCompleteHandler = ^(NSString * _Nonnull text) {
        if (callback) {
            callback(text);
        }
    };
    if ([testCVC isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return testCVC;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        NSLog(@"%@ 未能实例化页面", NSStringFromSelector(_cmd));
        return [[UIViewController alloc] init];
    }
}
@end
