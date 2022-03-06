//
//  WeituoVC.h
//  dailiAndblock
//
//  Created by dudu on 2017/2/21.
//  Copyright © 2017年 www.block.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WeituoDelegate <NSObject>
- (void)setUsername:(NSString *)name;
@end


@interface WeituoVC : UIViewController

@property(nonatomic,weak)id<WeituoDelegate>delegate;

@end
