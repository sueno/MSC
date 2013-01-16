//
//  FourthViewController.h
//  MSC_ver1.05
//
//  Created by Satoshi Ueno on 11/06/01.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Ground.h"
@class MSC_ver1_05AppDelegate;


@interface FourthViewController : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource>{
	
	Ground *ground;
	MSC_ver1_05AppDelegate *msc;
}

- (id)init:(id)grd:(id)msca;

@end
