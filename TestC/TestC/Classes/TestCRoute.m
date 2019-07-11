//
//  TestCRoute.m
//  testC
//
//  Created by Suzhibin on 2019/6/4.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "TestCRoute.h"
#import "TestCViewController.h"
#import "TestBasisHeader.h"
@implementation TestCRoute
+ (void)load {
    [MGJRouter registerURLPattern:URLWITHTestC toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[MGJRouterParameterUserInfo][KEYWITHNavigation];
        NSString *str = routerParameters[MGJRouterParameterUserInfo][@"str"];
        TestCViewController *testCVC = [[TestCViewController alloc] init];
        testCVC.str=str;
        testCVC.TestCCompleteHandler = ^(NSString * _Nonnull text) {
            void (^completion)() = routerParameters[MGJRouterParameterCompletion];
            if (completion) {
                completion(text);
            }
        };
        [navigationVC pushViewController:testCVC animated:YES];
    }];
}
@end
