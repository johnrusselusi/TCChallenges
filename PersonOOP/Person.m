//
//  Person.m
//  PersonOOP
//
//  Created by John Russel Usi on 9/24/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)eat:(NSString *)food{
  
  NSLog(@"%@ is now eating %@", self, food);
}

- (id)initWithFirstName:(NSString *)firstName
               lastName:(NSString *)lastName{
  
  self = [super init];
  
  if (self) {
    
    [self setFirstName:firstName];
    [self setLastName:lastName];
  }
  
  return self;
}

- (NSString *)description{
  
  return [NSString stringWithFormat:@"%@ %@", [self firstName], [self lastName]];
}

@end
