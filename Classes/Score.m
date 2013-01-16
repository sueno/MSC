//
//  Score.m
//  Sample02
//
//  Created by Satoshi Ueno on 11/05/20.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <stdio.h>
#import "Score.h"
#import "Calcuration.h"

@implementation Score

- (id) init: (id)calc{
	[super init];
	cal = calc;
	return self;
}

- (id) free {
	[cal release];
	[oya release];
	[free release];
	return self;
}

- (void) pay: (int)takehonor :(int)x :(int)y :(int)z {
	for (i=0;i<4;i++){
		if (i==takehonor){
			[cal pay: i: x];
		}
		else if (i==oya){
			[cal pay: i: y];
		}
		else {
			[cal pay: i: z];
		}
	}
}

- (void) pay: (int)takehonor :(int)x :(int)y {
	for (i=0;i<4;i++){
		if (i==takehonor){
			[cal pay: i: x];
		}
		else {
			[cal pay: i: y];
		}
	}
}

- (void) Ron: (int)grade: (int)point: (int)takehonor: (int)payhonor {
	
	if (oya!=takehonor) {
		
		if (grade==1){
			
			if (point<=20){
				[cal pay: takehonor: 1000];
				[cal pay: payhonor: -1000];
			}
			else if (point<=30){
				[cal pay: takehonor: 1000];
				[cal pay: payhonor: -1000];
			}
			else if (point<=40){
				[cal pay: takehonor: 1300];
				[cal pay: payhonor: -1300];
			}
			else if (point<=50){
				[cal pay: takehonor: 1600];
				[cal pay: payhonor: -1600];
			}
			else if (point<=60){
				[cal pay: takehonor: 2000];
				[cal pay: payhonor: -2000];
			}
			else if (point<=70){
				[cal pay: takehonor: 2300];
				[cal pay: payhonor: -2300];
			}
			else if (point<=80){
				[cal pay: takehonor: 2600];
				[cal pay: payhonor: -2600];
			}
			else if (point<=90){
				[cal pay: takehonor: 2900];
				[cal pay: payhonor: -2900];
			}
			else if (point<=100){
				[cal pay: takehonor: 3200];
				[cal pay: payhonor: -3200];
			}
			else {
				[cal pay: takehonor: 3600];
				[cal pay: payhonor: -3600];
			}
			
		}
		else if (grade==2){
			
			if (point<=20){
				[cal pay: takehonor: 1300];
				[cal pay: payhonor: -1300];
			}
			else if (point<=30){
				[cal pay: takehonor: 2000];
				[cal pay: payhonor: -2000];
			}
			else if (point<=40){
				[cal pay: takehonor: 2600];
				[cal pay: payhonor: -2600];
			}
			else if (point<=50){
				[cal pay: takehonor: 3200];
				[cal pay: payhonor: -3200];
			}
			else if (point<=60){
				[cal pay: takehonor: 3900];
				[cal pay: payhonor: -3900];
			}
			else if (point<=70){
				[cal pay: takehonor: 4500];
				[cal pay: payhonor: -4500];
			}
			else if (point<=80){
				[cal pay: takehonor: 5200];
				[cal pay: payhonor: -5200];
			}
			else if (point<=90){
				[cal pay: takehonor: 5800];
				[cal pay: payhonor: -5800];
			}
			else if (point<=100){
				[cal pay: takehonor: 6400];
				[cal pay: payhonor: -6400];
			}
			else {
				[cal pay: takehonor: 7100];
				[cal pay: payhonor: -7100];
			}
			
		}
		else if (grade==3){
			
			if (point<=20){
				[cal pay: takehonor: 2600];
				[cal pay: payhonor: -2600];
			}
			else if (point<=30){
				[cal pay: takehonor: 3900];
				[cal pay: payhonor: -3900];
			}
			else if (point<=40){
				[cal pay: takehonor: 5200];
				[cal pay: payhonor: -5200];
			}
			else if (point<=50){
				[cal pay: takehonor: 6400];
				[cal pay: payhonor: -6400];
			}
			else if (point<=60){
				[cal pay: takehonor: 7700];
				[cal pay: payhonor: -7700];
			}
			else {
				[cal pay: takehonor: 8000];
				[cal pay: payhonor: -8000];
			}
			
		}
		else if (grade==4){
			
			if (point<=20){
				[cal pay: takehonor: 5200];
				[cal pay: payhonor: -5200];
			}
			else if (point<=30){
				[cal pay: takehonor: 7700];
				[cal pay: payhonor: -7700];
			}
			else {
				[cal pay: takehonor: 8000];
				[cal pay: payhonor: -8000];
			}
			
		}
		else if (grade==5){
			[cal pay: takehonor: 8000];
			[cal pay: payhonor: -8000];
		}
		else if (grade<=7){
			[cal pay: takehonor: 12000];
			[cal pay: payhonor: -12000];
		}
		else if (grade<=10) {
			[cal pay: takehonor: 16000];
			[cal pay: payhonor: -16000];
		}
		else if (grade<=12) {
			[cal pay: takehonor: 24000];
			[cal pay: payhonor: -24000];
		}
		else {
			[cal pay: takehonor: 32000];
			[cal pay: payhonor: -32000];
		}
	}
	
	else {
		
		if (grade==1){
			
			if (point<=20){
				[cal pay: takehonor: 1500];
				[cal pay: payhonor: -1500];
			}
			else if (point<=30){
				[cal pay: takehonor: 1500];
				[cal pay: payhonor: -1500];
			}
			else if (point<=40){
				[cal pay: takehonor: 2000];
				[cal pay: payhonor: -2000];
			}
			else if (point<=50){
				[cal pay: takehonor: 2400];
				[cal pay: payhonor: -2400];
			}
			else if (point<=60){
				[cal pay: takehonor: 2900];
				[cal pay: payhonor: -2900];
			}
			else if (point<=70){
				[cal pay: takehonor: 3400];
				[cal pay: payhonor: -3400];
			}
			else if (point<=80){
				[cal pay: takehonor: 3900];
				[cal pay: payhonor: -3900];
			}
			else if (point<=90){
				[cal pay: takehonor: 4400];
				[cal pay: payhonor: -4400];
			}
			else if (point<=100){
				[cal pay: takehonor: 4800];
				[cal pay: payhonor: -4800];
			}
			else {
				[cal pay: takehonor: 5300];
				[cal pay: payhonor: -5300];
			}
			
		}
		else if (grade==2){
			
			if (point<=20){
				[cal pay: takehonor: 2000];
				[cal pay: payhonor: -2000];
			}
			else if (point<=30){
				[cal pay: takehonor: 2900];
				[cal pay: payhonor: -2900];
			}
			else if (point<=40){
				[cal pay: takehonor: 3900];
				[cal pay: payhonor: -3900];
			}
			else if (point<=50){
				[cal pay: takehonor: 4800];
				[cal pay: payhonor: -4800];
			}
			else if (point<=60){
				[cal pay: takehonor: 5800];
				[cal pay: payhonor: -5800];
			}
			else if (point<=70){
				[cal pay: takehonor: 6800];
				[cal pay: payhonor: -6800];
			}
			else if (point<=80){
				[cal pay: takehonor: 7700];
				[cal pay: payhonor: -7700];
			}
			else if (point<=90){
				[cal pay: takehonor: 8700];
				[cal pay: payhonor: -8700];
			}
			else if (point<=100){
				[cal pay: takehonor: 9600];
				[cal pay: payhonor: -9600];
			}
			else {
				[cal pay: takehonor: 10600];
				[cal pay: payhonor: -10600];
			}
			
		}
		else if (grade==3){
			
			if (point<=20){
				[cal pay: takehonor: 3900];
				[cal pay: payhonor: -3900];
			}
			else if (point<=30){
				[cal pay: takehonor: 5800];
				[cal pay: payhonor: -5800];
			}
			else if (point<=40){
				[cal pay: takehonor: 7700];
				[cal pay: payhonor: -7700];
			}
			else if (point<=50){
				[cal pay: takehonor: 9600];
				[cal pay: payhonor: -9600];
			}
			else if (point<=60){
				[cal pay: takehonor: 11600];
				[cal pay: payhonor: -11600];
			}
			else {
				[cal pay: takehonor: 12000];
				[cal pay: payhonor: -12000];
			}
			
		}
		else if (grade==4){
			
			if (point<=20){
				[cal pay: takehonor: 7700];
				[cal pay: payhonor: -7700];
			}
			else if (point<=30){
				[cal pay: takehonor: 9600];
				[cal pay: payhonor: -9600];
			}
			else {
				[cal pay: takehonor: 11600];
				[cal pay: payhonor: -11600];
			}
			
		}
		else if (grade==5){
			[cal pay: takehonor: 12000];
			[cal pay: payhonor: -12000];
		}
		else if (grade<=7){
			[cal pay: takehonor: 18000];
			[cal pay: payhonor: -18000];
		}
		else if (grade<=10) {
			[cal pay: takehonor: 24000];
			[cal pay: payhonor: -24000];
		}
		else if (grade<=12) {
			[cal pay: takehonor: 36000];
			[cal pay: payhonor: -36000];
		}
		else {
			[cal pay: takehonor: 48000];
			[cal pay: payhonor: -48000];
		}
	}
}


