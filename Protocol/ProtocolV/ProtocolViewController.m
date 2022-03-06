//
//  ProtocolViewController.m
//  Protocol
//
//  Created by dudu on 2022/3/4.
//  Copyright © 2022 dudu. All rights reserved.
//

#import "ProtocolViewController.h"
#import "Mobile.h"
#import "IBM.h"
@interface ProtocolViewController ()

@end

@implementation ProtocolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
        Mobile *Mb=[[Mobile alloc]init];
        [Mb read];
        [Mb write];
        [Mb playMusic];
        [Mb playVideo];
    
        IBM *ibm=[[IBM alloc]init];
        [ibm produce];
        [ibm.delegate sale];
        
    
}



@end
