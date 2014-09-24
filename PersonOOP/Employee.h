//
//  Employee.h
//  PersonOOP
//
//  Created by John Russel Usi on 9/24/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import "Person.h"
@class Student;

@interface Employee : Person

@property int employeeID;
@property double grossSalary;
@property double tax;
@property double netSalary;
@property Person *spouse;
@property NSMutableArray *children;

- (double)computeNetIncome;

@end
