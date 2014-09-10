//
//  main.c
//  FoundOne
//
//  Created by John Russel Usi on 9/10/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int current = 99;
    while (current > 0) {
        if(current % 5 == 0)
        {
            printf("Found One!\n");
        }
        else
        {
            printf("%d\n", current);
        }
       current = current - 3;
    }
    return 0;
}

