//
//  StockHolding.h
//  Stocks
//
//  Created by John Russel Usi on 9/15/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
{
    int stockID;
    int numberOfShares;
    float purchaseSharePrice;
    float currentSharePrice;
}

@property int   stockID;
@property int   numberOfShares;
@property float purchaseSharePrice;
@property float currentSharePrice;

- (float)costInDollars;
- (float)valueInDollars;

@end
