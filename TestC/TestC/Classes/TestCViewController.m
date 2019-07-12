//
//  TestCViewController.m
//  testC
//
//  Created by Suzhibin on 2019/6/5.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "TestCViewController.h"
#import "TestBasisHeader.h"
@interface TestCViewController ()

@end

@implementation TestCViewController
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    if (self.TestCCompleteHandler) {
        self.TestCCompleteHandler(@"TestC控制能器");
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor blueColor];
    self.title=self.str;
    [BasisTool toolMethods:@"TestC"];
    [RequestTool requestWithText:@"TestC"];
   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
