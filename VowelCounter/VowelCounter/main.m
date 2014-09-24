//
//  main.m
//  VowelCounter
//
//  Created by John Russel Usi on 9/15/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+VowelCounting.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *string = @"Hello World!";
        NSLog(@"%@ has %d vowels", string, [string vowelCount]);
        
    }
    return 0;
}

