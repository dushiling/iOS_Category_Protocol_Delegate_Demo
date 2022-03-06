//
//  CategoryViewController.m
//  Protocol
//
//  Created by dudu on 2022/3/4.
//  Copyright © 2022 dudu. All rights reserved.
//

#import "CategoryViewController.h"
#import "MyClass+MyCategory.h"
#import "MyClass2.h"

@interface CategoryViewController ()

@end

@implementation CategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
           // 实例化
           MyClass *mc = [[MyClass alloc]init];

           // 原有方法
           [mc method1];
           [mc method2];

           // 新添加方法
           [mc method3];
           [mc method4];
    
          //测试给分类添加属性
           mc.name=@"123";
           NSLog(@"mc.name===%@",mc.name);
    
    
    // 实例化
    MyClass2 *mc2 = [[MyClass2 alloc]init];

    // 原有方法
    [mc2 method1];
    [mc2 method2];

    // 第一组分类
    [mc2 method3];
    [mc2 method4];

    // 第二组分类
    [mc2 method5];
    [mc2 method6];
    
}



@end
