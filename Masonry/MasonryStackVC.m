//
//  MasonryStackVC.m
//  MyCode
//
//  Created by yunmai on 2018/3/13.
//  Copyright © 2018年 wangxuefeng. All rights reserved.
//

#import "MasonryStackVC.h"
#import <Masonry/Masonry.h>

@interface MasonryStackVC ()

@end

@implementation MasonryStackVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self case1];
    [self case2];
}

- (void)case1 {
    UILabel *tipLabel = [[UILabel alloc] init];
    
    tipLabel.text = @"1. 固定控件宽度，间距等宽分布";
    
    [self.view addSubview:tipLabel];
    
    [tipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(40);
        make.top.equalTo(self.view).offset(100);
    }];
    
    NSMutableArray *buttons = [NSMutableArray arrayWithCapacity:3];
    
    for (int i=0; i<3; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        
        [button setBackgroundColor:[UIColor grayColor]];
        [button setTitle:[NSString stringWithFormat:@"%d",i] forState:UIControlStateNormal];
        
        [self.view addSubview:button];
        
        [buttons addObject:button];
    }
    
    [buttons mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedItemLength:50 leadSpacing:40 tailSpacing:40];
    
    [buttons mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(150);
    }];
    
}

- (void)case2 {
    UILabel *tipLabel = [[UILabel alloc] init];
    
    tipLabel.text = @"2. 固定间距宽度，控件等宽分布";
    
    [self.view addSubview:tipLabel];
    
    [tipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(40);
        make.top.equalTo(self.view).offset(300);
    }];
    
    NSMutableArray *buttons = [NSMutableArray arrayWithCapacity:3];
    
    for (int i=0; i<3; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        
        [button setBackgroundColor:[UIColor grayColor]];
        [button setTitle:[NSString stringWithFormat:@"%d",i] forState:UIControlStateNormal];
        
        [self.view addSubview:button];
        
        [buttons addObject:button];
    }
    
    [buttons mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:30 leadSpacing:40 tailSpacing:40];
    
    [buttons mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(350);
    }];
}
@end
