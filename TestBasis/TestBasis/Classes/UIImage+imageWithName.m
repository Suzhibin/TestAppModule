//
//  UIImage+imageWithName.m
//  TestBasis
//
//  Created by Suzhibin on 2019/8/23.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "UIImage+imageWithName.h"

@implementation UIImage (imageWithName)
+ (UIImage *)imageWithName:(NSString *)name withClass:(id)className{
    
    NSString *bundlePath = [[NSBundle bundleForClass:[className class]].resourcePath
                            stringByAppendingPathComponent:@"/TestBasis.bundle"];
    NSBundle *resource_bundle = [NSBundle bundleWithPath:bundlePath];
    UIImage *image = [UIImage imageNamed:name
                                inBundle:resource_bundle
           compatibleWithTraitCollection:nil];
    return image;
    
}
@end
