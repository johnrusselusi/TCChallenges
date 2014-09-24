//
//  Appliance.h
//  Appliances
//
//  Created by John Russel Usi on 9/12/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject
{
    NSString *productName;
    int voltage;
}

@property (copy)NSString *productName;
@property int voltage;

- (id)initWithProductName:(NSString *)pn;

@end
