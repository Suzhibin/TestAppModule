//
//  ZBRouter.h
//  TestBasis
//
//  Created by Suzhibin on 2020/6/10.
//  Copyright © 2020 Suzhibin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZBRouter : NSObject
//protol class
+ (void)registerProtol:(Protocol *)proto class:(Class)cls;

+ (Class)classForProtocol:(Protocol *)proto;
@end

NS_ASSUME_NONNULL_END
