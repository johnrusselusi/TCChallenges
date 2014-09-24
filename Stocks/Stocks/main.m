//
//  main.m
//  Stocks
//
//  Created by John Russel Usi on 9/15/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
        NSMutableArray *stocks = [[NSMutableArray alloc]init];
        
        for (int i = 0; i < 3; i++) {
          StockHolding *stock = [[StockHolding alloc]init];
          [stock setStockID:i];
          [stocks addObject:stock];
          [stock setCurrentSharePrice:i * 1 + 20];
          [stock setPurchaseSharePrice:i * 2 +10];
          [stock setNumberOfShares:i + 15];
        }
      
        for (int i = 0; i < 3; i++) {
          ForeignStockHolding *foreignStocks = [[ForeignStockHolding alloc]init];
          [foreignStocks setStockID:i+3];
          [stocks addObject:foreignStocks];
          [foreignStocks setCurrentSharePrice:i * 1 + 20];
          [foreignStocks setPurchaseSharePrice:i * 2 + 10];
          [foreignStocks setNumberOfShares:i + 15];
          [foreignStocks setConversionRate:i * .20];
        }
      
//      for (StockHolding *s in stocks) {
//        NSLog(@"%@\nCost in Dollars: %f\nValue in Dollars: %f", s, [s costInDollars],
//              [s valueInDollars]);
//      }
      
        for (ForeignStockHolding *f in stocks) {
//          if ([f isMemberOfClass:[ForeignStockHolding class]]) {
            NSLog(@"%@\nCost in Dollars: %f\nValue in Dollars: %f", f, [f costInDollars],
                  [f valueInDollars]);
        //}
       }
      
    }
    return 0;
}

