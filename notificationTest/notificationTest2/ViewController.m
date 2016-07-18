//
//  ViewController.m
//  notificationTest2
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
    //注册通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(btnColorNoti:) name:@"btnColorNoti" object:nil];
}
//收到通知的时候调用这个方法接受到通知消息
- (void)btnColorNoti:(NSNotification *)noti {
    NSDictionary *dict = noti.userInfo;
    NSLog(@"%@",dict[@"btnColor"]);
}
//控制器销毁的时候注销通知监听
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
- (void)btnClick:(UIButton *)btn {
    ATNextViewController *nextVc = [[ATNextViewController alloc] init];
    [self.navigationController pushViewController:nextVc animated:NO];
}

@end
