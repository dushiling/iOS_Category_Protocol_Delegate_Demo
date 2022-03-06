//
//  MyClass+MyCategory.m
//  Protocol
//
//  Created by dudu on 2022/3/4.
//  Copyright © 2022 dudu. All rights reserved.
//

#import "MyClass+MyCategory.h"
#import <objc/runtime.h>
@implementation MyClass (MyCategory)

-(void)method3{

    NSLog(@"分类方法：method3...");

}

-(void)method4{

    NSLog(@"分类方法：method4...");

}

//给属性赋值，运用运行时：利用objc_setAssociatedObject给分类添加属性
-(void)setName:(NSString *)name{
    
    objc_setAssociatedObject(self, @"name", name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (NSString *)name
{
    return objc_getAssociatedObject(self, @"name");
}

@end
