//
//  main.m
//  Objects
//
//  Created by John Russel Usi on 9/11/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [[NSDate alloc]init];
        NSDateComponents *comps = [[NSDateComponents alloc]init];
        [comps setYear:1992];
        [comps setMonth:10];
        [comps setDay:6];
        [comps setHour:13];
        [comps setMinute:30];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc]initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        double d = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"%f", d);
        
    }
    return 0;
}

