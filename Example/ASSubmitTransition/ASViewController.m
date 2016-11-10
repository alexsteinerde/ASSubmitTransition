//
//  ASViewController.m
//  ASSubmitTransition
//
//  Created by Alex Steiner on 11/10/2016.
//  Copyright (c) 2016 Alex Steiner. All rights reserved.
//

#import "ASViewController.h"
#import "ASSecondViewController.h"
#import <ASSubmitTransition/ASSubmitTransition.h>

@interface ASViewController ()<UIViewControllerTransitioningDelegate>

@property (weak, nonatomic) IBOutlet UISwitch *switchButton;

@end

@implementation ASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createPresentControllerButton];
}

- (void)createPresentControllerButton {
    ASLoginButton *loginButton = [[ASLoginButton alloc] initWithFrame:CGRectMake(20, CGRectGetHeight(self.view.bounds) - (40 + 80), [UIScreen mainScreen].bounds.size.width - 40, 40)];
    [loginButton setBackgroundColor:[UIColor colorWithRed:1 green:0.f/255.0f blue:128.0f/255.0f alpha:1]];
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(PresentViewController:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
}

- (void)PresentViewController:(ASLoginButton *)button {
    typeof(self) __weak weak = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (_switchButton.on) {
            // Go to the next screen
            [button succeedAnimationWithCompletion:^{
                if (weak.switchButton.on) {
                    [weak didPresentControllerButtonTouch];
                }
            }];
        } else {
            // Login failed
            [button failedAnimationWithCompletion:^{}];
        }
    });
}

- (void)didPresentControllerButtonTouch {
    UIViewController *controller = [ASSecondViewController new];
    controller.transitioningDelegate = self;
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:controller];
    navigationController.transitioningDelegate = self;
    
    [self presentViewController:navigationController animated:YES completion:nil];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented
                                                                  presentingController:(UIViewController *)presenting
                                                                      sourceController:(UIViewController *)source {
    return [[ASTransitions alloc]initWithTransitionDuration:0.4f StartingAlpha:0.5f isPush:true];
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    return [[ASTransitions alloc]initWithTransitionDuration:0.4f StartingAlpha:0.8f isPush:false];
}

@end
