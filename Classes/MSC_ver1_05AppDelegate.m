//
//  MSC_ver1_05AppDelegate.m
//  MSC_ver1.05
//
//  Created by Satoshi Ueno on 11/05/30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MSC_ver1_05AppDelegate.h"
#import "Ground.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import <Foundation/Foundation.h>
#import <Foundation/NSString.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSObject.h>
#import <UIKit/UIKit.h>

@implementation MSC_ver1_05AppDelegate

@synthesize window;
@synthesize tabBarController;
//@synthesize first;
//@synthesize second;
//@synthesize third;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
    
	
	ground = [[Ground alloc] init];
	[ground Reset];
	first = [[FirstViewController alloc] init:ground:self];
	second = [[SecondViewController alloc] init:ground:self];
	third = [[ThirdViewController alloc] init:ground:self];
	viewControllers = [NSArray arrayWithObjects:first,second,third,nil];
	
	tabBarController = [[UITabBarController alloc] init];
	tabBarController.viewControllers = viewControllers;
	
    [self.window addSubview:tabBarController.view];
    [self.window makeKeyAndVisible];
	tabBarController.selectedIndex = 0;
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}

- (void)setPoint {
	[second Reset];
	
}

- (void)setGround {
	
}

- (void)setPay {
	[third Reset];
	
} 


- (void)dealloc {
	[first release];
	[second release];
	[third release];
	[ground release];
    [tabBarController release];
    [window release];
    [super dealloc];
}


@end
