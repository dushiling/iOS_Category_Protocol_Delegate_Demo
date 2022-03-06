//
//  HomeViewController.m
//  Protocol
//
//  Created by dudu on 2022/3/4.
//  Copyright © 2022 dudu. All rights reserved.
//

#import "HomeViewController.h"
#import "Category/CategoryViewController.h"
#import "ProtocolV/ProtocolViewController.h"
#import "Delegate/DaiLiVC.h"
@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
}
- (IBAction)toProtocol:(id)sender {
   
    ProtocolViewController *ptv=[[ProtocolViewController  alloc]initWithNibName:@"ProtocolViewController" bundle:nil];
    [self.navigationController pushViewController:ptv animated:YES];
    
}
- (IBAction)toCategory:(id)sender {
    
    CategoryViewController *cateVC=[[CategoryViewController  alloc]initWithNibName:@"CategoryViewController" bundle:nil];
    [self.navigationController pushViewController:cateVC animated:YES];
    
}

- (IBAction)toDelegate:(id)sender {
    
    DaiLiVC *DL=[[DaiLiVC  alloc]initWithNibName:@"DaiLiVC" bundle:nil];
    [self.navigationController pushViewController:DL animated:YES];
}


@end
