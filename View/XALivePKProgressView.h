//
//  XALivePKProgressView.h
//  XASDK
//
//  Created by yunmai on 2018/3/20.
//  Copyright © 2018年 珠海云迈网络科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "XALiveTwoGradientView.h"

@interface XALivePKProgressView : UIView

@property (assign, nonatomic) CGFloat progress;

@property (strong, nonatomic) XALiveTwoGradientView *gradientView;

@end
