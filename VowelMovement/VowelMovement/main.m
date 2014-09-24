//
//  main.m
//  VowelMovement
//
//  Created by John Russel Usi on 9/15/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray *oldStrings = [NSArray arrayWithObjects:
                              @"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi", nil];
        NSLog(@"old strings: %@", oldStrings);
        NSMutableArray *newStrings = [NSMutableArray array];
        
        NSArray *vowels = [NSArray arrayWithObjects:
                           @"a", @"e", @"i", @"o", @"u", nil];
        
        void (^devowelizer)(id, NSUInteger, BOOL *);
        
        devowelizer = ^(id string, NSUInteger i, BOOL *stop){
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            
            [newStrings addObject:newString];
            
        };
        
        [oldStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"new strings %@", newStrings);
    }
    return 0;
}

