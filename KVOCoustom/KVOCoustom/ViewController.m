//
//  ViewController.m
//  KVOCoustom
//
//  Created by wjm on 16/8/23.
//  Copyright © 2016年 XH. All rights reserved.
//

#import "ViewController.h"

#import "Person.h"
#import "NSObject+KVO.h"

@interface ViewController ()

@property (strong, nonatomic)Person *per;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Person *p = [[Person alloc] init];
    p.name = @"xh";
    p.address = @"ddd";
    self.per = p;
    
    
    [self.per addOneObserver:self forKeyPath:@"address" options:NSKeyValueObservingOptionNew context:nil];
    
//    self.per 
    
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{
    NSLog(@"%@,%@",self.per.address,self.per.name);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSArray *arr = @[@1,@2,@3];
    NSInteger i = arc4random()%3;
    self.per.address = arr[i];
    self.per.name = arr[i];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
