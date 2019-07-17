//
//  CTMediator+TestC.m
//  TestBasis
//
//  Created by Suzhibin on 2019/7/17.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "CTMediator+TestC.h"

@implementation CTMediator (TestC)
- (UIViewController *)ModuleC_viewControllerWithCallback:(void(^)(NSString *result))callback {
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    return [self performTarget:@"TestC" action:@"Category_ViewController" params:params shouldCacheTarget:NO];
}
@end
