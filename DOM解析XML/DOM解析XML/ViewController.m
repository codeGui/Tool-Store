//
//  ViewController.m
//  DOM解析XML
//
//  Created by waterfoxjie on 15/9/22.
//  Copyright © 2015年 waterfoxjie. All rights reserved.
//

#import "ViewController.h"
#import "GDataXMLNode.h"
#import "video.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    [self loadData];
}


// 解析数据
- (void)loadData {
    
    // url 地址
    NSURL *url = [NSURL URLWithString:@"http://192.168.254.103/videos.xml"];
    
    // session
    [[[NSURLSession sharedSession]dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        // 建立 XML 文档
        GDataXMLDocument *document = [[GDataXMLDocument alloc]initWithData:data error:NULL];
        
        // 创建一个数组
        NSMutableArray *arrayM = [NSMutableArray array];
        
        // 遍历文档的最外层节点，获取节点中的内容
        // rootElement 最外层节点
        for (GDataXMLElement *child in document.rootElement.children) {
            
            // 创建一个video模型
            video *v = [[video alloc]init];
            
            // 添加到数组
            [arrayM addObject:v];
            
            // 遍历属性字典数组
            for (GDataXMLNode *type in child.attributes) {
                
//                NSLog(@"%@ -- %@",type.name , type.stringValue);
                
                // 使用 kvc 设置值
                [v setValue:type.stringValue forKey:type.name];
                
            }
            
            // 遍历节点中的内容，获取子节点
            for (GDataXMLElement *note in child.children) {
                
//                NSLog(@"%@ -- %@",note.name , note.stringValue);
                
                [v setValue:note.stringValue forKey:note.name];
                
            }

        }
        
        NSLog(@"%@",arrayM);
        
    }]resume];
    
    
}

@end
