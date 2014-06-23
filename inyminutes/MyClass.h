//
//  MyClass.h
//  inyminutes
//
//  Created by ArmNo on 6/20/14.
//  Copyright (c) 2014 ArmNo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyClass : NSObject <MyProtocol>
{
    int count; // protected by default
    @private id data; // private access
    NSString *name;
}

// convenient notation for public access variables to auto generate
// a setter method. by default, setter method name is 'set'
// followed by @property variable name
@property int propInt; // setter method name setPropInt;
@property (copy) id copyId; // (copy) => copy the object during assignment
@property (readonly) NSString *roString;
// use @synthesize in @implementattion to create accessor

// you can customize the getter and setter names instead of using default `set` name:
@property (getter = lengthGet, setter = lengthSet:) int length;

// method declarations
// +/- (return type)methodSignature:(Parameter Type *)parameterName;

+ (NSString *)classMethod;

+ (MyClass *)myClassFromHeight:(NSNumber *)defaultHeight;

// - for instance method
- (NSString *)instanceMethodWithParameter:(NSString *)string;
- (NSNumber *)methodAParameterAsString:(NSString *)string andAParameterAsNumbeer:(NSNumber *)number;

// constructor method with arguments
- (id)initWithDistance:(int)defaultDistance;

@end
