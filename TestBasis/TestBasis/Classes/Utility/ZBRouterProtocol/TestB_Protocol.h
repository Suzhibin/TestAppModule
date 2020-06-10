//
//  TestB_Protocol.h
//  TestBasis
//
//  Created by Suzhibin on 2020/6/10.
//  Copyright © 2020 Suzhibin. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol TestBViewControllerProtocol <NSObject>

- (__kindof UIViewController *_Nullable)testB_ViewControllerWithDict:(NSDictionary *_Nullable)dict;
@end

@protocol TestBDetailsViewControllerProtocol <NSObject>

- (__kindof UIViewController *_Nullable)testBDetails_ViewControllerWithDict:(NSDictionary *_Nullable)dict;

@end
