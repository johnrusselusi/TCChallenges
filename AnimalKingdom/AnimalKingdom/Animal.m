//
//  Animal.m
//  AnimalKIngdom
//
//  Created by John Russel Usi on 9/24/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import "Animal.h"

@implementation Animal

@synthesize numberOfLegs, height, weight;

- (void)eat:(NSString *)food{
  
  NSLog(@"%@ is now eating %@", self, food);
}

@end
