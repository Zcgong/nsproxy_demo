//
//  AOPThreadInvoker.h
//  NSProxyDemo
//
//  Created by arbullzhang on 1/5/16.
//  Copyright © 2016 arbullzhang. All rights reserved.
//

#import "AOPProxy.h"

@interface AOPThreadInvoker : AOPProxy

- (instancetype)initWithInstance:(id)instance
                          thread:(NSThread *)thread;

@end
