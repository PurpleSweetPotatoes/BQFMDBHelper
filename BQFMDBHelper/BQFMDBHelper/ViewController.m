// *******************************************
//  File Name:      ViewController.m       
//  Author:         MrBai
//  Created Date:   2019/11/5 5:24 PM
//    
//  Copyright © 2019 baiqiang
//  All rights reserved
// *******************************************
    

#import "ViewController.h"

#import "BQFMDBHelper.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self testMethod];
}


- (void)testMethod {
    // 初始化
    BQFMDBHelper * helper = [BQFMDBHelper database];
    if ([helper open]) {
        // 建表
        [helper createTable:[Student class]];
        
        //创建
        Student * stu = [[Student alloc] init];
        stu.name = @"赵四";
        stu.age = 24;
        stu.isDelete = NO;
        
        [helper insertInfo:stu];
        
        NSArray * list = [helper lookUpInfo:[Student class]];
        
        for (Student * stu in list) {
            NSLog(@"%@",stu);
        }
        
        [helper close];
    }
}

@end
