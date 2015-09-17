//
//  NSArray+Log.m
//  显示中文输出（NSArray分类）
//
//  Created by waterfoxjie on 15/9/17.
//  Copyright © 2015年 zj. All rights reserved.
//

#import "NSArray+Log.h"

@implementation NSArray (Log)

// 专门针对国际化语言调试使用，一旦实现，再输出数组时，就会调用这个方法，只要实现分类，就会被调用
- (nonnull NSString *)descriptionWithLocale:(nullable id)locale {
    
    // 重新拼接字符串
    NSMutableString *str = [NSMutableString stringWithString:@"(\n"];
    
    // 遍历数组
    for (id obj in self) {
        
        [str appendFormat:@"%@\n ",obj];
    }
    
    
    [str appendString:@")\n"];

    return str;
}

@end

@implementation NSDictionary (Log)

// 专门针对国际化语言调试使用，一旦实现，再输出数组时，就会调用这个方法，只要实现分类，就会被调用
- (nonnull NSString *)descriptionWithLocale:(nullable id)locale {
    
    // 重新拼接字符串
    NSMutableString *str = [NSMutableString stringWithString:@"<\n"];
    
    // 遍历数组
    for (id obj in self) {
        
        [str appendFormat:@"%@\t%@\n ",obj,self[obj]];
    }
    
    
    [str appendString:@">\n"];
    
    return str;
}

@end
