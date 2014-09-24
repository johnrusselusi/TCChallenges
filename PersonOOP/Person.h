//
//  Person.h
//  PersonOOP
//
//  Created by John Russel Usi on 9/24/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *firstName;
@property NSString *lastName;

- (void)eat:(NSString *)food;

- (id)initWithFirstName:(NSString *)firstName
               lastName:(NSString *)lastName;

@end
