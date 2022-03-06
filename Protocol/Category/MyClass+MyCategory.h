//
//  MyClass+MyCategory.h
//  Protocol
//
//  Created by dudu on 2022/3/4.
//  Copyright © 2022 dudu. All rights reserved.
//

#import "MyClass.h"

NS_ASSUME_NONNULL_BEGIN

@interface MyClass (MyCategory)

// 添加两个新方法

-(void)method3;

-(void)method4;

@property(nonatomic,assign)NSString *name;
@end

NS_ASSUME_NONNULL_END
