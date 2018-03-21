//
//  ViewController.m
//  MyCode
//
//  Created by wangxuefeng on 2018/3/12.
//  Copyright © 2018年 wangxuefeng. All rights reserved.
//

#import "ViewController.h"
#import "MasonryTableVC.h"
#import "TestGradientVC.h"
#import "OpenURLVC.h"
@interface ViewController () <UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    self.dataSource = @[@[@"Masonry",@"MasonryTableVC"],
                        @[@"渐变进度",@"TestGradientVC"],
                        @[@"OpenURLVC",@"OpenURLVC"]];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];;
    
    
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    
    NSArray *array = self.dataSource[indexPath.row];
    
    cell.textLabel.text = array[0];
    cell.detailTextLabel.text = array[1];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSArray *array = self.dataSource[indexPath.row];
    
    if ([array[0] isEqualToString:@""]) {
        
    } else {
        id obj = [NSClassFromString(array[1]) new];
        
        if ([obj isKindOfClass:[UIViewController class]]) {
            [self.navigationController pushViewController:obj animated:YES];
        }
    }
}

@end
