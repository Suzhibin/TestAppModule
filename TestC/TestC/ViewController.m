//
//  ViewController.m
//  TestC
//
//  Created by Suzhibin on 2019/7/11.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "ViewController.h"
#import "TestCViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn_home= [UIButton buttonWithType:UIButtonTypeCustom];
    [btn_home setTitle:@"TestC组件首页" forState:UIControlStateNormal];
    [btn_home setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn_home.backgroundColor = [UIColor redColor];
    btn_home.frame = CGRectMake(100, 300, 200, 50);
    [btn_home addTarget:self action:@selector(btn_Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_home];
}
- (void)btn_Action{
    TestCViewController* testC=[[TestCViewController alloc]init];
    
    [self.navigationController pushViewController:testC animated:YES];
}

@end
