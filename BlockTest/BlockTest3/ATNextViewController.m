//
//  ATNextViewController.m
//  BlockTest3
//
//  Created by 谷士雄 on 16/7/18.
//  Copyright © 2016年 alan. All rights reserved.
//

#import "ATNextViewController.h"

@interface ATNextViewController()
@property (nonatomic, weak) UIButton *btn;
@end

@implementation ATNextViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",self.inStr);
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
    btn.backgroundColor = [UIColor greenColor];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    self.btn = btn;
}

- (void)btnClick:(UIButton *)btn {
    if(self.testBlock) { //block传值
        self.testBlock(@"绿色");
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
