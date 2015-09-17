//
//  ViewController.m
//  显示中文输出（NSArray分类）
//
//  Created by waterfoxjie on 15/9/17.
//  Copyright © 2015年 zj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    NSArray *array = @[@"老王", @"小张"];
    
    NSLog(@"%@",array);
    
    NSDictionary *dict = @{@"name" : @"张" , @"age" : @18};
    
    NSLog(@"%@",dict);
    
}



@end
