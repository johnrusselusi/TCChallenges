//
//  Student.m
//  PersonOOP
//
//  Created by John Russel Usi on 9/24/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import "Student.h"

@implementation Student

@synthesize studentID, gradePrelim, gradeMidterm, gradeFinals, GWA;

- (float)computeGWA{
  
  GWA = (gradePrelim * 0.3) + (gradeMidterm * .3) + (gradeFinals * .4);
  return GWA;
}

@end
