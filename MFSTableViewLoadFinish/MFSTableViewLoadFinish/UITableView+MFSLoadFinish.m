//
//  UITableView+MFSLoadFinish.m
//  MFSTableViewLoadFinish
//
//  Created by maxfong on 15/8/27.
//  Copyright (c) 2015年 maxfong. All rights reserved.
//

#import "UITableView+MFSLoadFinish.h"
#import "NSObject+Swizzle.h"
#import <objc/runtime.h>
#import "LoadAdapterObject.h"

static char *kLoadAdapterObject = "loadAdapterObject";

@implementation UITableView (LoadFinish)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^
                  {
//                      SEL setDelegate = @selector(setDelegate:);
//                      SEL mfs_setDelegate = @selector(mfs_setDelegate:);
//                      [self swizzleInstanceSelector:setDelegate withNewSelector:mfs_setDelegate];
//                      
                      SEL setDataSource = @selector(setDataSource:);
                      SEL mfs_setDataSource = @selector(mfs_setDataSource:);
                      [self swizzleInstanceSelector:setDataSource withNewSelector:mfs_setDataSource];
                  });
}

- (void)mfs_setDataSource:(id)dataSource {
    LoadAdapterObject *loadAdapterObject = objc_getAssociatedObject(self, kLoadAdapterObject);
    if (!loadAdapterObject) {
        loadAdapterObject = LoadAdapterObject.new;
        objc_setAssociatedObject(self, kLoadAdapterObject, loadAdapterObject, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    loadAdapterObject.dataSource = dataSource;
    
    [self mfs_setDataSource:loadAdapterObject];
}

//- (void)mfs_setDelegate:(id)delegate {
//    
//}

@end
