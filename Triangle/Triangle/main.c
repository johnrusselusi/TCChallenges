//
//  main.c
//  Triangle
//
//  Created by John Russel Usi on 9/10/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float angleA, float angleB);

int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    return 0;
}

float remainingAngle(float angleA,float angleB)
{
    float angleC = angleA + angleB;
    return angleC;
}
