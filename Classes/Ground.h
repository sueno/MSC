//
//  Ground.h
//  Sample02
//
//  Created by Satoshi Ueno on 11/05/20.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import "Calcuration.h"
#import "Score.h"

@interface Ground : NSObject {
	id cal;
	id scr;
	int ground, oya, next;
	int takehonor, payhonor;
	int i;
}

- (id) init;
- (id) free;
- (void) Takehonor: (int)x;
- (void) Payhonor: (int)x;
- (void) Calc: (int)grade: (int)point;
- (int) Ground: (int)rotate;
- (int) Oya;
- (NSString *) getPoint: (int)x;
- (NSString *) getPay: (int)x;
- (void) Reset;

@end