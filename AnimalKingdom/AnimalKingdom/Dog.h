//
//  Dog.h
//  AnimalKIngdom
//
//  Created by John Russel Usi on 9/24/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import "Animal.h"
#import "Pet.h"

@interface Dog : Animal <Pet>

- (void)bark;

@end
