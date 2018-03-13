//
//  MasonryTableVC.m
//  MyCode
//
//  Created by yunmai on 2018/3/13.
//  Copyright © 2018年 wangxuefeng. All rights reserved.
//

#import "MasonryTableVC.h"
#import "MasonryStackVC.h"

@interface MasonryTableVC ()

@property (strong, nonatomic) NSArray *dataSource;

@end

@implementation MasonryTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource = @[@[@"多个控件等分布局",@"MasonryStackVC"]];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
 
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
