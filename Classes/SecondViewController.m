//
//  SecondViewController.m
//  MSC_ver1.00
//
//  Created by Satoshi Ueno on 11/05/21.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "Ground.h"
#import <Foundation/Foundation.h>
#import <Foundation/NSString.h>
#import <Foundation/NSObject.h>
#import <UIKit/UIKit.h>
#import "MSC_ver1_05AppDelegate.h"

@implementation SecondViewController
@synthesize gp1;
@synthesize gp2;
@synthesize gp3;
@synthesize gp4;
@synthesize pp1;
@synthesize pp2;
@synthesize pp3;
@synthesize pp4;
//@synthesize mainC2;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (id)init:(id)grnd:(id)msca {
	
	msc = msca;
	ground = grnd;
	
	return self;
	
}

- (void)viewDidLoad {
	
	gp1.text = @"東";
	pp1.text = [ground getPoint:0];
	gp2.text = @"南";
	pp2.text = [ground getPoint:1];
	gp3.text = @"西";
	pp3.text = [ground getPoint:2];
	gp4.text = @"北";
	pp4.text = [ground getPoint:3];
	
}

- (void) Reset{
	
	pp1.text = [ground getPoint:0];
	pp2.text = [ground getPoint:1];
	pp3.text = [ground getPoint:2];
	pp4.text = [ground getPoint:3];
	
	grd = [ground Ground:0];
	
	if (grd == 0) {
		gp1.text = @"東";
		gp2.text = @"南";
		gp3.text = @"西";
		gp4.text = @"北";
	}
	else if (grd%4 == 1) {
		gp1.text = @"北";
		gp2.text = @"東";
		gp3.text = @"南";
		gp4.text = @"西";
	}
	else if (grd%4 == 2) {
		gp1.text = @"西";
		gp2.text = @"北";
		gp3.text = @"東";
		gp4.text = @"南";
	}
	else if (grd%4 == 3) {
		gp1.text = @"南";
		gp2.text = @"西";
		gp3.text = @"北";
		gp4.text = @"東";
	}
	else if (grd%4 == 0) {
		gp1.text = @"東";
		gp2.text = @"南";
		gp3.text = @"西";
		gp4.text = @"北";
	}
	
}

- (IBAction)reset:(id)sender {
	
	ground = [[Ground alloc] init];
	[ground Reset];
	
}

- (IBAction)next:(id)sender{
	grd = [ground Ground:1];
	
	if (grd == 0) {
		gp1.text = @"東";
		gp2.text = @"南";
		gp3.text = @"西";
		gp4.text = @"北";
	}
	else if (grd%4 == 1) {
		gp1.text = @"北";
		gp2.text = @"東";
		gp3.text = @"南";
		gp4.text = @"西";
	}
	else if (grd%4 == 2) {
		gp1.text = @"西";
		gp2.text = @"北";
		gp3.text = @"東";
		gp4.text = @"南";
	}
	else if (grd%4 == 3) {
		gp1.text = @"南";
		gp2.text = @"西";
		gp3.text = @"北";
		gp4.text = @"東";
	}
	else if (grd%4 == 0) {
		gp1.text = @"東";
		gp2.text = @"南";
		gp3.text = @"西";
		gp4.text = @"北";
	}
		
	
	
}

- (void)dealloc {
	[gp1 release];
	[gp2 release];
	[gp3 release];
	[gp4 release];
	[gp1 release];
	[pp2 release];
	[pp3 release];
	[pp4 release];
	[ground release];
    [super dealloc];
}

@end
