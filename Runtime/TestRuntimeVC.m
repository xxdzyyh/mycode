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
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self classStruct];
    
    [self testSuper];
}

// super
- (void)testSuper {
    NSLog(@"%@",[self class]);
    NSLog(@"%@",[super class]);
    
//    2018-05-25 14:55:24.699433+0800 MyCode[32597:15199157] TestRuntimeVC
//    2018-05-25 14:55:24.699501+0800 MyCode[32597:15199157] TestRuntimeVC
}

#pragma mark - Class

- (void)classStruct {
//    struct objc_class {
//        Class _Nonnull isa  OBJC_ISA_AVAILABILITY;
//
//#if !__OBJC2__
//        Class _Nullable super_class                              OBJC2_UNAVAILABLE;
//        const char * _Nonnull name                               OBJC2_UNAVAILABLE;
//        long version                                             OBJC2_UNAVAILABLE;
//        long info                                                OBJC2_UNAVAILABLE;
//        long instance_size                                       OBJC2_UNAVAILABLE;
//        struct objc_ivar_list * _Nullable ivars                  OBJC2_UNAVAILABLE;
//        struct objc_method_list * _Nullable * _Nullable methodLists                    OBJC2_UNAVAILABLE;
//        struct objc_cache * _Nonnull cache                       OBJC2_UNAVAILABLE;
//        struct objc_protocol_list * _Nullable protocols          OBJC2_UNAVAILABLE;
//#endif
//
//    } OBJC2_UNAVAILABLE;
//    /* Use `Class` instead of `struct objc_class *` */
    
//   typedef struct objc_class *Class;
    
    Person *person = [Person new];
    
    person.name = @"哈哈哈";
    person.address = @"深圳市南山区";

//    struct objc_ivar {
//        char * _Nullable ivar_name                               OBJC2_UNAVAILABLE;
//        char * _Nullable ivar_type                               OBJC2_UNAVAILABLE;
//        int ivar_offset                                          OBJC2_UNAVAILABLE;
//#ifdef __LP64__
//        int space                                                OBJC2_UNAVAILABLE;
//#endif
//    }                                                            OBJC2_UNAVAILABLE;

    unsigned int count = 0;

    struct objc_ivar **ivars = class_copyIvarList([Person class], &count);
    
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivars[i];
        const char* name = ivar_getName(ivar);
        const char* type = ivar_getTypeEncoding(ivar);
        
        NSLog(@"%s :%s", name, type);
    }
}

- (void)getVars {
    Person *person = [[Person alloc] init];
    
    person.name = @"哈哈哈";
    person.address = @"深圳市南山区";
    
    //    NSLog(@"%@",[person valueForKey:@"houseSize"]);
    
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
