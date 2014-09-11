//
//  Person.h
//  BMITime
//
//  Created by John Russel Usi on 9/10/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}

@property float heightInMeters;
@property int weightInKilos;
-(void)setHeightInMeters:(float)h;
-(void)setWeightInKilos:(int)w;

-(float)bodyMassIndex;

@end
