//
//  ViewController.m
//  SingletonTest
//
//  Created by 谷士雄 on 16/7/18.
//  Copyright © 2016年 alan. All rights reserved.
//

#import "ViewController.h"
#import "ATNextViewController.h"
#import "ATLoginStatus.h"

@interface ViewController ()
@property (nonatomic, weak) UIButton *btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor yellowColor];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    self.btn = btn;

}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    ATLoginStatus *status = [ATLoginStatus sharedLoginStatus];
    NSLog(@"%@ %d",status.phoneNumStr,status.isLogin);
}
- (void)btnClick:(UIButton *)btn {
    ATNextViewController *nextVc = [[ATNextViewController alloc] init];
    
    [self.navigationController pushViewController:nextVc animated:YES];
}

@end
