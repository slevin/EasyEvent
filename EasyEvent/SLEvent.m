//
//  SLEvent.m
//  EasyEvent
//
//  Created by Sean Levin on 6/5/14.
//  Copyright (c) 2014 Sean Levin. All rights reserved.
//

#import "SLEvent.h"

#define EVENT_KEY @"slevent"

@interface SLEventListener()

@property (copy, nonatomic) NSString *name;
@property (weak, nonatomic) id target;
@property (assign, nonatomic) SEL selector;

@end

@implementation SLEventListener

- (instancetype)initWithName:(NSString *)name
                      target:(id)target
                    selector:(SEL)selector
{
    self = [super init];
    if (self) {
        _name = name;
        _target = target;
        _selector = selector;
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(listenForNotification:)
                                                     name:name
                                                   object:nil];
    }
    return self;
}

- (void)listenForNotification:(NSNotification *)notification
{
    SLEvent *event = notification.userInfo[EVENT_KEY];
    [self.target performSelector:self.selector withObject:event afterDelay:0];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end


@implementation SLEvent

- (void)trigger
{
    [[NSNotificationCenter defaultCenter] postNotificationName:NSStringFromClass([self class])
                                                        object:self
                                                      userInfo:@{EVENT_KEY: self}];
}

+ (SLEventListener *)listenerWithTarget:(id)target selector:(SEL)selector
{
    SLEventListener *listener = [[SLEventListener alloc] initWithName:NSStringFromClass([self class])
                                                               target:target
                                                             selector:selector];

    return listener;
}

@end
