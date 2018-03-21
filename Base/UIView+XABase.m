//
//  UIView+XABase.m
//  XABase
//
//  Created by yunmai on 2017/12/14.
//  Copyright © 2017年 珠海云迈网络科技有限公司. All rights reserved.
//

#import "UIView+XABase.h"

@implementation UIView (XABase)

- (void)setXa_width:(CGFloat)xa_width {
    CGRect rect = self.frame;
    rect.size.width = xa_width;
    self.frame = rect;
}

- (CGFloat)xa_width {
    return self.frame.size.width;
}

- (void)setXa_height:(CGFloat)xa_height {
    CGRect rect = self.frame;
    rect.size.height = xa_height;
    self.frame = rect;
}

- (CGFloat)xa_height {
    return self.frame.size.height;
}

- (void)setXa_x:(CGFloat)xa_x {
    CGRect rect = self.frame;
    rect.origin.x = xa_x;
    self.frame = rect;
}

- (CGFloat)xa_x {
    return self.frame.origin.x;
}

- (void)setXa_y:(CGFloat)xa_y {
    CGRect rect = self.frame;
    rect.origin.y = xa_y;
    self.frame = rect;
}

- (CGFloat)xa_y {
    return self.frame.origin.y;
}

- (void)setXa_bottom:(CGFloat)xa_bottom {
    CGRect frame = self.frame;
    frame.origin.y = xa_bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)xa_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setXa_right:(CGFloat)xa_right {
    CGRect frame = self.frame;
    frame.origin.x = xa_right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)xa_right {
    return self.frame.origin.x+ self.frame.size.width;
}

- (void)setXa_origin:(CGPoint)xa_origin {
    CGRect frame = self.frame;
    frame.origin = xa_origin;
    self.frame = frame;
}

- (CGPoint)xa_origin {
    return self.frame.origin;
}

- (void)setXa_size:(CGSize)xa_size {
    CGRect frame = self.frame;
    frame.size = xa_size;
    self.frame = frame;
}

- (CGSize)xa_size {
    return self.frame.size;
}

- (void)setXa_centerX:(CGFloat)xa_centerX {
    self.center = CGPointMake(xa_centerX, self.center.y);
}

- (CGFloat)xa_centerX {
    return self.center.x;
}

- (void)setXa_centerY:(CGFloat)xa_centerY {
    self.center = CGPointMake(self.center.x, xa_centerY);
}

- (CGFloat)xa_centerY {
    return self.center.y;
}

@end
