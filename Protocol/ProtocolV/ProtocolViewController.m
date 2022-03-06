//
//  ProtocolViewController.m
//  Protocol
//
//  Created by dudu on 2022/3/4.
//  Copyright © 2022 dudu. All rights reserved.
//

#import "ProtocolViewController.h"
#import "Mobile.h"

@interface ProtocolViewController ()

@end

@implementation ProtocolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"协议页面";
   
    
        Mobile *Mb=[[Mobile alloc]init];
        [Mb read];
        [Mb write];
        [Mb playMusic];
        [Mb playVideo];
    
      
        
    
}



@end
