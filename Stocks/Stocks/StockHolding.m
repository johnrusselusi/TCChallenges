//
//  StockHolding.m
//  Stocks
//
//  Created by John Russel Usi on 9/15/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares, stockID;

- (float)costInDollars{
    
    return purchaseSharePrice * numberOfShares;
}

- (float)valueInDollars{
    
    return currentSharePrice * numberOfShares;
}

- (NSString *)description{

    return [NSString stringWithFormat:@"Stock %d", stockID];
}
@end
