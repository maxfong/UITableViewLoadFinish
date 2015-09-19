//
//  LoadAdapterObject.h
//  InverterMan
//
//  Created by maxfong on 15/9/19.
//  Copyright (c) 2015年 jconnect. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface LoadAdapterObject : NSObject <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) id dataSource;
@property (nonatomic, weak) id delegate;

@end
