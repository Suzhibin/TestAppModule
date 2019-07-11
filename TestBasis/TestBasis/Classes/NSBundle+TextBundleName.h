//
//  NSBundle+TextBundleName.h
//  basis
//
//  Created by Suzhibin on 2019/6/5.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (TextBundleName)

+ (NSBundle *)BundleWithPath:(NSString *)bundlePath withClass:(id)className;
@end

NS_ASSUME_NONNULL_END
