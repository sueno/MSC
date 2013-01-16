//
//  FirstViewController.h
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

@interface FirstViewController : UIViewController {
	
	Ground *ground;
	MSC_ver1_05AppDelegate *msc;
}

//@property (nonatomic, retain) IBOutlet MSC_ver1_00AppDelegate *mainC;

- (id)init:(id)grd:(id)msca;

- (IBAction)start:(id)sender;

@end
