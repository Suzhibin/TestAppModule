//
//  TestARoute.m
//  testA
//
//  Created by Suzhibin on 2019/6/4.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "TestARoute.h"
#import "TestAViewController.h"
@implementation TestARoute
+ (void)load {
    [MGJRouter registerURLPattern:URLWITHTestA toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[MGJRouterParameterUserInfo][KEYWITHNavigation];
        TestAViewController *testAVC = [[TestAViewController alloc] init];
        [navigationVC pushViewController:testAVC animated:YES];
    }];
}
@end
