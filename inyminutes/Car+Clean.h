// create a clean car to be extendable

#import "Car.h";

// the category name is inside () following the name of base class
@interface Car (Clean)

-(void)washWindows;
-(void)wax;

@end
