//
// extension allows you to override public access propery attributes
// and methods of an @interface
@interface Shape : NSObject

@property (readonly) NSNumber *numOfSides;

-(int)getNumOfSides;

@end
