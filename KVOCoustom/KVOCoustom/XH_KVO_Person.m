//
//  XH_KVO_Person.m
//  KVOCoustom
//
//  Created by wjm on 16/8/23.
//  Copyright © 2016年 XH. All rights reserved.
//

#import "XH_KVO_Person.h"
#import <objc/runtime.h>

@implementation XH_KVO_Person

- (void)setAddress:(NSString *)address
{
    [super setAddress:address];
    
    id observer = objc_getAssociatedObject(self, @"observer");
//    [observer addOneObserver:self forKeyPath:@"address" options:NSKeyValueObservingOptionNew context:nil];
    //第一个参数：被观察者对象的键
    //第二个参数：被观察的对象
    [observer observeValueForKeyPath:@"address" ofObject:self change:nil context:nil];
    [observer observeValueForKeyPath:@"name" ofObject:self change:nil context:nil];
}

@end
