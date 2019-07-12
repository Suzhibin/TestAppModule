//
//  ViewController.m
//  TestA
//
//  Created by Suzhibin on 2019/7/10.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "ViewController.h"
#import "TestAViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn_home= [UIButton buttonWithType:UIButtonTypeCustom];
    [btn_home setTitle:@"TestA组件首页" forState:UIControlStateNormal];
    [btn_home setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn_home.backgroundColor = [UIColor redColor];
    btn_home.frame = CGRectMake(100, 300, 200, 50);
    [btn_home addTarget:self action:@selector(btn_Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_home];
}
- (void)btn_Action{
    TestAViewController* testA=[[TestAViewController alloc]init];

    [self.navigationController pushViewController:testA animated:YES];
}

@end
