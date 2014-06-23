//
//  CAr+Clean.m
//  inyminutes
//
//  Created by ArmNo on 6/23/14.
//  Copyright (c) 2014 ArmNo. All rights reserved.
//

#import "Car+Clean.h"
#import "Car.h"

@implementation Car (Clean)

-(void)washWindows
{
    NSLog(@"WIndows washed");
}

-(void)wax
{
    NSLog(@"Waxed");
}

@end

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Car *mustang = [[Car alloc] init];
        mustang.color = @"Red";
        mustang.make = @"Ford";
        
        [mustang turnOn]; // use method from base Car class
        [mustang washWindows]; // use method from Car's Clean category
    }
    
    return 0;
}
