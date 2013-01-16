//
//  SecondViewController.h
//  MSC_ver1.00
//
//  Created by Satoshi Ueno on 11/05/21.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSString.h>
#import <Foundation/NSObject.h>
#import <UIKit/UIKit.h>
#import "Ground.h"
@class MSC_ver1_05AppDelegate;


@interface SecondViewController : UIViewController {
	UILabel *gp1;
	UILabel *gp2;
	UILabel *gp3;
	UILabel *gp4;
	UILabel *pp1;
	UILabel *pp2;
	UILabel *pp3;
	UILabel *pp4;
	Ground *ground;
	MSC_ver1_05AppDelegate *msc;
	
	int grd;

}

@property (nonatomic, retain) IBOutlet UILabel *gp1,*gp2,*gp3,*gp4,*pp1,*pp2,*pp3,*pp4;
//@property (nonatomic, retain) IBOutlet MSC_ver1_00AppDelegate *mainC2;

- (id)init:(id)grnd:(id)msca;
- (void)Reset;

- (IBAction)reset:(id)sender;
- (IBAction)next:(id)sender;

@end
