//
//  Sister.h
//  inyminutes
//
//  Created by ArmNo on 6/23/14.
//  Copyright (c) 2014 ArmNo. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Brother; // forward-declare statement. without it, compiler would through error.

@protocol Sister <NSObject>

-(void)beNiceToBrother:(id <Brother>)brother;

@end
