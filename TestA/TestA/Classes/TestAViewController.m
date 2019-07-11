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
    
    UITableView *table=[[UITableView alloc]initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, self.view.frame.size.height-300) style:UITableViewStylePlain];
    table.delegate=self;
    table.dataSource=self;
    table.tableFooterView=[UIView new];
    [self.view addSubview:table];
    
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
    return cell;
    // indexPath.se
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    __weak typeof(self) weakSelf = self;
    switch (indexPath.row) {
        case 0:
            [MGJRouter openURL:URLWITHTestC
                  withUserInfo:@{KEYWITHNavigation : self.navigationController,@"str":@"我从TestA来的"}
                    completion:nil];
            break;
        case 1:
            [MGJRouter openURL:URLWITHTestC
                  withUserInfo:@{KEYWITHNavigation : self.navigationController,@"str":@"我从TestA来的"}
                    completion:nil];
            break;
        case 2:
            [MGJRouter openURL:URLWITHTestC
                  withUserInfo:@{KEYWITHNavigation : self.navigationController,@"str":@"我从TestA来的"}
                    completion:^(id result) {
                        NSString *str=result;
                        weakSelf.title=str;
                        //BUNDLE_TESTA_MOUDLE TestA工程 图片路径
                        UIImage *image= [UIImage imageNamed:@"tiger" inBundle:BUNDLE_TESTA_MOUDLE compatibleWithTraitCollection:nil];
                        weakSelf.imageView.image=image;
                    }];
            break;
            
            
    }
    
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
