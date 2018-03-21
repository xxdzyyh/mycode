//
//  XALivePKProgressView.m
//  XASDK
//
//  Created by yunmai on 2018/3/20.
//  Copyright © 2018年 珠海云迈网络科技有限公司. All rights reserved.
//

#import "XALivePKProgressView.h"
#import "UIView+XABase.h"

#define kLeftPadding 66

@interface XALivePKProgressView()

@property (strong, nonatomic) UIImageView *imageView;

@end

@implementation XALivePKProgressView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        [self setup];
    }
    
    return self;
}

- (void)setup {
    _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pic_live_pk_bar"]];
    
    _imageView.xa_size = CGSizeMake(20, 71);
    _imageView.xa_centerX = self.xa_width/2;
    
    _gradientView = [[XALiveTwoGradientView alloc] init];
    _gradientView.frame = CGRectMake(0, 0, WindowWidth-22, 20);

    [self addSubview:_gradientView];
    [self addSubview:_imageView];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _imageView.xa_centerX = self.xa_width/2;
    _gradientView.frame = CGRectMake(0, self.xa_height/2 - 10, self.xa_width, 20);
}

- (void)setProgress:(CGFloat)progress {
    if (_progress > 1 || _progress < 0) {
        return;
    }
    
    if (_progress == progress) {
        return;
    }
    
    _progress = progress;
    
    self.imageView.xa_x = kLeftPadding + (self.xa_width - kLeftPadding *2)*progress - self.imageView.xa_width/2.0;
    
    [self.gradientView setProgress:progress];
}

@end
