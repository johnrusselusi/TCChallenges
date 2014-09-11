//
//  Employee.m
//  BMITime
//
//  Created by John Russel Usi on 9/10/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;
- (void)addAssetsObject:(Asset *)a
{
    //  Is asset nil?
    if (!assets) {
        //  Create the array
        assets = [[NSMutableArray alloc]init];
    }
    [assets addObject:a];
    [a setHolder:self];
}

- (unsigned int)valueOfAssets
{
    // Sum up to the resale value of the assets
    unsigned int sum = 0;
    for(Asset *a in assets)
    {
        sum += [a resaleValue];
    }
    return sum;
}

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>",
            [self employeeID], [self valueOfAssets]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}
@end
