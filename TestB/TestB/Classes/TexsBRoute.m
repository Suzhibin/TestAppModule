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
      
        
        if (routerParameters[MGJRouterParameterUserInfo][@"TestBDetailsViewController"]) {
            
            TestBDetailsViewController *testBDetailsVC = [[TestBDetailsViewController alloc] init];
            [navigationVC pushViewController:testBDetailsVC animated:YES];
            return;
        }
        TestBViewController *testBVC = [[TestBViewController alloc] init];
        [navigationVC pushViewController:testBVC animated:YES];
    }];
}
@end
