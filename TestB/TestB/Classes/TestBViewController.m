//
//  TestBViewController.m
//  testB
//
//  Created by Suzhibin on 2019/6/5.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "TestBViewController.h"
#import "TestBasisHeader.h"
#import "BasisTool.h"
#import "TestBDetailsViewController.h"
#import "ZBRouter.h"
#import "TestB_Protocol.h"
@interface TestBViewController ()

@end

@implementation TestBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor blueColor];
    self.title=self.str;
    [BasisTool toolMethods:@"TestB"];
   // [RequestTool requestWithText:@"TestB"];//TestB没有集成RequestTool 
    
    UIButton *btn_Details= [UIButton buttonWithType:UIButtonTypeCustom];
    [btn_Details setTitle:@"TestB组件详情" forState:UIControlStateNormal];
    [btn_Details setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn_Details.backgroundColor = [UIColor redColor];
    btn_Details.frame = CGRectMake(100, 300, 200, 50);
    [btn_Details addTarget:self action:@selector(btn_Details_Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_Details];
}
- (void)btn_Details_Action{
    TestBDetailsViewController *detailsVC=[[TestBDetailsViewController alloc]init];
    detailsVC.str=@"我从TestB首页来的";
    detailsVC.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:detailsVC animated:YES];
}
+ (void)load {
    [ZBRouter registerProtol:@protocol(TestBViewControllerProtocol) class:[self class]];
}
#pragma mark - ZBViewControllerProtocol
- (__kindof UIViewController *_Nullable)testB_ViewControllerWithDict:(NSDictionary *)dict{
    TestBViewController *testBVC=[[TestBViewController alloc]init];
    NSNumber *row=[dict objectForKey:@"row"];
    testBVC.str=[NSString stringWithFormat:@"%@_%ld",[dict objectForKey:@"title"],row.integerValue];
    return testBVC;
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
