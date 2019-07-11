//
//  TestAViewController.m
//  testA
//
//  Created by Suzhibin on 2019/6/5.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "TestAViewController.h"
#import "TestBasisHeader.h"
@interface TestAViewController ()

@end

@implementation TestAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor yellowColor];
    [BasisTool requestMethods:@"A"];
    

    
    UIButton *btn_home= [UIButton buttonWithType:UIButtonTypeCustom];
    [btn_home setTitle:@"跳转到 B 页面" forState:UIControlStateNormal];
    [btn_home setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn_home.backgroundColor = [UIColor grayColor];
    
    UIImage *image= [UIImage imageNamed:@"tiger" inBundle:BUNDLE_BUSINESS_MOUDLE compatibleWithTraitCollection:nil];
    [btn_home setImage:image forState:UIControlStateNormal];
    btn_home.frame = CGRectMake(100, 300, 200, 50);
    [btn_home addTarget:self action:@selector(btn_Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_home];
    
}
- (void)btn_Action{
    [MGJRouter openURL:URLWITHTestB
          withUserInfo:@{KEYWITHNavigation : self.navigationController,@"testID":@"123456789"}
            completion:^(id result) {
                if ([result[@"isDeliver"] isEqualToString:@"true"]) {
                    NSLog(@"我收到了");
                }
                
            }];
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
