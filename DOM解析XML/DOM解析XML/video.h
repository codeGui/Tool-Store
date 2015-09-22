//
//  video.h
//  数据解析
//
//  Created by waterfoxjie on 15/9/14.
//  Copyright © 2015年 zj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface video : NSObject

// 视频代号
@property(nonatomic , copy)NSNumber *videoId;

// 视频名称
@property(nonatomic , copy)NSString *name;

// 视频长度
@property(nonatomic , copy)NSNumber *length;

// 视频URL
@property(nonatomic , copy)NSString *videoURL;

// 图像URL
@property(nonatomic , copy)NSString *imageURL;

// 介绍
@property(nonatomic , copy)NSString *desc;

// 讲师
@property(nonatomic , copy)NSString *teacher;

+ (instancetype)videoWithDict : (NSDictionary *)dict;

@end

