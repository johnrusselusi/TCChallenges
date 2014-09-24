//
//  Appliance.m
//  Appliances
//
//  Created by John Russel Usi on 9/12/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

@synthesize productName, voltage;

- (id)initWithProductName:(NSString *)pn
{
    self = [super init];
    
    if (self) {
        [self setProductName:pn];
    }
    return self;
}

@end
