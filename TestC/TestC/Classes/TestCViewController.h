//
//  TestCViewController.h
//  testC
//
//  Created by Suzhibin on 2019/6/5.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestCViewController : UIViewController
@property (nonatomic, copy) void (^TestCCompleteHandler)(NSString *text);
@end

NS_ASSUME_NONNULL_END
