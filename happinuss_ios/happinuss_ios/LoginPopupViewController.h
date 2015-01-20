//
//  LoginPopupViewController.h
//  happinuss_ios
//
//  Created by Imac on 2015. 1. 20..
//  Copyright (c) 2015년 kayadami. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WYPopoverController.h"
#import "LoginViewController.h"

@protocol LoginViewControllerDelegate;

@interface LoginPopupViewController : UIViewController {
}
- (IBAction)loginBtnTouch:(id)sender;
- (IBAction)closeBtnTouch:(id)sender;

@property (weak, nonatomic) id<LoginViewControllerDelegate> delegate;
@property (strong, nonatomic) WYPopoverController *wyPopoverController;
@end

@protocol LoginViewControllerDelegate <NSObject>

@optional

- (void)closePopup:(LoginPopupViewController *)controller;
- (void)loginRequest:(LoginPopupViewController *)controller;

@end
