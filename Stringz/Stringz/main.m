//
//  main.m
//  Stringz
//
//  Created by John Russel Usi on 9/11/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
   
        NSMutableString *str = [[NSMutableString alloc]init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Aaron is cool!\n"];
        }
        
        //  Declare a pointer to an NSError object, but don't instantiate it.
        //  The NSError instance will be created if there is, in fact, an error.
        NSError *error = nil;
        
        BOOL success = [str writeToFile:@"/tmp/cool.txt"
                             atomically:YES
                               encoding:NSUTF8StringEncoding
                                  error:&error];
        if (success) {
            NSLog(@"done writing /temp/cool.txt");
        } else{
            NSLog(@"Writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
        
        
    }
  sleep(100);
    return 0;
}

