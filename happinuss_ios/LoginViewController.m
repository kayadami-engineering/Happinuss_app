//
//  LoginViewController.m
//  happinuss_ios
//
//  Created by Imac on 2015. 1. 9..
//  Copyright (c) 2015년 kayadami. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginPopupViewController.h"
#import "WYStoryboardPopoverSegue.h"
#import "SVProgressHUD.h"

@interface LoginViewController () <LoginViewControllerDelegate, WYPopoverControllerDelegate> {
   
}
@end
@implementation LoginViewController
@synthesize loginBtn;
@synthesize loginPopoverController;


- (void)viewDidLoad {
    [super viewDidLoad];
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


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"LoginPopupSegue"])
    {
        LoginPopupViewController *loginPopupViewController = segue.destinationViewController;
        loginPopupViewController.delegate = self;
        
        WYStoryboardPopoverSegue *popoverSegue = (WYStoryboardPopoverSegue *)segue;
        loginPopoverController = [popoverSegue popoverControllerWithSender:sender
                                                    permittedArrowDirections:WYPopoverArrowDirectionDown
                                                                    animated:YES
                                                                     options:WYPopoverAnimationOptionFadeWithScale];
        loginPopoverController.delegate = self;
    }
}

- (void)myTask {
    
    //do something..
    [SVProgressHUD dismiss];
    [self performSegueWithIdentifier:@"TabViewSegue" sender:self];
}

#pragma mark - Delegate

- (void)closePopup:(LoginPopupViewController *)controller {
    
    controller.delegate = nil;
    [loginPopoverController dismissPopoverAnimated:YES];
    loginPopoverController.delegate = nil;
    loginPopoverController = nil;
    
}

- (void)loginRequest:(LoginPopupViewController *)controller {
    
    [self closePopup:controller];
    [SVProgressHUD setViewForExtension:self.view];
    [SVProgressHUD setForegroundColor:[UIColor colorWithRed:120.0/255.0 green:194.0/255.0 blue:222.0/255.0 alpha:0.90]];
    [SVProgressHUD show];
    [self performSelector:@selector(myTask)withObject:nil afterDelay:1.0];
    
}


@end
