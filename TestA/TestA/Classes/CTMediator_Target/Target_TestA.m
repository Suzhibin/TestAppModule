//
//  Target_TestA.m
//  TestA
//
//  Created by Suzhibin on 2019/7/17.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "Target_TestA.h"
#import "TestAViewController.h"
@implementation Target_TestA
- (UIViewController *)Action_TestAViewController:(NSDictionary *)params {
    TestAViewController *testAVC = [[TestAViewController alloc] init];
    if ([testAVC isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return testAVC;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        NSLog(@"%@ 未能实例化页面", NSStringFromSelector(_cmd));
        return [[UIViewController alloc] init];
    }
}
@end
