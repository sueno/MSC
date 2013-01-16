//
//  MSC_ver1_05AppDelegate.h
//  MSC_ver1.05
//
//  Created by Satoshi Ueno on 11/05/30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSString.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSObject.h>
#import <UIKit/UIKit.h>
#import "Ground.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface MSC_ver1_05AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
	NSArray *viewControllers;
	Ground *ground;
	FirstViewController *first;
	SecondViewController *second;
	ThirdViewController *third;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;
//@property (nonatomic, retain) IBOutlet FirstViewController *first;
//@property (nonatomic, retain) IBOutlet SecondViewController *second;
//@property (nonatomic, retain) IBOutlet ThirdViewController *third;


- (void)setPoint;
- (void)setGround;
- (void)setPay;


@end

