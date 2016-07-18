//
//  ATNextViewController.m
//  notificationTest2
//
//  Created by 谷士雄 on 16/7/18.
//  Copyright © 2016年 alan. All rights reserved.
//

#import "ATNextViewController.h"

@interface ATNextViewController ()
@property (nonatomic, weak) UIButton *btn;
@end

@implementation ATNextViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor yellowColor];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    self.btn = btn;
}
- (void)btnClick:(UIButton *)btn {
    //发出通知
    [[NSNotificationCenter defaultCenter] postNotificationName:@"btnColorNoti" object:self userInfo:@{@"btnColor": @"黄色"}];
    [self.navigationController popViewControllerAnimated:NO];
}
@end
