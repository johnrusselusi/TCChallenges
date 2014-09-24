//
//  main.m
//  AnimalKIngdom
//
//  Created by John Russel Usi on 9/24/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Dog.h"
#import "Cat.h"

int main(int argc, const char * argv[])
{

  @autoreleasepool {
    
    Dog *doggy = [[Dog alloc]init];
    Cat *kitty = [[Cat alloc]init];
    
    [doggy fetch];
    [kitty fetch];
    [doggy rollOver];
    [kitty rollOver];
            
  }
    return 0;
}

