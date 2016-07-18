//
//  ATNextViewController.m
//  UserDefaultsTest2
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
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor yellowColor];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    self.btn = btn;
    
}
- (void)btnClick:(UIButton *)btn {
    //存
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"黄色" forKey:@"btnColor"];
    [defaults setObject:@"100x100" forKey:@"btnSize"];
    [defaults synchronize];

    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
