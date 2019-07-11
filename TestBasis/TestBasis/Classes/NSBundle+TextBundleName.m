//
//  NSBundle+TextBundleName.m
//  basis
//
//  Created by Suzhibin on 2019/6/5.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "NSBundle+TextBundleName.h"

@implementation NSBundle (TextBundleName)
+(NSBundle *)BundleWithPath:(NSString *)bundlePath withClass:(id)className{
    NSString *Path = [[NSBundle bundleForClass:[className class]].resourcePath
                      stringByAppendingPathComponent:bundlePath];
    NSBundle *resource_bundle = [NSBundle bundleWithPath:Path];
    if (resource_bundle) {
        return resource_bundle;
    }else{
        return [NSBundle mainBundle];
    }
}
@end
