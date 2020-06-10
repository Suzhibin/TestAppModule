//
//  ZBRouter.m
//  TestBasis
//
//  Created by Suzhibin on 2020/6/10.
//  Copyright © 2020 Suzhibin. All rights reserved.
//

#import "ZBRouter.h"

@implementation ZBRouter
+ (NSMutableDictionary *)mediatorCache{
    static NSMutableDictionary *cache;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        cache = @{}.mutableCopy;
    });
    return cache;
}
+ (void)registerProtol:(Protocol *)proto class:(Class)cls{
    if (proto && cls) {
        [[[self class] mediatorCache] setObject:cls forKey:NSStringFromProtocol(proto)];
    }
}
+ (Class)classForProtocol:(Protocol *)proto{
    return [[[self class] mediatorCache] objectForKey:NSStringFromProtocol(proto)];
}

@end
