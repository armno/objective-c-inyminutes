//
//  CarWithUtility.m
//  inyminutes
//
//  Created by ArmNo on 6/23/14.
//  Copyright (c) 2014 ArmNo. All rights reserved.
//

#import "CarUtilities.h"

@interface Car : NSObject <CarUtilities> // name of protocol goes inside <>

// you don't need the @property or method names here for CarUtilities.
// only @implementation does
-(void)turnOnEngineWithUtilities:(id <CarUtilities>)car;

@end

// the @implementation needs to implement the @properties and methods for the protocol.
@implementation Car : NSObject <CarUtilities>

// create a @synthesize statement for the engineOn @property
@synthesize engineOn = _engineOn;

// implement turnOnEngine however you would like.
// Protocols do not define
-(void)turnOnEngine
{
    // it just requires that you do implement it
    _engineOn = YES;
}

// you may use a protocol as data as you know what methods and variables it has implemented
-(void)turnOnEngineWithUtilities:(id<CarUtilities>)objectOfSomeKind
{
    [objectOfSomeKind engineOn]; // you have access to object variables
    [objectOfSomeKind turnOnEngine]; // and the methods inside
    [objectOfSomeKind engineOn]; // mey or may not be YES.
}
@end

// instances of Car now have access to the protocol
Car *carInstance = [[Car alloc] init];
[[carInstance setEngineOn:NO]];
[carInstance turnOnEngine];

if ([carInstance engineOn]) {
    NSLog(@"Car engine is on");
}

// make sure to check if an object of type `id` implements a protocol before calling protocol methods:
if ([myClass conformsToProtocol:@protocol(CarUtility)]) {
    NSLog(@"This doesn't run as the MyClass class doesn't implement the CarUtility protocol method");
} else if ([carInstance conformsToProtocol:@protocol(CarUtility)]) {
    NSLog(@"This does run as the Car class implements the CarUtilities protocol");
}
