//
//  VBAppDelegate.m
//  January
//
//  Created by Vitaly Berg on 30/01/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import "VBAppDelegate.h"

#import <Crashlytics/Crashlytics.h>

@implementation VBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [Crashlytics startWithAPIKey:@"43bdaee89a9a66824f56a6da19395009058a1b34"];
    
    return YES;
}

@end
