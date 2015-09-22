//
//  video.m
//  数据解析
//
//  Created by waterfoxjie on 15/9/14.
//  Copyright © 2015年 zj. All rights reserved.
//

#import "video.h"

@implementation video

+ (instancetype)videoWithDict:(NSDictionary *)dict {

    id object = [[self alloc]init];
    
    [object setValuesForKeysWithDictionary:dict];
    
    return object;
    
}

- (NSString *)description {
    
    return [NSString stringWithFormat:@"<%@ , %p> { videoId = %@ , name = %@ , lenght = %@ , videoURL = %@ , imageURL = %@ , desc = %@ , teacher = %@ }" , [self class] , self , self.videoId , self.name , self.length , self.videoURL , self.imageURL , self.desc , self.teacher];
}

@end
