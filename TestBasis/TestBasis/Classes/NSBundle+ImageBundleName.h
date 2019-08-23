//
//  NSBundle+ImageBundleName.h
//  TestBasis
//
//  Created by Suzhibin on 2019/8/23.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (ImageBundleName)
+ (NSBundle *)BundleWithPath:(NSString *)bundlePath withClass:(id)className;
@end

NS_ASSUME_NONNULL_END
