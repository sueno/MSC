//
//  Calcuration.m
//  Sample02
//
//  Created by Satoshi Ueno on 11/05/20.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <stdio.h>
#import "Calcuration.h"

@implementation Calcuration

- (id) init {
	[super init];
	for (i=0;i<4;i++){
		score[i] = 25000;
		
		for (i=0;i<4;i++){
			result[i] = 0;
		}
		
	}
	
	return self;
}

- (id) free {
	[score release];
	[result release];
	[i release];
	return self;
}

- (void) pay: (int)honor: (int)scr {
	result[honor] = scr;
	score[honor] += scr;
}

- (int) score :(int)honor {
	return score[honor];
}

- (void) re {
	for (i=0;i<4;i++){
		result[i] = 0;
	}
}

- (int) paypoint :(int)honor {
	return result[honor];
}

-(void) Reset :(int)scr {
	for (i=0;i<4;i++){
		score[i] = scr;
	}
	for (i=0;i<4;i++){
		result[i] = 0;
	}
}

@end
