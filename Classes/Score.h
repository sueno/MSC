//
//  Score.h
//  Sample02
//
//  Created by Satoshi Ueno on 11/05/20.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Calcuration.h"

@interface Score : NSObject {
	id cal;
	int oya;
	int i;
}

- (id) init: (id)calc;
- (id) free;
- (void) pay: (int)takehonor :(int)x :(int)y :(int)z;
- (void) pay: (int)takehonor :(int)x :(int)y;
- (void) Ron: (int)grade: (int)point: (int)takehonor: (int)payhonor;
- (void) Tumo: (int)grade: (int)point: (int)takehonor;
- (void) Tenpai: (int)x :(int)y: (int)z;
- (void) Tenpai: (int)x :(int)y;
- (void) Tenpai: (int)x;
- (void) getOya: (int)x;

@end
