// *******************************************
//  File Name:      Student.h       
//  Author:         MrBai
//  Created Date:   2019/11/5 1:41 PM
//    
//  Copyright © 2019 baiqiang
//  All rights reserved
// *******************************************
    

#import <Foundation/Foundation.h>
#import "BQFMDBHelper.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student : SqlModel
@property (nonatomic, copy) NSString * name;
@property (nonatomic, assign) NSInteger  age;
@property (nonatomic, assign) BOOL  isDelete;
@end

NS_ASSUME_NONNULL_END
