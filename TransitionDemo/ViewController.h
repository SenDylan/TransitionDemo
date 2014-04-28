//
//  ViewController.h
//  TransitionDemo
//
//  Created by apple on 14-4-25.
//  Copyright (c) 2014年 Taagoo. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

#import <CEReversibleAnimationController.h>
#import <CEBaseInteractionController.h>



@interface ViewController : UIViewController <UIViewControllerTransitioningDelegate>






@property (nonatomic, strong) CEReversibleAnimationController *settingsAnimationController;









@end
