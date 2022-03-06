//
//  WeituoVC.m
//  dailiAndblock
//
//  Created by dudu on 2017/2/21.
//  Copyright © 2017年 www.block.com. All rights reserved.
//

#import "WeituoVC.h"

@interface WeituoVC ()

@end

@implementation WeituoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"委托页面";

}
- (IBAction)BtnMethod:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(setUsername:)]) {
        
        [self.delegate setUsername:@"dudu"];
    }

    [self.navigationController popViewControllerAnimated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
