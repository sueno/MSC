//
//  Ground.m
//  Sample02
//
//  Created by Satoshi Ueno on 11/05/20.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/NSString.h>
#import "Calcuration.h"
#import "Score.h"
#import "Ground.h"

@implementation Ground

- (id) init {
	[super init];
	cal = [[Calcuration alloc] init];
	scr = [[Score alloc] init:cal];
	
	ground = 0;
	oya = 0;
	
	return self;
	
}

- (id) free {
	[cal release];
	[scr release];
	return self;
}

- (void) Takehonor: (int)x {
	takehonor = x;
}

- (void) Payhonor: (int)x {
	payhonor = x;
}

- (void) Calc: (int)grade: (int)point {
	[cal re];
	if (takehonor!=payhonor) {
		[scr Ron: grade: point :takehonor :payhonor];
	}
	else {
		[scr Tumo: grade: point: takehonor];
	}
}

- (int) Ground: (int)rotate {
	if (rotate==1) {
		ground++;
		if (ground<=3) {
			oya = ground;
			[scr getOya:oya];
		}
		else {
			for(i=ground;i>3;i-=4);
			oya = i;
			[scr getOya:oya];
		}
	}
	return ground;
}

- (int) Oya {
	return oya;
}

- (NSString *) getPoint: (int)x {
	return [NSString stringWithFormat:@"%d",[cal score: x]];
}

- (NSString *) getPay: (int)x {
	return [NSString stringWithFormat:@"%d",[cal paypoint: x]];
}

- (void) Reset {
	[cal Reset: 25000];
	ground = 0;
	oya = 0;
}

@end

