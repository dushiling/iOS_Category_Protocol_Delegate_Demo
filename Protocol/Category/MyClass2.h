//
//  MyClass2.h
//  Protocol
//
//  Created by dudu on 2022/3/4.
//  Copyright © 2022 dudu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyClass2 : NSObject

-(void)method1;

-(void)method2;

@end

// 第一组分类

@interface MyClass2(MyCategory2)

-(void)method3;

-(void)method4;

@end

// 第二组分类

@interface MyClass2(MyCategory3)

-(void)method5;

-(void)method6;

@end


NS_ASSUME_NONNULL_END
