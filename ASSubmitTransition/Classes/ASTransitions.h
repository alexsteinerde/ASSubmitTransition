//
//  ASTransitions.h
//  Example
//
//  Created by  东海 on 15/9/2.
//  Copyright (c) 2015年 Jonathan Tribouharet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ASTransitions : NSObject <UIViewControllerAnimatedTransitioning>

-(instancetype) initWithTransitionDuration:(NSTimeInterval)transitionDuration StartingAlpha:(CGFloat)startingAlpha isPush:(BOOL)isPush;

@end
