//
//  Person.m
//  BMITime
//
//  Created by John Russel Usi on 9/10/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters;
@synthesize weightInKilos;

-(float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}
@end
