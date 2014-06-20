/**
 * Litertally typed along: http://learnxinyminutes.com/docs/objective-c/
 **/

#import <Foundation/Foundation.h>

#import "MyClass.h"

// if you enable modules for iOS >= 7.0 or osx >= 10.9 projects
@import Foundation;

int main (int argc, const char * argv[])
{
    // create an autorelease pool to manage the memory into the program
//    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
//    NSLog(@"%@", pool);
    
    @autoreleasepool {
        
    }
    
    NSLog(@"Hello world");
    
    // primitives
    int myPrimitive1 = 1;
    NSLog(@"%d", myPrimitive1);
    
    long myPrimitive2 = 2342342343;
    NSLog(@"%li", myPrimitive2);
    
    // object declarations
    // * in front of the variable names for strongly-typed object declarations
    MyClass *myObject1 = nil;
    id myObject2 = nil;
    
    // display the value of the objects using `description`
    NSLog(@"%@ and %@", myObject1, [myObject2 description]);
    
    
    // string
    NSString *worldString = @"World";
    NSLog(@"Hello %@!", worldString);
    
    // mutable string
    NSMutableString *mutableString = [NSMutableString stringWithString:@"Hello"];
    // append string onto the same object
    [mutableString appendString:@" World!"];
    NSLog(@"%@", mutableString); // prints => "Hello World!"
    
    
    // Character literals
    NSNumber *theLetterZNumber = @"Z";
    char theLetterZ = [theLetterZNumber charValue]; // or 'Z'
    NSLog(@"%c", theLetterZ);
    
    // Integral literals
    NSNumber *fortyTwoNumber = @42;
    int fortyTwo = [fortyTwoNumber intValue]; // or 42
    NSLog(@"%i", fortyTwo);
    
    // unsigned integer
    NSNumber *fortyTwoUnsignedNumber = @42U;
    unsigned int fortyTwoUnsigned = [fortyTwoUnsignedNumber unsignedIntValue];
    NSLog(@"%u", fortyTwoUnsigned);
    
    // short number
    NSNumber *fortyTwoShortNumber = [NSNumber numberWithShort:42];
    short fortyTwoShort = [fortyTwoShortNumber shortValue];
    NSLog(@"%hi", fortyTwoShort);
    
    // unsigned short number
    NSNumber *fortyOneShortUnsigned = [NSNumber numberWithShort:41];
    unsigned short fortyOneUnsigned = [fortyOneShortUnsigned unsignedShortValue];
    NSLog(@"%u", fortyOneUnsigned);
    
    // long number
    NSNumber *fortyThreeLongNumber = @42L;
    long fortyThreeLong = [fortyThreeLongNumber longValue];
    NSLog(@"%li", fortyThreeLong);
    
    
    // long unsigned number
    NSNumber *fiftyThreeLongNumber = @53L;
    unsigned long fiftyThreeUnsigned = [fiftyThreeLongNumber unsignedLongValue];
    NSLog(@"%lu", fiftyThreeUnsigned);
    
    
    // Floating points literals
    NSNumber *piFloatNumber = @3.141592654F;
    float piFloat = [piFloatNumber floatValue];
    NSLog(@"%f", piFloat);
    NSLog(@"%4.2f", piFloat); // => print 3.14
    
    // double number
    NSNumber *piDoubleNumber = @3.141592654;
    double piDouble = [piDoubleNumber doubleValue];
    NSLog(@"%f", piDouble);
    NSLog(@"%4.2f", piDouble); // => print 3.14
    
    // decimal numbers : fixed point
    NSDecimalNumber *oneDecNum = [NSDecimalNumber decimalNumberWithString:@"10.99"];
    NSDecimalNumber *twoDecNum = [NSDecimalNumber decimalNumberWithString:@"5.002"];
    // we cannot use standard mathemetic operands with NSDecimalNumber (they are objects!)
    [oneDecNum decimalNumberByAdding:twoDecNum];
    [oneDecNum decimalNumberBySubtracting:twoDecNum];
    [oneDecNum decimalNumberByMultiplyingBy:twoDecNum];
    [oneDecNum decimalNumberByDividingBy:twoDecNum];
    NSLog(@"%@", oneDecNum);
    
    
    // boolean literals
    NSNumber *yesNumber = @YES;
    NSNumber *noNumber = @NO;
    
    BOOL yesBool = YES;
    BOOL noBool = NO;
    NSLog(@"%i", yesBool);
    
    // Array object
    NSArray *anArray = @[@1, @2, @3, @4];
    NSNumber *thirdNumber = anArray[2];
    NSLog(@"Third number = %@", thirdNumber);
    
    // mutable arrays
    NSMutableArray *mutableArray = [NSMutableArray arrayWithCapacity:2];
    [mutableArray addObject: @"Hello world"];
    [mutableArray addObject: @"!"];
    [mutableArray removeObjectAtIndex:0];
    NSLog(@"%@", [mutableArray objectAtIndex:0]);
    
    
    // Dictionary object
    NSDictionary *aDictionary = @{ @"key1" : @"value1", @"key2": @"value2" };
    NSObject *valueObject = aDictionary[@"A Key"];
    NSLog(@"Object = %@", valueObject); // print null
    
    // mutable dictionary
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionaryWithCapacity:2];
    [mutableDict setObject:@"value1" forKey:@"key1"];
    [mutableDict setObject:@"value2" forKey:@"key2"];
    [mutableDict removeObjectForKey:@"key1"];
    
    
    // set object
    NSSet *set = [NSSet setWithObjects:@"hello", @"world", @"world!!!", nil];
    NSLog(@"%@", set);
    
    // mutable set
    NSMutableSet *mutableSet = [NSMutableSet setWithCapacity:2];
    [mutableSet addObject: @"Hello"];
    [mutableSet addObject: @"Hello"];
    NSLog(@"%@", mutableSet);
}



@implementation MyClass

@end
