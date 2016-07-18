//
//  ATNextViewController.m
//  SingletonTest
//
//  Created by 谷士雄 on 16/7/18.
//  Copyright © 2016年 alan. All rights reserved.
//

#import "ATNextViewController.h"
#import "ATLoginStatus.h"

@interface ATNextViewController ()
@property (nonatomic, weak) UIButton *btn;
@end

@implementation ATNextViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    self.btn = btn;
    
    
}

- (void)btnClick:(UIButton *)btn {
    //存
    ATLoginStatus *status = [ATLoginStatus sharedLoginStatus];
    status.phoneNumStr = @"12345";
    status.isLogin = YES;
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
