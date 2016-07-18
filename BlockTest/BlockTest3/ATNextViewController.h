//
//  ATNextViewController.h
//  BlockTest3
//
//  Created by 谷士雄 on 16/7/18.
//  Copyright © 2016年 alan. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^TestBlock) (NSString *str);

@interface ATNextViewController : UIViewController
@property (nonatomic, copy) NSString *inStr;

@property (nonatomic, copy) TestBlock testBlock;
@end
