//
//  TestCRoute.m
//  testC
//
//  Created by Suzhibin on 2019/6/4.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "TestCRoute.h"
#import "TestCViewController.h"
@implementation TestCRoute
+ (void)load {
    [MGJRouter registerURLPattern:URLWITHTestC toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[MGJRouterParameterUserInfo][KEYWITHNavigation];
        TestCViewController *testCVC = [[TestCViewController alloc] init];
        [navigationVC pushViewController:testCVC animated:YES];
    }];
}
@end
