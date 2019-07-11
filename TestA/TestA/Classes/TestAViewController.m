//
//  TestAViewController.m
//  testA
//
//  Created by Suzhibin on 2019/6/5.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "TestAViewController.h"
//#import "TestBasisHeader.h" pch引用了
@interface TestAViewController ()
@property (nonatomic,strong)UIImageView *imageView;
@end

@implementation TestAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    [BasisTool toolMethods:@"A"];
    [RequestTool requestWithText:@"A"];


    UIImage *image= [UIImage imageNamed:@"1111" inBundle:BUNDLE_BUSINESS_MOUDLE compatibleWithTraitCollection:nil];
    UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(50, 100, self.view.frame.size.width-100, 200)];
    imageView.image=image;
    [self.view addSubview:imageView];
    self.imageView=imageView;
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [MGJRouter openURL:URLWITHTestB
          withUserInfo:@{KEYWITHNavigation : self.navigationController,@"testID":@"123456789"}
            completion:^(id result) {
                if ([result[@"isDeliver"] isEqualToString:@"true"]) {
                    NSLog(@"我收到了");
                }
                
            }];
    //BUNDLE_TESTA_MOUDLE TestA工程 图片路径
    UIImage *image= [UIImage imageNamed:@"1111" inBundle:BUNDLE_TESTA_MOUDLE compatibleWithTraitCollection:nil];
    self.imageView.image=image;
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
