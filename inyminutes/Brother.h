//
//  Brother.h
//  inyminutes
//
//  Created by ArmNo on 6/23/14.
//  Copyright (c) 2014 ArmNo. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Sister; // these lines stop the recursion, resolving the issue
@protocol Brother <NSObject>

-(void)beNiceToSister:(id <Sister>)sister;

@end
