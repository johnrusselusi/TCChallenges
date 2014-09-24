//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by John Russel Usi on 9/24/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars{

  return purchaseSharePrice * numberOfShares * conversionRate;
}

- (float)valueInDollars{
  
  return currentSharePrice * numberOfShares * conversionRate;
}

- (NSString *)description{
  
  return [NSString stringWithFormat:@"Foreign Stock %d", [self stockID]];
}

@end
