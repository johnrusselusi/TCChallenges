//
//  OwnedAppliance.h
//  Appliances
//
//  Created by John Russel Usi on 9/12/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import "Appliance.h"

@interface OwnedAppliance : Appliance
{
    NSMutableArray *ownerNames;
}

- (id)initWithProductName:(NSString *)pn
           firstOwnerName:(NSString *)n;
- (void)addOwnerNamesObject:(NSString *)n;
- (void)removeOwnerNamesOBject:(NSString *)n;

@end
