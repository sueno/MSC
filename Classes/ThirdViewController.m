//
//  ThirdViewController.m
//  MSC_ver1.00
//
//  Created by Satoshi Ueno on 11/05/21.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ThirdViewController.h"
#import "Ground.h"
#import "MSC_ver1_05AppDelegate.h"


@implementation ThirdViewController

@synthesize picker;
@synthesize p1picker;
@synthesize p2picker;
@synthesize player1;
@synthesize player2;
@synthesize player3;
@synthesize player4;


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

- (void)viewDidLoad {
	player1.text = [NSString stringWithFormat:@"Player1 : 0"];
	player2.text = [NSString stringWithFormat:@"Player2 : 0"];
	player3.text = [NSString stringWithFormat:@"Player3 : 0"];
	player4.text = [NSString stringWithFormat:@"Player4 : 0"];
	
}

- (id)init:(id)grd:(id)msca {
	
	msc = msca;
	ground = grd;
	testG = [[Ground alloc] init];
	
	return self;
	
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView*)pickerView {
	if (pickerView == picker) {
		return 2;
	}
	return 1;
}

- (NSInteger)pickerView:(UIPickerView*)pickerView numberOfRowsInComponent:(NSInteger)component {
	
	if (pickerView == picker) {
		switch (component) {
			case 0 : return 13;
				break;
			case 1 : return 13;
				break;
			default : break;
		}
		return 0;
	}
	return 4;
	
}

- (NSString*)pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {	
	
	if (pickerView == picker) {
		switch (component) {
			case 0 : return [[NSNumber numberWithInteger:row+1] stringValue];
			case 1 : return [[NSNumber numberWithInteger:(row+2)*10] stringValue];
			default : return nil;
		}
	}
	return [[NSNumber numberWithInteger:row+1] stringValue];
	
}


- (void)Reset {
	player1.text = [NSString stringWithFormat:@"Player1 : 0"];
	player2.text = [NSString stringWithFormat:@"Player2 : 0"];
	player3.text = [NSString stringWithFormat:@"Player3 : 0"];
	player4.text = [NSString stringWithFormat:@"Player4 : 0"];
	
}
	

- (IBAction)calc:(id)sender {

	[ground Takehonor:[p1picker selectedRowInComponent:0]];
	[ground Payhonor:[p2picker selectedRowInComponent:0]];
	[ground Calc:[picker selectedRowInComponent:0]+1:([picker selectedRowInComponent:1]+2)*10];
	player1.text = [NSString stringWithFormat:@"Player1 : %@",[ground getPay:0]];
	player2.text = [NSString stringWithFormat:@"Player2 : %@",[ground getPay:1]];
	player3.text = [NSString stringWithFormat:@"Player3 : %@",[ground getPay:2]];
	player4.text = [NSString stringWithFormat:@"Player4 : %@",[ground getPay:3]];
	
	[msc setPoint];
	
}

- (void)dealloc {
    [super dealloc];
}

@end
