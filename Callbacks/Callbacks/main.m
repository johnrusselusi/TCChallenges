//
//  main.m
//  Callbacks
//
//  Created by John Russel Usi on 9/11/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Logger *logger = [[Logger alloc]init];
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                          target:logger
                                                        selector:@selector(sayOuch:)
                                                        userInfo:nil
                                                         repeats:YES];
        [[NSRunLoop currentRunLoop]run];
        
    }
    return 0;
}

