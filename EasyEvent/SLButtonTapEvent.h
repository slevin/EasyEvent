//
//  SLButtonTapEvent.h
//  EasyEvent
//
//  Created by Sean Levin on 6/5/14.
//  Copyright (c) 2014 Sean Levin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SLEvent.h"

@interface SLButtonTapEvent : SLEvent

@property (copy, nonatomic) UIColor *color;

- (instancetype)initWithColor:(UIColor *)color;

@end
