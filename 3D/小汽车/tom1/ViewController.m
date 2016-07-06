//
//  ViewController.m
//  tom1
//
//  Created by 谷士雄 on 16/7/2.
//  Copyright © 2016年 alan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
/**
 *  图片
 */
@property (weak, nonatomic) UIImageView *imageView;
@property (nonatomic, weak) UIScrollView *scrollView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 100, 300, 200)];
   imageView.image = [UIImage imageNamed:@"st01"];
    [self.view addSubview:imageView];
    self.imageView = imageView;
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.delegate = self;
    scrollView.contentSize = CGSizeMake(10000000000, self.view.bounds.size.height);
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.contentOffset = CGPointMake(10000000000 / 2, 0);
    [self.view addSubview:scrollView];
    self.scrollView = scrollView;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    int pianyi = (int)(scrollView.contentOffset.x / 3) % 50;
    self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@%02d",@"st",pianyi]];
}

@end

