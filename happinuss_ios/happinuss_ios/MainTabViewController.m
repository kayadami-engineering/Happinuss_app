//
//  MainTabViewController.m
//  happinuss_ios
//
//  Created by Imac on 2015. 1. 20..
//  Copyright (c) 2015년 kayadami. All rights reserved.
//

#import "MainTabViewController.h"

@interface MainTabViewController ()

@end

@implementation MainTabViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];

    
    //[[UITabBar appearance] setTintColor:[UIColor colorWithRed:81/255.0 green:89/255.0 blue:100/255.0 alpha:1.0]];
    [[UITabBar appearance] setSelectedImageTintColor:[UIColor colorWithRed:147/255.0 green:208/255.0 blue:231/255.0 alpha:1.0]];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
