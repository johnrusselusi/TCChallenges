//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by John Russel Usi on 9/24/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding

@property float conversionRate;

- (float)costInDollars;
- (float)valueInDollars;

@end
