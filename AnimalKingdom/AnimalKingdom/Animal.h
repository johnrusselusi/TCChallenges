//
//  Animal.h
//  AnimalKIngdom
//
//  Created by John Russel Usi on 9/24/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

@property int numberOfLegs;
@property float height;
@property float weight;

- (void)eat:(NSString *)food;

@end
