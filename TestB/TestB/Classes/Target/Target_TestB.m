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
- (UIViewController *)Action_viewController:(NSDictionary *)params {
    TestBViewController *testBVC = [[TestBViewController alloc] init];
    return testBVC;
}
@end
