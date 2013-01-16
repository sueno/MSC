//
//  ThirdViewController.h
//  MSC_ver1.00
//
//  Created by Satoshi Ueno on 11/05/21.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Ground.h"
@class MSC_ver1_05AppDelegate;


@interface ThirdViewController : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource>{

	UIPickerView *picker;
	UIPickerView *p1picker;
	UIPickerView *p2picker;
	UILabel *player1,*player2,*player3,*player4;
	Ground *ground;
	Ground *testG;
	MSC_ver1_05AppDelegate *msc;
}

@property (nonatomic, retain) IBOutlet UIPickerView *picker,*p1picker,*p2picker;
@property (nonatomic, retain) IBOutlet UILabel *player1,*player2,*player3,*player4;

- (id)init:(id)grd:(id)msca;
- (void)viewDidLoad;
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView*)pickerView;
- (NSInteger)pickerView:(UIPickerView*)pickerView numberOfRowsInComponent:(NSInteger)component;
- (NSString*)pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;


- (void)Reset;

- (IBAction)calc:(id)sender;

@end
