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
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSLog(@"%@", pool);
    
    @autoreleasepool {
        
    
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
    
    
    // OPERATORs
    // like in c language
    2 + 5; // => 7
    4.2f + 5.1f;
    3 == 2;
    4 != 2;
    1 && 1;
    0 || 0;
    ~0x0F; // > bitwise negation
    0x0F & 0x0F; // > bitwise and
    0x01 << 1; // bitwise left shift
    
    
    // control structure;
    if (NO) {
        NSLog(@"I'm never run");
    } else if (0) {
        NSLog(@"This is also never run");
    } else {
        NSLog(@"Hello, I run");
    }
    
    // switch-case statements
    switch (2) {
        case 0:
            NSLog(@"I'm not two");
            break;
            
        case 1:
            NSLog(@"me neither");
            break;
            
        default:
            NSLog(@"I print");
            break;
    }
    
    // while loop
    int ii = 0;
    while (ii < 4) {
        NSLog(@"%d", ii++); // increase ii in-place after increase its value
    }
    
    
    // for loop
    int jj;
    for (jj = 0; jj < 4; jj++) {
        NSLog(@"%d", jj);
    }
    
    // foreach
    NSArray *values = @[@0, @1, @2, @3];
    for (NSNumber *value in values) {
        NSLog(@"%d", [value intValue]);
    }
    
    // object for loop
    for (id item in values) {
        NSLog(@"%@", item);
    }
    
    // try-catch
    @try {
        @throw [NSException exceptionWithName:@"FileNotFoundException" reason:@"File not found on System" userInfo:nil];
    }
    @catch (NSException *exception) {
        NSLog(@"%@", exception);
    }
    @finally {
        NSLog(@"Finally. Time to clean up");
    }
    
    // NSError objects are useful for function arguments to populate on user mistakes
    NSError *error = [NSError errorWithDomain:@"Invalid email" code:4 userInfo:nil];
    
    // objects
    // create an object by 1. allocate memory and initialize the object
    MyClass *myObject = [[MyClass alloc] init];
    
    // pass message to the object
    [myObject instanceMethodWithParameter:@"Steve Jobs"];
    
    // clean up memeory used in the app
    [pool drain];
    } // end of autorelease pool

    
    // classes and functions
    
    // declare your class in a header file (MyClass.h)
    // class declarative syntax:
    // @interface ClassName : ParentClassName <ImplementProtocols>
    // {
    //    type name; <= variable declarations
    // }
    // @property type name; <= property declarations
    // -/+ (type) Method declarations; <= method declarations
    // @end
    MyClass *myClass = [[MyClass alloc] init];
    [MyClass setCount:10];
    NSLog(@"%d", [MyClass count]); // prints 10
    
    // or using the custom getter and setter method defined in @interface
    [myClass lengthSet:32];
    NSLog(@"%i", [myClass lengthGet]); // print 32;
    
    // for convenience, you may yse rdot notation to set and access    object instance variables:
    myClass.count = 45;
    NSLog(@"%i", myClass.count); // print => 45
    
    // call class method:
    NSString *classMethodString = [MyClass classMethod];
    MyClass *classFromName = [MyClass myClassFromName:@"Hello"];
    
    // call instance methods:
    MyClass *myClass = [[MyClass alloc] init];
    NSString *stringFromInstanceMethod = [myClass instanceMethodWithParameter:@"Hello"];
    
    
    // selectors
    // way to dynamically represent methods. use to call methods of a class,
    // pass methods through functions to tell other classes they should call it
    // and to save methods as variables
    // SEL is the data type. @selector() returns a selector from method name provided
    // methodAParameterAsString:andAparaaaameterAsNumber: is method name for method in MyClass
    SEL selectorVar = @selector(methodAParameterAsString:andAParameterAsNumbeer:);
    if ([myClass respondsToSelector:selectorVar]) {
        // check if class contains method
        // must put all methods arguments into one object to send to
        // performSelector function
        NSArray *arguments = [NSArray arrayWithObjects:@"Hello" count:@4];
        [myClass performSelector:selectorVar withObject:arguments];
        // call the method
    } else {
        NSLog(@"MyClass does not have method: %@", NSStringFromSelector(selectorVar));
    }
    return 0;
    
}

@implementation MyClass {
    long distance;
    NSNumber height;
}

// to access a public variable from the interface file, use `_`
// followed by variable name
_count = 5; // reference `int count` from MyClass interface

// access variable defined in implementation file
distance = 18;

// to use @property variable in implementation, use @synthesize to crease accessor variable
@synthesize roString = _roString;

+ (void)initialize
{
    if (self == [MyClass class])
    {
        distance = 0;
    }
}

// counterpart to initialize method.
// called when an object's reference count is zero
- (void)dealloc
{
    [height release]; // if not using ARC, make sure to release class vairable objects
    [super dealloc]; // and call the parent dealloc
}


// constructures are a way of creating instacnes of a class
// this is a default constructor which is called when the object is initialized
- (id) init
{
    if ((self = [super init])) {
        self.count = 1; // self used for object to call itself
    }
    return self;
}

// can create constructors that contains arguments
- (id)initWithDistance:(int)defaultDistance
{
    distance = defaultDistance;
    return self;
}

+ (NSString *)classMethod
{
    return [[self alloc] init];
}

- (NSString *)instanceMethodWithParameter:(NSString *)string
{
    return @"New String";
}

- (NSNumber *)methodAParameterAsString:(NSString *)string andAParameterAsNumbeer:(NSNumber *)number
{
    return @42;
}

// objective-c doesn't have private method declarations,
// but you can simulate them.
// to do so, create the method in the @implementation but not in the @inteface

- (NSNumber *)secretPrivateMethod
{
    return @72;
}
[self secretPrivateMethod]; // call private method

// methods declared into MyProtocol
- (void)myProtocolMethod
{
    // statements
}
@end // end of the implementation


