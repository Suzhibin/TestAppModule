//
//  ViewController.m
//  TestB
//
//  Created by Suzhibin on 2019/7/10.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "ViewController.h"
#import "TestBasisHeader.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [BasisTool toolMethods:@"B"];
    [RequestTool requestWithText:@"B"];
}


@end
