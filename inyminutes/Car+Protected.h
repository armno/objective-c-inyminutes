// objective-c doesn't have protected method declarations
// but you can simulate them.
// create a category containing all of the protected methods,
// then import it ONLY into the @implementation file of a class
// belonging to the Car class:
@interface Car (Protected)

-(void)lockCar;

@end
