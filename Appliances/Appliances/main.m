//
//  main.m
//  Appliances
//
//  Created by John Russel Usi on 9/12/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"
#import "OwnedAppliance.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        OwnedAppliance *myAppliance = [[OwnedAppliance alloc]initWithProductName:@"Television"
                                                                  firstOwnerName:@"Russel"];
    
        
    }
  sleep(100);
    return 0;
}

