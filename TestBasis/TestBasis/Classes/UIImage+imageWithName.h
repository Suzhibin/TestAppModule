//
//  UIImage+imageWithName.h
//  TestBasis
//
//  Created by Suzhibin on 2019/8/23.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (imageWithName)
+ (UIImage *)imageWithName:(NSString *)name withClass:(id)className;
@end

NS_ASSUME_NONNULL_END
