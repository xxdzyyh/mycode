//
//  Person.m
//  MyCode
//
//  Created by yunmai on 2018/4/10.
//  Copyright © 2018年 wangxuefeng. All rights reserved.
//

#import "Person.h"
#import <UIKit/UIKit.h>

@interface Person() {
    CVPixelBufferRef houseSize;
}

@end

@implementation Person

- (instancetype)init {
    self = [super init];
    if (self) {
        houseSize = nil;
    }
    
    return self;
}

@end
