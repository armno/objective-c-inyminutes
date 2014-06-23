//
//  Car.m
//  inyminutes
//
//  Created by ArmNo on 6/23/14.
//  Copyright (c) 2014 ArmNo. All rights reserved.
//

#import "Car.h"

@implementation Car

@synthesize make = _make;
@synthesize color = _color;

-(void)turnOn {
    NSLog(@"Car is on");
}

-(void)accelerate
{
    NSLog(@"Accelerating");
}

@end
