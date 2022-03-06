//
//  DaiLiVC.m
//  dailiAndblock
//
//  Created by dudu on 2017/2/21.
//  Copyright © 2017年 www.block.com. All rights reserved.
//

#import "DaiLiVC.h"
#import "WeituoVC.h"

@interface DaiLiVC ()<WeituoDelegate>//1，遵守协议

@end

@implementation DaiLiVC

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
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

@end
