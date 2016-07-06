//
//  ViewController.m
//  马桶盖
//
//  Created by 谷士雄 on 16/7/2.
//  Copyright © 2016年 alan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) UIScrollView *scrollview;
@property (weak, nonatomic) UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageView.image = [UIImage imageNamed:@"toilet0001"];
    [self.view addSubview:imageView];
    self.imageView = imageView;
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.delegate = self;
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height + 80);
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    [self.view addSubview:scrollView];
    self.scrollview = scrollView;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    int pianyi = (int)(scrollView.contentOffset.y );
    if (pianyi < 0) {
        pianyi = 0;
    }
    if (pianyi > 80) {
        pianyi = 80;
    }
    self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@%04d",@"toilet",pianyi]];
}
@end
