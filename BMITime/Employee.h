//
//  Employee.h
//  BMITime
//
//  Created by John Russel Usi on 9/10/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;


@interface Employee : Person
{
    int employeeID;
    NSMutableArray *assets;
}

@property int employeeID;
- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;
@end
