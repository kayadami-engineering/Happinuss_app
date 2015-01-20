//
//  LoginPopupViewController.h
//  happinuss_ios
//
//  Created by Imac on 2015. 1. 20..
//  Copyright (c) 2015년 kayadami. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WYPopoverController.h"
@interface LoginPopupViewController : UIViewController <WYPopoverControllerDelegate>{
    WYPopoverController *wyPopoverController;
}
- (IBAction)loginBtnTouch:(id)sender;

@property (strong, nonatomic) WYPopoverController *wyPopoverController;
@end
