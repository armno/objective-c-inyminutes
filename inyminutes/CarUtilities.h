// protocols
// a protocol declares methods that can be implemented by any class
// (so you are a helper)
//
// protocols are not classes themselves. they simply define an interface
// that other objects are responsible for implementing.

@protocol CarUtilities <NSObject>

@property BOOL engineOn;
-(void)turnOnEngine;

@end
