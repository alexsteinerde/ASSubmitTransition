//
//  ASLoglnButton.h
//  Example
//
//  Created by  东海 on 15/9/2.
//  Copyright (c) 2015年 Jonathan Tribouharet. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ASAnimationCompletion)();

@interface ASLoginButton : UIButton

-(void)failedAnimationWithCompletion:(ASAnimationCompletion)completion;

-(void)succeedAnimationWithCompletion:(ASAnimationCompletion)completion;

@end
