//
//  IBM.h
//  Protocol
//
//  Created by dudu on 2017/5/26.
//  Copyright © 2017年 dudu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IBMDelegate <NSObject>
-(void)sale;
@end

@interface IBM : NSObject<IBMDelegate>

//生产电脑
-(void)produce;

@property(nonatomic,strong)id<IBMDelegate>delegate;

@end
