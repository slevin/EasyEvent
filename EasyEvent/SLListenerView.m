//
//  SLListenerView.m
//  EasyEvent
//
//  Created by Sean Levin on 6/5/14.
//  Copyright (c) 2014 Sean Levin. All rights reserved.
//

#import "SLListenerView.h"
#import "SLButtonTapEvent.h"

@interface SLListenerView()

@property (strong, nonatomic) SLEventListener *listener;

@end

@implementation SLListenerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _listener = [SLButtonTapEvent listenerWithTarget:self selector:@selector(buttonTapListen:)];
    }
    return self;
}

- (void)buttonTapListen:(SLEvent *)event
{
    SLButtonTapEvent *bevent = (SLButtonTapEvent *)event;
    self.backgroundColor = bevent.color;
}

@end