- (void) Tumo: (int)grade: (int)point: (int)takehonor {
	
	if (takehonor!=oya) {
		
		if (grade==1){
			
			if (point<=20){
				[self pay: takehonor: 1100: -500: -300];
			}
			else if (point<=30){
				[self pay: takehonor: 1100: -500: -300];
			}
			else if (point<=40){
				[self pay: takehonor: 1500: -700: -400];
			}
			else if (point<=50){
				[self pay: takehonor: 1600: -800: -400];
			}
			else if (point<=60){
				[self pay: takehonor: 2000: -1000: -500];
			}
			else if (point<=70){
				[self pay: takehonor: 2400: -1200: -600];
			}
			else if (point<=80){
				[self pay: takehonor: 2700: -1300: -700];
			}
			else if (point<=90){
				[self pay: takehonor: 3100: -1500: -800];
			}
			else if (point<=100){
				[self pay: takehonor: 3200: -1600: -800];
			}
			else {
				[self pay: takehonor: 3600: -1800: -900];
			}
			
		}
		else if (grade==2){
			
			if (point<=20){
				[self pay: takehonor: 1500: -700: -400];
			}
			else if (point<=30){
				[self pay: takehonor: 2000: -1000: -500];
			}
			else if (point<=40){
				[self pay: takehonor: 2700: -1300: -700];
			}
			else if (point<=50){
				[self pay: takehonor: 3200: -1600: -800];
			}
			else if (point<=60){
				[self pay: takehonor: 4000: -2000: -1000];
			}
			else if (point<=70){
				[self pay: takehonor: 4700: -2300: -1200];
			}
			else if (point<=80){
				[self pay: takehonor: 5200: -2600: -1300];
			}
			else if (point<=90){
				[self pay: takehonor: 5900: -2900: -1500];
			}
			else if (point<=100){
				[self pay: takehonor: 6400: -3200: -1600];
			}
			else {
				[self pay: takehonor: 7200: -3600: -1800];
			}
			
		}
		else if (grade==3){
			
			if (point<=20){
				[self pay: takehonor: 2700: -1300: -700];
			}
			else if (point<=30){
				[self pay: takehonor: 3200: -1600: -800];
			}
			else if (point<=40){
				[self pay: takehonor: 5200: -2600: -1300];
			}
			else if (point<=50){
				[self pay: takehonor: 6400: -3200: -1600];
			}
			else if (point<=60){
				[self pay: takehonor: 7900: -3900: -2000];
			}
			else {
				[self pay: takehonor: 8000: -4000: -2000];
			}
			
		}
		else if (grade==4){
			
			if (point<=20){
				[self pay: takehonor: 5200: -2600: -1300];
			}
			else if (point<=30){
				[self pay: takehonor: 7900: -3900: -2000];
			}
			else {
				[self pay: takehonor: 8000: -4000: -2000];
			}
			
		}
		else if (grade==5){
			[self pay: takehonor: 8000: -4000: -2000];
		}
		else if (grade<=7){
			[self pay: takehonor: 12000: -6000: -3000];
		}
		else if (grade<=10) {
			[self pay: takehonor: 16000: -8000: -4000];
		}
		else if (grade<=12) {
			[self pay: takehonor: 24000: -12000: -6000];
		}
		else {
			[self pay: takehonor: 32000: -16000: -8000];
		}
	}
	
	else {
		
		if (grade==1){
			
			if (point<=20){
				[self pay: takehonor: 1500: -500];
			}
			else if (point<=30){
				[self pay: takehonor: 1500: -500];
			}
			else if (point<=40){
				[self pay: takehonor: 2100: -700];
			}
			else if (point<=50){
				[self pay: takehonor: 2400: -800];
			}
			else if (point<=60){
				[self pay: takehonor: 3000: -1000];
			}
			else if (point<=70){
				[self pay: takehonor: 3600: -1200];
			}
			else if (point<=80){
				[self pay: takehonor: 3900: -1300];
			}
			else if (point<=90){
				[self pay: takehonor: 4500: -1500];
			}
			else if (point<=100){
				[self pay: takehonor: 4800: -1600];
			}
			else {
				[self pay: takehonor: 5400: -1800];
			}
			
		}
		else if (grade==2){
			
			if (point<=20){
				[self pay: takehonor: 2100: -700];
			}
			else if (point<=30){
				[self pay: takehonor: 3000: -1000];
			}
			else if (point<=40){
				[self pay: takehonor: 3900: -1300];
			}
			else if (point<=50){
				[self pay: takehonor: 4800: -1600];
			}
			else if (point<=60){
				[self pay: takehonor: 6000: -2000];
			}
			else if (point<=70){
				[self pay: takehonor: 6900: -2300];
			}
			else if (point<=80){
				[self pay: takehonor: 7800: -2600];
			}
			else if (point<=90){
				[self pay: takehonor: 8700: -2900];
			}
			else if (point<=100){
				[self pay: takehonor: 9600: -3200];
			}
			else {
				[self pay: takehonor: 10800: -3600];
			}
			
		}
		else if (grade==3){
			
			if (point<=20){
				[self pay: takehonor: 3900: -1300];
			}
			else if (point<=30){
				[self pay: takehonor: 6000: -2000];
			}
			else if (point<=40){
				[self pay: takehonor: 7800: -2600];
			}
			else if (point<=50){
				[self pay: takehonor: 9600: -3200];
			}
			else if (point<=60){
				[self pay: takehonor: 11700: -3900];
			}
			else {
				[self pay: takehonor: 12000: -4000];
			}
			
		}
		else if (grade==4){
			
			if (point<=20){
				[self pay: takehonor: 7800: -2600];
			}
			else if (point<=30){
				[self pay: takehonor: 11700: -3900];
			}
			else {
				[self pay: takehonor: 12000: -4000];
			}
			
		}
		else if (grade==5){
			[self pay: takehonor: 12000: -4000];
		}
		else if (grade<=7){
			[self pay: takehonor: 18000: -6000];
		}
		else if (grade<=10) {
			[self pay: takehonor: 24000: -8000];
		}
		else if (grade<=12) {
			[self pay: takehonor: 36000: -12000];
		}
		else {
			[self pay: takehonor: 48000: -16000];
		}
	}
}

- (void) Tenpai: (int)x :(int)y: (int)z {
	for (i=0;i<4;i++){
		if (i==x||i==y||i==z){
			[cal pay: i: 1000];
		}
		else {
			[cal pay: i: -3000];
		}
	}
}

- (void) Tenpai: (int)x :(int)y{
	for (i=0;i<4;i++){
		if (i==x||i==y){
			[cal pay: i: 1500];
		}
		else {
			[cal pay: i: -1500];
		}
	}
}

- (void) Tenpai: (int)x{
	for (i=0;i<4;i++){
		if (i==x){
			[cal pay: i: 3000];
		}
		else {
			[cal pay: i: -1000];
		}
	}
}

- (void) getOya: (int)x {
	oya = x;
}

@end
