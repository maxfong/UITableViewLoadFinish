//
//  LoadAdapterObject.m
//  InverterMan
//
//  Created by maxfong on 15/9/19.
//  Copyright (c) 2015年 jconnect. All rights reserved.
//

#import "LoadAdapterObject.h"

@implementation LoadAdapterObject

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    if ([self.dataSource respondsToSelector:@selector(tableView:numberOfRowsInSection:)]) {
//        return [self.dataSource tableView:tableView numberOfRowsInSection:section];
//    }
    return 5;
}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"adapterCell"];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"adapterCell"];
//    }
//    cell.textLabel.text = @"adapterCellValue";
//    return cell;
//}

#warning 需要实现UITableViewDataSource和UITableViewDelegate所有的协议方法

@end
