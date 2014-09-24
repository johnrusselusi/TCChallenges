//
//  main.m
//  BMITime
//
//  Created by John Russel Usi on 9/10/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //  Create an array of Employee objects
        NSMutableArray *employees = [[NSMutableArray alloc]init];
      
//      Employee *employee1 = [[Employee alloc]init];
//      Asset    *asset1 = [[Asset alloc]init];
//      
//      [asset1 setLabel:@"Laptop 21"];
//      
//      [employee1 addAssetsObject:asset1];
      
      
        for (int i = 0; i < 10; i++) {
           
            //  Create an instance of Employee
            Employee *person = [[Employee alloc]init];
            
            
            //  Give the instanc variables interesting values
            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];
            
            //  Put the employee in the employees array
            [employees addObject:person];
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc]init];
        
        //  Create 10 assets
        for (int i = 0; i < 10; i++) {
            
            //  Create an asset
            Asset *asset = [[Asset alloc]init];
            
            //  Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i *17];
            
            //  Get random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            //  Find that employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            //  Assign the asset to the employee
            [randomEmployee addAssetsObject:asset];
            
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *ei =  [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa, ei, nil]];
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets: %@:", allAssets);
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:
                                  @"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of array");
        
        allAssets = nil;
        employees = nil;
        
    }
    sleep(100);
    return 0;
}

