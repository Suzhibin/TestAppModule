//
//  TestC_Protocol.h
//  TestBasis
//
//  Created by Suzhibin on 2020/6/10.
//  Copyright © 2020 Suzhibin. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol TestCViewControllerProtocol <NSObject>

- (__kindof UIViewController *_Nullable)testC_ViewControllerWithDict:(NSDictionary *_Nullable)dict callback:(void(^_Nullable)(NSString * _Nullable result))callback;
@end
