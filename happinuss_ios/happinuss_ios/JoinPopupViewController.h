//
//  JoinPopupViewController.h
//  happinuss_ios
//
//  Created by Imac on 2015. 1. 20..
//  Copyright (c) 2015년 kayadami. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewController.h"

@interface JoinPopupViewController : UIViewController

@property (weak, nonatomic) id<LoginViewControllerDelegate> delegate;
@end

@protocol LoginViewControllerDelegate <NSObject>

@optional

- (void)closePopupJoin:(JoinPopupViewController *)controller;

@end