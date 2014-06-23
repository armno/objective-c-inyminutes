//
//  Blocks.m
//  inyminutes
//
//  Created by ArmNo on 6/23/14.
//  Copyright (c) 2014 ArmNo. All rights reserved.
//

#import "Blocks.h"

@implementation Blocks

@end

// blocks are statements of code, just like a function,
// that are able to be used as data.
// below is a simple block with an integer argument that returns the argument + 4.
int (^addUp)(int n); // declare a variable to store the block

// example variable declaration of block with no arguments
// blocks have access to variables in the same scope.
// but the variables are readonly and the value passed to the block
// is the value of the variable when the block is created.
void (^noParameterBlockVar)(void);

// if we edit outSideVar after declaring addUp, outSideVar is still 17
int outSideVar = 17;

__block long mutableVar = 3;
// __block makes variable writable to blocks, unlike outSideVar

addUp = ^(int n)
{
    // remove (int n) to have a block that doesn't take any parameters
    NSLog(@"You may have as many lines in a block as you would like");
    NSSet *blockSet; // also, you can declare local variables.
    mutableVar = 32;
    return n + outSideVar;
}

int addUp = add(10 + 16); // calls block code with arguments
// blocks are often used as arguments to functions to be called later, or for callbacks.
@implementation BlockExample : NSObject

-(void)runBlock:(void (^)(NSString))block
{
    NSLog(@"Block argument returns nothing and takes in a NSString object.");
    block(@"Argument given to block to execute."); // calling the block
}

@end
