//
//  Target_TestB.m
//  CTMediator
//
//  Created by Suzhibin on 2019/7/17.
//

#import "Target_TestB.h"
#import "TestBViewController.h"
@implementation Target_TestB
- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    //NSString *contentText = params[@"contentText"];
    TestBViewController *TestB_VC = [[TestBViewController alloc] init];
    return TestB_VC;
}
@end
