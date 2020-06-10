//
//  TestBDetailsViewController.m
//  testB
//
//  Created by Suzhibin on 2019/6/5.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "TestBDetailsViewController.h"
#import "BasisTool.h"
#import "ZBRouter.h"
#import "TestB_Protocol.h"
@interface TestBDetailsViewController ()

@end

@implementation TestBDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor orangeColor];
    self.title=self.str;
    [BasisTool toolMethods:@"B_Details"];
  //  [RequestTool requestWithText:@"B_Details"];//没有集成RequestTool 
}
+ (void)load {
    [ZBRouter registerProtol:@protocol(TestBDetailsViewControllerProtocol) class:[self class]];
}
#pragma mark - ZBViewControllerProtocol
- (__kindof UIViewController *_Nullable)testBDetails_ViewControllerWithDict:(NSDictionary *)dict{
    TestBDetailsViewController *testBDetailsVC=[[TestBDetailsViewController alloc]init];
     NSNumber *row=[dict objectForKey:@"row"];
    testBDetailsVC.str=[NSString stringWithFormat:@"%@_%ld",[dict objectForKey:@"title"],row.integerValue];
    return testBDetailsVC;
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
