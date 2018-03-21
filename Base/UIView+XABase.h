//
//  UIView+XABase.h
//  XABase
//
//  Created by yunmai on 2017/12/14.
//  Copyright © 2017年 珠海云迈网络科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

#define WindowFrame [UIScreen mainScreen].bounds
#define WindowWidth WindowFrame.size.width
#define WindowHeight WindowFrame.size.height

@interface UIView (XABase)

@property (nonatomic, assign) CGFloat xa_width;
@property (nonatomic, assign) CGFloat xa_height;
@property (nonatomic, assign) CGFloat xa_x;
@property (nonatomic, assign) CGFloat xa_y;
@property (nonatomic, assign) CGPoint xa_origin;
@property (nonatomic, assign) CGSize  xa_size;
@property (assign, nonatomic) CGFloat xa_bottom;
@property (assign, nonatomic) CGFloat xa_right;
@property (assign, nonatomic) CGFloat xa_centerX;
@property (assign, nonatomic) CGFloat xa_centerY;

@end
