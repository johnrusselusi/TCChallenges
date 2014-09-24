//
//  Student.h
//  PersonOOP
//
//  Created by John Russel Usi on 9/24/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import "Person.h"
@class Employee;

@interface Student : Person

@property int studentID;
@property double gradePrelim;
@property double gradeMidterm;
@property double gradeFinals;
@property double GWA;
@property __weak Employee *parent;

- (float)computeGWA;

@end
