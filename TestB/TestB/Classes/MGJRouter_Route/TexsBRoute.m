//
//  TexsBRoute.m
//  testB
//
//  Created by Suzhibin on 2019/6/4.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "TexsBRoute.h"
#import "TestBViewController.h"
#import "TestBDetailsViewController.h"
#import "TestBasisHeader.h"
@implementation TexsBRoute
+ (void)load {
    [MGJRouter registerURLPattern:URLWITHTestB toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[MGJRouterParameterUserInfo][KEYWITHNavigation];
        NSString *str=routerParameters[MGJRouterParameterUserInfo][@"str"];
        
        if (routerParameters[MGJRouterParameterUserInfo][@"TestBDetailsViewController"]) {
            
            TestBDetailsViewController *testBDetailsVC = [[TestBDetailsViewController alloc] init];
            testBDetailsVC.str=str;
            testBDetailsVC.hidesBottomBarWhenPushed=YES;
            [navigationVC pushViewController:testBDetailsVC animated:YES];
            return;
        }
        TestBViewController *testBVC = [[TestBViewController alloc] init];
        testBVC.str=str;
        testBVC.hidesBottomBarWhenPushed=YES;
        [navigationVC pushViewController:testBVC animated:YES];
    }];
}
@end
