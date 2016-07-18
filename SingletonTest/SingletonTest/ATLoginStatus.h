//
//  ATLoginStatus.h
//  SingletonTest
//
//  Created by 谷士雄 on 16/7/18.
//  Copyright © 2016年 alan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ATSingleton.h"

@interface ATLoginStatus : NSObject
@property (nonatomic, assign) BOOL isLogin;
@property (nonatomic, copy) NSString *phoneNumStr;

SingletonH(LoginStatus)
@end

