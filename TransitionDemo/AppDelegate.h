//
//  AppDelegate.h
//  TransitionDemo
//
//  Created by apple on 14-4-25.
//  Copyright (c) 2014年 Taagoo. All rights reserved.
//

#import <UIKit/UIKit.h>


#define AppDelegateAccessor ((AppDelegate *)[[UIApplication sharedApplication] delegate])

@class CEReversibleAnimationController, CEBaseInteractionController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property (strong, nonatomic) CEReversibleAnimationController *navigationControllerAnimationController;



@property (strong, nonatomic) CEBaseInteractionController *navigationControllerInteractionController;



@end
