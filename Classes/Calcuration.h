//
//  Calcuration.h
//  Sample02
//
//  Created by Satoshi Ueno on 11/05/20.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSObject.h>

@interface Calcuration : NSObject {
	int score[4];
	int result[4];
	int i;
}

- (id) init;
- (id) free;
- (void) pay: (int)honor: (int)scr;
- (int) score: (int)honor;
- (void) re;
- (int) paypoint: (int)honor;
- (void) Reset: (int)scr;

@end
