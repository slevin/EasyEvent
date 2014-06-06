//
//  SLEvent.m
//  EasyEvent
//
//  Created by Sean Levin on 6/5/14.
//  Copyright (c) 2014 Sean Levin. All rights reserved.
//

#import "SLEvent.h"

@implementation SLEventListener


@end


@implementation SLEvent

- (void)trigger
{
    // do something
}

+ (SLEventListener *)listenerWithTarget:(id)target selector:(SEL)selector
{
    NSLog(@"%@", [self class]);
    return [[SLEventListener alloc] init];
}

@end
