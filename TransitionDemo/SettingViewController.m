//
//  SettingViewController.m
//  TransitionDemo
//
//  Created by apple on 14-4-25.
//  Copyright (c) 2014年 Taagoo. All rights reserved.
//

#import "SettingViewController.h"

#import "AppDelegate.h"


@interface SettingViewController ()
{
    NSString *transitionName;
}
@end

@implementation SettingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)return:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


- (IBAction)change:(id)sender {
    
    UIButton *btn = (UIButton *)sender;
    
    switch (btn.tag) {
        case 1:
            transitionName = @"CECardsAnimationController";
            break;
        case 2:
            transitionName = @"CECrossfadeAnimationController";
            break;
        case 3:
            transitionName = @"CECubeAnimationController";
            break;
        case 4:
            transitionName = @"CEExplodeAnimationController";
            break;
        case 5:
            transitionName = @"CEFlipAnimationController";
            break;
        case 6:
            transitionName = @"CEFoldAnimationController";
            break;
        case 7:
            transitionName = @"CENatGeoAnimationController";
            break;
        case 8:
            transitionName = @"CEPortalAnimationController";
            break;
        case 9:
            transitionName = @"CETurnAnimationController";
            break;
        default:
            break;
    }
    
    id transitionInstance = [[NSClassFromString(transitionName) alloc]init];

    AppDelegateAccessor.navigationControllerAnimationController = transitionInstance;
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}






@end
