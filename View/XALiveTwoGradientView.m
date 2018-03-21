//
//  XALiveTwoGradientView.m
//  XASDK
//
//  Created by yunmai on 2018/3/20.
//  Copyright © 2018年 珠海云迈网络科技有限公司. All rights reserved.
//

#import "XALiveTwoGradientView.h"

@implementation XALiveTwoGradientView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _progress = 0.5;
    }
    return self;
}

- (void)setProgress:(CGFloat)progress {
    
    if (_progress != progress) {
        _progress = progress;
        
        [self setNeedsDisplay];
    }
}

- (void)drawRect:(CGRect)rect {
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //创建一个RGB的颜色空间
    CGColorSpaceRef rgb = CGColorSpaceCreateDeviceRGB();
    //定义渐变颜色数组
    CGFloat colors[] = {
        71/255.0  , 240/255.0, 255/255.0, 1.00,
        12.0/255.0, 158/255.0, 254/255.0, 1.00,
    };
    
    CGFloat colorsR[] = {
        255/255.0, 139/255.0, 99/255.0, 1.00,
        231/255.0,  40/255.0, 40/255.0, 1.00,
    };
    
    
    //创建一个渐变的色值 1:颜色空间 2:渐变的色数组 3:位置数组,如果为NULL,则为平均渐变,否则颜色和位置一一对应 4:位置的个数
    CGGradientRef _gradient = CGGradientCreateWithColorComponents(rgb, colors, NULL, sizeof(colors)/(sizeof(colors[0])*4));
    
    CGGradientRef _gradientR = CGGradientCreateWithColorComponents(rgb, colorsR, NULL, sizeof(colors)/(sizeof(colorsR[0])*4));
    
    CGColorSpaceRelease(rgb);
    // 66 + 比例
    
    CGFloat progressWidth = (rect.size.width - 66 *2) * self.progress;
    
    CGRect leftRect = CGRectMake( 0, 0, 66 + progressWidth, rect.size.height);
    CGRect rightRect = CGRectMake( 66 + progressWidth, 0, rect.size.width - 66 - progressWidth, rect.size.height);
    
    //定义起始点和终止点
    CGPoint start = CGPointMake(leftRect.origin.x, leftRect.size.height/2);
    CGPoint end = CGPointMake(leftRect.origin.x + leftRect.size.width, leftRect.size.height/2);
    //绘制渐变, 颜色的0对应start点,颜色的1对应end点,第四个参数是定义渐变是否超越起始点和终止点
    CGContextDrawLinearGradient(ctx, _gradient, start, end, kCGGradientDrawsBeforeStartLocation);
    
    // 右边
    CGPoint startR = CGPointMake(rightRect.origin.x, rightRect.size.height/2);
    CGPoint endR = CGPointMake(rightRect.origin.x + rightRect.size.width, rightRect.size.height/2);
    
    CGContextDrawLinearGradient(ctx, _gradientR, startR, endR, kCGGradientDrawsAfterEndLocation);
}


@end
