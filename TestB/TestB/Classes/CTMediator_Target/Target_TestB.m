//
//  Target_TestB.m
//  TestB
//
//  Created by Suzhibin on 2019/7/17.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "Target_TestB.h"
#import "TestBViewController.h"
@implementation Target_TestB
- (UIViewController *)Action_TestBViewController:(NSDictionary *)params {
    TestBViewController *testBVC = [[TestBViewController alloc] init];
    if ([testBVC isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return testBVC;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        NSLog(@"%@ 未能实例化页面", NSStringFromSelector(_cmd));
        return [[UIViewController alloc] init];
    }
}

- (UIViewController *)Action_TestBDetailsVCViewController:(NSDictionary *)params {
    TestBDetailsViewController *testBDetailsVC = [[TestBDetailsViewController alloc] init];
    if ([testBDetailsVC isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return testBDetailsVC;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        NSLog(@"%@ 未能实例化页面", NSStringFromSelector(_cmd));
        return [[UIViewController alloc] init];
    }
}
@end
