//
//  VBViewController.m
//  January
//
//  Created by Vitaly Berg on 30/01/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import "VBViewController.h"

@interface VBViewController ()

@end

@implementation VBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSThread currentThread] threadDictionary][@"hello"] = @"Hello, World!";
    
    NSLog(@"currentThread: %@", [NSThread currentThread]);
    NSLog(@"thredDictionary: %@", [[NSThread currentThread] threadDictionary]);
    
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"currentThread: %@", [NSThread currentThread]);
        NSLog(@"thredDictionary: %@", [[NSThread currentThread] threadDictionary]);
    });
}

@end
