# BQFMDBHelper

通过模型创建sql表，利用BQFMDBHelper快速进行增删改查操作，简化操作步骤

*** FMDB使用示例

```
///模型
@interface StudentModel : SqlModel
 @property (nonatomic, strong) NSString * name;
 @property (nonatomic, assign) NSInteger  age;
 @property (nonatomic, assign) BOOL  isRight;
 @end
 
 @implementation StudentModel
 + (NSDictionary<NSString *,NSString *> *)propertyTypes {
     return @{@"name":kFMDBTypeText,
              @"age":kFMDBTypeText,
              @"isRight":kFMDBTypeBool
     };
 }
 @end


 ///使用

 BQFMDBHelper * helper = [BQFMDBHelper database];
 if ([helper open]) {
     [helper createTable:[StudentModel class]];
     StudentModel * stu = [[StudentModel alloc] init];
     stu.name = @"老白";
     stu.age = 18;
     stu.isRight = YES;
     [helper insertInfo:stu];
     
     [helper close];
 }
```

