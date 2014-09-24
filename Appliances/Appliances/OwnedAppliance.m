//
//  OwnedAppliance.m
//  Appliances
//
//  Created by John Russel Usi on 9/12/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import "OwnedAppliance.h"

@implementation OwnedAppliance

- (id)initWithProductName:(NSString *)pn
           firstOwnerName:(NSString *)n
{
    self = [super initWithProductName:pn];
    
    if (self) {
        ownerNames = [[NSMutableArray alloc]init];
        if (n) {
            [ownerNames addObject:n];
        }
    }
    return self;
}

- (void)addOwnerNamesObject:(NSString *)n
{
    [ownerNames addObject:n];
}

- (void)removeOwnerNamesOBject:(NSString *)n
{
    [ownerNames removeObject:n];
}

@end
