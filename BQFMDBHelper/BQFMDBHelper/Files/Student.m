// *******************************************
//  File Name:      Student.m       
//  Author:         MrBai
//  Created Date:   2019/11/5 1:41 PM
//    
//  Copyright © 2019 baiqiang
//  All rights reserved
// *******************************************
    

#import "Student.h"

@implementation Student

+ (NSDictionary<NSString *,NSString *> *)propertyTypes {
    return @{@"name":kFMDBTypeText,
             @"age": kFMDBTypeInt,
             @"isDelete":kFMDBTypeBool
    };
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%ld, %@, %ld, %ld",self.keyId, self.name, self.age, self.isDelete];
}

@end
