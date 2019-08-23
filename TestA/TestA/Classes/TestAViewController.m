//
//  TestAViewController.m
//  testA
//
//  Created by Suzhibin on 2019/6/5.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "TestAViewController.h"
//#import "TestBasisHeader.h" pch引用了

@interface TestAViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong)UIImageView *imageView;
@end

@implementation TestAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    [BasisTool toolMethods:@"TestA"];
    [RequestTool requestWithText:@"TestA"];
    
    
    UIImage *image= [UIImage imageNamed:@"1111" inBundle:BUNDLE_BUSINESS_MOUDLE compatibleWithTraitCollection:nil];
    //UIImage *image=[UIImage imageWithName:@"1111" withClass:self];// 如果图片都放在在basis工程里 用这个就可以
    UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(50, 100, self.view.frame.size.width-100, 200)];
    imageView.image=image;
    [self.view addSubview:imageView];
    self.imageView=imageView;
   
    UITableView *table=[[UITableView alloc]initWithFrame:CGRectMake(0, 320, self.view.frame.size.width, self.view.frame.size.height-300) style:UITableViewStylePlain];
    table.delegate=self;
    table.dataSource=self;
    table.tableFooterView=[UIView new];
    [self.view addSubview:table];
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *userCell = @"userCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:userCell];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:userCell];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    if (indexPath.section==0) {
        switch (indexPath.row) {
                case 0:
                cell.textLabel.text=@"进入TestB组件首页";
                break;
                case 1:
                cell.textLabel.text=@"进入TestB组件详情页";
                break;
                case 2:
                cell.textLabel.text=@"进入TestC组件首页带回调";
                break;
        }
     
    }else{
        switch (indexPath.row) {
                case 0:
                cell.textLabel.text=@"进入TestB组件首页";
                break;
                case 1:
                cell.textLabel.text=@"进入TestB组件详情页";
                break;
                case 2:
                cell.textLabel.text=@"进入TestC组件首页带回调";
                break;
        }
    }
    return cell;
    // indexPath.se
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    __weak typeof(self) weakSelf = self;
    if (indexPath.section==0) {
        switch (indexPath.row) {
                case 0:
                [MGJRouter openURL:URLWITHTestB
                      withUserInfo:@{KEYWITHNavigation : self.navigationController,@"str":@"我从TestA来的"}
                        completion:nil];
                break;
                case 1:
                [MGJRouter openURL:URLWITHTestB
                      withUserInfo:@{KEYWITHNavigation : self.navigationController,@"TestBDetailsViewController":@"跳转到确认offer",@"str":@"我从TestA来的"}
                        completion:nil];
                break;
                case 2:
                [MGJRouter openURL:URLWITHTestC
                      withUserInfo:@{KEYWITHViewController: self,@"str":@"我从TestA来的"}
                        completion:^(id result) {
                            NSString *str=result;
                            NSLog(@"result:%@",str);
                            //BUNDLE_TESTA_MOUDLE TestA工程 图片路径
                            UIImage *image= [UIImage imageNamed:@"tiger" inBundle:BUNDLE_TESTA_MOUDLE compatibleWithTraitCollection:nil];
                            weakSelf.imageView.image=image;
                        }];
                break;
                
                
        }
    }else{
        switch (indexPath.row) {
                case 0:
                {
                    UIViewController *testB_VC=[[CTMediator sharedInstance]ModuleB_viewControllerWithStr:@"我从TestA来的"];
                    testB_VC.hidesBottomBarWhenPushed=YES;
                    if (testB_VC) {
                        [self.navigationController pushViewController:testB_VC animated:YES];
                    }
                }
             
                break;
                
                case 1:
            {
                UIViewController *testBDetails_VC=[[CTMediator sharedInstance]ModuleBDetails_viewControllerWithStr:@"我从TestA来的"];
                testBDetails_VC.hidesBottomBarWhenPushed=YES;
                if (testBDetails_VC) {
                    [self.navigationController pushViewController:testBDetails_VC animated:YES];
                }
            }
                
                break;
                
                case 2:
            {
                UIViewController *testC_VC=[[CTMediator sharedInstance]ModuleC_viewControllerWithCallback:^(NSString * _Nonnull result) {
                    NSLog(@"result:%@",result);
                    UIImage *image= [UIImage imageNamed:@"2222" inBundle:BUNDLE_BUSINESS_MOUDLE compatibleWithTraitCollection:nil];
                    weakSelf.imageView.image=image;
                }];
                if (testC_VC) {
                    dispatch_async(dispatch_get_main_queue(), ^{
                        [self presentViewController:testC_VC animated:YES completion:nil];
                    });
                }
               
            }
                
                break;
                
            default:
                break;
        }
    }
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UILabel *nameLabel=[[UILabel alloc]init];
    nameLabel.backgroundColor=[UIColor colorWithRed:0.98f green:0.98f blue:0.98f alpha:1.00f];
    nameLabel.textAlignment=NSTextAlignmentCenter;
    switch (section) {
        case 0:
            nameLabel.text=@"MGJRouter";
            break;
        case 1:
            nameLabel.text=@"CTMediator";
            break;
        default:
            break;
    }
    return nameLabel;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 44;
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
