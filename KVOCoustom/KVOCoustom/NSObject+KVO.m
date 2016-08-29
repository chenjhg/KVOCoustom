//
//  NSObject+KVO.m
//  KVOCoustom
//
//  Created by wjm on 16/8/23.
//  Copyright © 2016年 XH. All rights reserved.
//

#import "NSObject+KVO.h"
#import "XH_KVO_Person.h"
#import <objc/runtime.h>

@implementation NSObject (KVO)


- (void)addOneObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context
{
    object_setClass(self, [XH_KVO_Person class]);
    //第一个参数：被观察的对象
    //第二个参数：键
    //第三个参数：键值（观察者）
    //第四个参数：键值的存储方式
//    objc_setAssociatedObject(<#id object#>, <#const void *key#>, <#id value#>, <#objc_AssociationPolicy policy#>)
    objc_setAssociatedObject(self, @"observer", observer, 1);
}

@end
