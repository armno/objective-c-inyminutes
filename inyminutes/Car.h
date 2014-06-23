//
//  NSObject_Car.h
//  inyminutes
//
//  Created by ArmNo on 6/23/14.
//  Copyright (c) 2014 ArmNo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property NSString *make;
@property NSString *color;

- (void)turnOn;
- (void)accelerate;

@end
