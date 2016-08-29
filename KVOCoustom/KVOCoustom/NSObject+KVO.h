//
//  NSObject+KVO.h
//  KVOCoustom
//
//  Created by wjm on 16/8/23.
//  Copyright © 2016年 XH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (KVO)

- (void)addOneObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context;

@end
