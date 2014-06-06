//
//  SLButtonTapEvent.m
//  EasyEvent
//
//  Created by Sean Levin on 6/5/14.
//  Copyright (c) 2014 Sean Levin. All rights reserved.
//

#import "SLButtonTapEvent.h"

@interface SLButtonTapEvent()

@property (copy, nonatomic) UIColor *color;

@end

@implementation SLButtonTapEvent

- (instancetype)initWithColor:(UIColor *)color
{
    self = [super init];
    if (self) {
        color = color;
    }
    return self;
}

@end
