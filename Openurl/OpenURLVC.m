//
//  OpenURLVC.m
//  MyCode
//
//  Created by yunmai on 2018/3/21.
//  Copyright © 2018年 wangxuefeng. All rights reserved.
//

#import "OpenURLVC.h"

@interface OpenURLVC ()

@end

@implementation OpenURLVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)downloadButtonClicked:(id)sender {
    
    NSString *url = @"itms-services://?action=download-manifest&url=https://raw.githubusercontent.com/xxdzyyh/mycode/master/Openurl/test28.plist";
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
}


@end
