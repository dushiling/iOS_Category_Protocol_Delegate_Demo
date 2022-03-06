# iOS_Category_Protocol_Delegate_Demo
iOS的分类、协议、代理的简单使用。
## 运行环境

```
语言：OC
Xcode： 13.1
```
## 演示图
![1](https://github.com/dushiling/project_image/blob/main/iOS_Category_Protocol_Delegate_Demo/yanshi.gif)

## 代码使用
###Category
>分类可以在不创建子类的情况下，向已经存在的类添加新的方法
>分类的用途可以归结为以下几点：1.在不创建继承类的情况下实现对已有类的扩展。2.简化类的开发工作，例如，当一个类需要多个程序员协同开发的时候，Category可以将同一个类根据用途分别放在不同的源文件中，从而便于程序员独立开发相应的方法集合。3.将常用的相关的方法分组。4.在没有源代码的情况下可以用来修复BUG。

MyClass.h

```
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyClass : NSObject

-(void)method1;

-(void)method2;

@end

NS_ASSUME_NONNULL_END

```

MyClass.m

```
#import "MyClass.h"

@implementation MyClass

-(void)method1{

    NSLog(@"自身方法： method1...");

}

-(void)method2{

    NSLog(@"自身方法：method2...");

}
@end

```
MyClass+MyCategory.h：
```
#import "MyClass.h"

NS_ASSUME_NONNULL_BEGIN

@interface MyClass (MyCategory)

// 添加两个新方法

-(void)method3;

-(void)method4;

@property(nonatomic,assign)NSString *name;
@end

NS_ASSUME_NONNULL_END

```
MyClass+MyCategory.m：
```
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

```
使用：
```
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

```
打印log为：
```
2022-03-06 18:27:07.525894+0800 Protocol[1192:41816] 自身方法： method1...
2022-03-06 18:27:07.526034+0800 Protocol[1192:41816] 自身方法：method2...
2022-03-06 18:27:07.526079+0800 Protocol[1192:41816] 分类方法：method3...
2022-03-06 18:27:07.526118+0800 Protocol[1192:41816] 分类方法：method4...
2022-03-06 18:27:07.526162+0800 Protocol[1192:41816] mc.name===123
```
`方法分组`
MyClass2.h
```
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
```
MyClass2.m
```
#import "MyClass2.h"

@implementation MyClass2

// 原有类方法实现

-(void)method1{

    NSLog(@"method1...");

}

-(void)method2{

    NSLog(@"method2...");

}

// 第一分组实现

-(void)method3{

    NSLog(@"method3...");

}

-(void)method4{

    NSLog(@"method4...");

}

// 第二分组实现

-(void)method5{

    NSLog(@"method5...");

}

-(void)method6{

    NSLog(@"method6...");

}

@end

```


###Protocol
`协议和类的定义类似，但是协议里面只定义了方法的声明，而没有实现。这很像Java语言中的接口，只定义做什么，而没有实现怎么做。这更有利于接口和实现的分离，程序的耦合性更低.`

协议 USB 和 Media：
```
#import <Foundation/Foundation.h>
//定义USB协议
@protocol USB <NSObject>

-(void)read;
-(void)write;

@end
```
```
#import <Foundation/Foundation.h>
//定义Media协议
@protocol Media <NSObject>

-(void)playMusic;
-(void)playVideo;

@end
```
使用：
```
#import <Foundation/Foundation.h>
#import "USB.h"
#import "Media.h"
// 同时实现USB协议和Media协议
@interface Mobile : NSObject<USB,Media>

@end
```
```
#import "Mobile.h"

@implementation Mobile

-(void)read{
    NSLog(@"读方法");
}
-(void)write{
    NSLog(@"写方法");
}
-(void)playMusic{
    NSLog(@"放音乐");
}
-(void)playVideo{
    NSLog(@"放视频");
}
@end

```
```
        Mobile *Mb=[[Mobile alloc]init];
        [Mb read];
        [Mb write];
        [Mb playMusic];
        [Mb playVideo];
```
打印log为：
```
2022-03-06 18:50:54.306348+0800 Protocol[1350:49255] 读方法
2022-03-06 18:50:54.306553+0800 Protocol[1350:49255] 写方法
2022-03-06 18:50:54.306652+0800 Protocol[1350:49255] 放音乐
2022-03-06 18:50:54.306725+0800 Protocol[1350:49255] 放视频
```

###Delegate
`代理的组成部分`
- 协议：用来指定代理双方可以做什么，必须做什么。
- 代理：根据协议，完成委托方需要实现的功能(方法)。
- 委托：根据协议，指定代理去完成什么功能。

委托类 WeituoVC.h：
```
@protocol WeituoDelegate <NSObject>
- (void)setUsername:(NSString *)name;
@end


@interface WeituoVC : UIViewController

@property(nonatomic,weak)id<WeituoDelegate>delegate;

@end

```
委托类 WeituoVC.m：
```
- (IBAction)BtnMethod:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(setUsername:)]) {
        
        [self.delegate setUsername:@"dudu"];
    }

    [self.navigationController popViewControllerAnimated:YES];
}

```
代理类 DaiLiVC.m：

```
#import "DaiLiVC.h"
#import "WeituoVC.h"
@interface DaiLiVC ()<WeituoDelegate>//1，遵守协议

@end

@implementation DaiLiVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"代理页面";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (IBAction)toWeituoVC:(id)sender{
    
    WeituoVC *wt=[[WeituoVC  alloc]initWithNibName:@"WeituoVC" bundle:nil];
    wt.delegate=self;//2，设置代理
    
    [self.navigationController pushViewController:wt animated:YES];
    
}

//3.实现代理方法
-(void)setUsername:(NSString *)name{
   
    NSLog(@"name:%@", name);
    self.userNameLb.text= name;

}

```
效果如上面的演示图所示。

`设置代理为自己型`

IBM.h
```
#import <Foundation/Foundation.h>

@protocol IBMDelegate <NSObject>
-(void)sale;
@end

@interface IBM : NSObject<IBMDelegate>

//生产电脑
-(void)produce;

@property(nonatomic,strong)id<IBMDelegate>delegate;

@end

```
IBM.m
```

#import "IBM.h"

@implementation IBM

-(id)init{
    self=[super init];
    if (self) {
        self.delegate=self;
    }
    return self;
}
-(void)produce{
    NSLog(@"生产电脑");
}
-(void)sale{
    NSLog(@"代理商卖电脑");
}

@end

```
使用：
```
    
    IBM *ibm=[[IBM alloc]init];
    [ibm produce];
    [ibm.delegate sale];
```
打印log为：
```
2022-03-06 19:05:31.761129+0800 Protocol[1436:52855] 生产电脑
2022-03-06 19:05:31.761342+0800 Protocol[1436:52855] 代理商卖电脑
```
