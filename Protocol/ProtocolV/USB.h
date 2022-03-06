//
//  USB.h
//  Protocol
//
//  Created by dudu on 2017/5/26.
//  Copyright © 2017年 dudu. All rights reserved.
//

#import <Foundation/Foundation.h>
//定义USB协议
@protocol USB <NSObject>

-(void)read;
-(void)write;

@end
