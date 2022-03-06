//
//  Mobile.h
//  Protocol
//
//  Created by dudu on 2017/5/26.
//  Copyright © 2017年 dudu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "USB.h"
#import "Media.h"
// 同时实现USB协议和Media协议
@interface Mobile : NSObject<USB,Media>

@end
