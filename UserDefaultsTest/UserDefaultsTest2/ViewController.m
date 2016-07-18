//
//  ViewController.m
//  UserDefaultsTest2
//
//  Created by 谷士雄 on 16/7/18.
//  Copyright © 2016年 alan. All rights reserved.
//

#import "ViewController.h"
#import "ATNextViewController.h"

@interface ViewController ()
@property (nonatomic, weak) UIButton *btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    self.btn = btn;

}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //取
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *btnColor = [defaults objectForKey:@"btnColor"];
    NSString *btnSize = [defaults objectForKey:@"btnSize"];
    NSLog(@"%@  %@",btnColor,btnSize);
}
- (void)btnClick:(UIButton *)btn {
    ATNextViewController *nextVc = [[ATNextViewController alloc] init];
    [self.navigationController pushViewController:nextVc animated:YES];
}

@end
