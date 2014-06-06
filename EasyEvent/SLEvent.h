//
//  SLEvent.h
//  EasyEvent
//
//  Created by Sean Levin on 6/5/14.
//  Copyright (c) 2014 Sean Levin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SLEventListener : NSObject

@end

@interface SLEvent : NSObject

- (void)trigger;
+ (SLEventListener *)listenerWithTarget:(id)target selector:(SEL)selector;

@end
