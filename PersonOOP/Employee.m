//
//  Employee.m
//  PersonOOP
//
//  Created by John Russel Usi on 9/24/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeID, grossSalary, tax, netSalary;

- (double)computeNetIncome{
  
  netSalary = grossSalary - (grossSalary * tax);
  return netSalary;
}

@end
