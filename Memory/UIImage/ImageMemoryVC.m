//
//  ImageMemoryVC.m
//  MyCode
//
//  Created by yunmai on 2018/5/24.
//  Copyright © 2018年 wangxuefeng. All rights reserved.
//

#import "ImageMemoryVC.h"

@interface ImageMemoryVC ()

@property (strong, nonatomic) UIImage *image;

@end

@implementation ImageMemoryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"png"];
    
    UIImage *image = [UIImage imageWithContentsOfFile:path]; // 70.88KiB

//    imageWithContentsOfFile 71.95KiB
//    imageNamed -> Instruments -> Allocations List - > 296.84KiB
//    40 * 142 * 4(每个像素32位4Byte) = 22720
//    CGFloat cgImageBytesPerRow = CGImageGetBytesPerRow(image.CGImage);
//    CGFloat cgImageHeight = CGImageGetHeight(image.CGImage);
//
//    NSUInteger size  = cgImageHeight * cgImageBytesPerRow;
//    NSLog(@"size:%lu",(unsigned long)size); // 22720
//
//
//    NSUInteger s1 = UIImagePNGRepresentation(image).length;
//
//    NSLog(@"size:%lu",(unsigned long)s1); // 6115
    
    self.image = image;
}

@end
