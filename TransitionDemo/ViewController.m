//
//  ViewController.m
//  TransitionDemo
//
//  Created by apple on 14-4-25.
//  Copyright (c) 2014年 Taagoo. All rights reserved.
//

#import "ViewController.h"

#import <CEFlipAnimationController.h>

#import "CECardsAnimationController.h"
#import "CEVerticalSwipeInteractionController.h"

@interface ViewController ()
{
    NSArray *colors;
    
    CEFlipAnimationController *animationController;
    
}
@end

static int colorIndex = 0;


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    colors = @[[UIColor redColor],
               [UIColor orangeColor],
               [UIColor yellowColor],
               [UIColor greenColor],
               [UIColor blueColor],
               [UIColor purpleColor]];
    
    self.view.backgroundColor = colors[colorIndex];
    
    colorIndex = (colorIndex +1) % colors.count;
    
    //self.transitioningDelegate = self;
    
}










- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
