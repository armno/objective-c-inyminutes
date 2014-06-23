//
//  CAr+Protected.m
//  inyminutes
//
//  Created by ArmNo on 6/23/14.
//  Copyright (c) 2014 ArmNo. All rights reserved.
//

#import "Car+Protected.h"

@implementation Car

-(void)lockCar
{
    NSLog(@"Car locked"); // instance of car can't use lockCar because it's not the @interface
}
@end
