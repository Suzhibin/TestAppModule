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
#import "MGJRouter.h"
#import "NSBundle+TextBundleName.h"

/** 组件 bundle */
#define BUNDLE_BUSINESS_MOUDLE [NSBundle BundleWithPath:@"/TestBasis.bundle" withClass:[self class]]


/** 组件跳转key */
#define URLWITHTestA @"TEST://TestAModule/PushVC"
#define URLWITHTestB @"TEST://TestBModule/PushVC"
#define URLWITHTestC @"TEST://TestBasisModule/PushVC"

#define KEYWITHNavigation @"navigationVC"
#endif /* TestBasisHeader_h */
