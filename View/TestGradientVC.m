//
//  TestGradientVC.m
//  MyCode
//
//  Created by yunmai on 2018/3/21.
//  Copyright © 2018年 wangxuefeng. All rights reserved.
//

#import "TestGradientVC.h"
#import "XALivePKProgressView.h"
#import <Masonry.h>

@interface TestGradientVC ()

@property (weak,   nonatomic) IBOutlet UISlider *slider;
@property (strong, nonatomic) XALivePKProgressView *progressView;

@end

@implementation TestGradientVC

- (void)viewDidLoad {
    [super viewDidLoad];

    _progressView = [[XALivePKProgressView alloc] init];
    
    [self.view addSubview:_progressView];
    
    [_progressView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(16);
        make.right.equalTo(self.view).offset(-16);
        make.top.mas_equalTo(250);
        make.height.mas_equalTo(71);
    }];
}

- (IBAction)sliderValueChanged:(UISlider *)sender {
    CGFloat value = sender.value;
    
    [self.progressView setProgress:value];
}

@end
