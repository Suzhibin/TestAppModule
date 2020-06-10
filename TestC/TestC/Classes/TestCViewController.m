//
//  TestCViewController.m
//  testC
//
//  Created by Suzhibin on 2019/6/5.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "TestCViewController.h"
#import "TestBasisHeader.h"
#import "RequestTool.h"
#import "TestC_Protocol.h"
@interface TestCViewController ()

@end

@implementation TestCViewController
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    if (self.TestCCompleteHandler) {
        self.TestCCompleteHandler(@"TestC来TestA旅游");
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor blueColor];

    //[BasisTool toolMethods:@"TestC"];//TestC没有集成BasisTool
    [RequestTool requestWithText:@"TestC"];
    
    UIButton *btn= [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(100, 300, 200, 50);
    [btn addTarget:self action:@selector(btn_Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)btn_Action{
    [self dismissViewControllerAnimated:YES completion:nil];
}
+ (void)load {
    [ZBRouter registerProtol:@protocol(TestCViewControllerProtocol) class:[self class]];
}
#pragma mark - ZBViewControllerProtocol
- (__kindof UIViewController *_Nullable)testC_ViewControllerWithDict:(NSDictionary *)dict callback:(void (^ _Nullable)(NSString * _Nullable))callback{
    TestCViewController *testCVC=[[TestCViewController alloc]init];
    NSNumber *row=[dict objectForKey:@"row"];
    testCVC.str=[NSString stringWithFormat:@"%@_%ld",[dict objectForKey:@"title"],row.integerValue];
    testCVC.TestCCompleteHandler = ^(NSString * _Nonnull text) {
       if (callback) {
            callback(@"TestC来TestA旅游");
        }
    };
    
    return testCVC;
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
