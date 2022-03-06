//
//  IBM.m
//  Protocol
//
//  Created by dudu on 2017/5/26.
//  Copyright © 2017年 dudu. All rights reserved.
//

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
