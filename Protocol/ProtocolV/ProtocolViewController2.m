//
//  ViewController.m
//  Protocol
//
//  Created by dudu on 2017/5/26.
//  Copyright © 2017年 dudu. All rights reserved.
//

#import "ProtocolViewController.h"
#import "Mobile.h"
#import "IBM.h"
@interface ProtocolViewController ()

@end

@implementation ProtocolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];

    UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake(100, 300, 100, 50)];
    lable.text=@"查看log打印";
    [self.view addSubview:lable];

    
    
   
    Mobile *Mb=[[Mobile alloc]init];
    [Mb read];
    [Mb write];
    [Mb playMusic];
    [Mb playVideo];
    
    
    IBM *ibm=[[IBM alloc]init];
    [ibm produce];
    [ibm.delegate sale];
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
