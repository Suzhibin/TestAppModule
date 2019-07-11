//
//  TestBDetailsViewController.m
//  testB
//
//  Created by Suzhibin on 2019/6/5.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "TestBDetailsViewController.h"
#import "TestBasisHeader.h"
@interface TestBDetailsViewController ()

@end

@implementation TestBDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor orangeColor];
    [BasisTool toolMethods:@"B_Details"];
    [RequestTool requestWithText:@"B_Details"];
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
