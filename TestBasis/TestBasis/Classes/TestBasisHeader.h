//
//  TestBasisHeader.h
//  TestBasis
//
//  Created by Suzhibin on 2019/7/10.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#ifndef TestBasisHeader_h
#define TestBasisHeader_h

#import "BasisTool.h"
#import "RequestTool.h"
#import "NSBundle+TextBundleName.h"

//CTMediator
#import "CTMediator+TestA.h"
#import "CTMediator+TestB.h"
#import "CTMediator+TestC.h"


#import <MGJRouter.h>
#import <CTMediator.h>



/** 组件 bundle */
#define BUNDLE_BUSINESS_MOUDLE [NSBundle BundleWithPath:@"/TestBasis.bundle" withClass:[self class]]//基础组件路径

#define BUNDLE_TESTA_MOUDLE [NSBundle BundleWithPath:@"/TestA.bundle" withClass:[self class]]//TestA组件路径

#define BUNDLE_TESTB_MOUDLE [NSBundle BundleWithPath:@"/TestB.bundle" withClass:[self class]]//TestB组件路径

#define BUNDLE_TESTC_MOUDLE [NSBundle BundleWithPath:@"/TestC.bundle" withClass:[self class]]//TestC组件路径

/** 组件跳转URL */
#define URLWITHTestA @"TEST://TestAModule/PushVC"
#define URLWITHTestB @"TEST://TestBModule/PushVC"
#define URLWITHTestC @"TEST://TestCModule/PushVC"

#define KEYWITHNavigation @"navigationVC"
#define KEYWITHViewController @"ViewController"
#endif /* TestBasisHeader_h */
