//
//  TestRuntimeVC.m
//  MyCode
//
//  Created by yunmai on 2018/4/10.
//  Copyright © 2018年 wangxuefeng. All rights reserved.
//

#import "TestRuntimeVC.h"
#import "Person.h"
#import <objc/runtime.h>

@interface TestRuntimeVC ()

@end

@implementation TestRuntimeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Person *person = [[Person alloc] init];
    
    person.name = @"哈哈哈";
    person.address = @"深圳市南山区";
    
    NSLog(@"%@",[person valueForKey:@"houseSize"]);
    
    unsigned int count = 0;
    
    Ivar *ivars = class_copyIvarList([Person class], &count);
    
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivars[i];
        const char* name = ivar_getName(ivar);
        const char* type = ivar_getTypeEncoding(ivar);
        
        NSLog(@"%s :%s", name, type);
    }
    
    free(ivars);
    
}


@end
