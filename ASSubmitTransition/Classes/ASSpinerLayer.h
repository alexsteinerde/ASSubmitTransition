//
//  SpinerLayer.h
//  Example
//
//  Created by  东海 on 15/9/2.
//  Copyright (c) 2015年 Jonathan Tribouharet. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface ASSpinerLayer : CAShapeLayer

- (instancetype)initWithFrame:(CGRect)frame;

- (void)beginAnimation;

- (void)stopAnimation;

@end
