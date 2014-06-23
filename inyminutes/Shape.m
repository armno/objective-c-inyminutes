// you can override numOfSides variable or getNumOfSides method
// to edit then with an extension:
#import "Shape.h"

// extensions live in the same file as the class @implementation
@interface Shape ()

@property (copy) NSNumber *numOfSides;

-(NSNumber)getNumOfSides;
-(void)privateMethod;

@end


// the main implementation
@implementation Shape

@synthesize numOfSides = _numOfSides;

-(NSNumber)getNumOfSides
{
    return _numOfSides;
}

-(void)privateMethod
{
    NSLog(@"Private method created by extension. Shape interface cannot call me");
}

@end