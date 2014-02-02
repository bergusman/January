//
//  VBViewController.m
//  January
//
//  Created by Vitaly Berg on 30/01/14.
//  Copyright (c) 2014 Vitaly Berg. All rights reserved.
//

#import "VBViewController.h"

#import <NSData+MD5Digest/NSData+MD5Digest.h>

@interface VBViewController ()

@end

@implementation VBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
    [[NSThread currentThread] threadDictionary][@"hello"] = @"Hello, World!";
    
    NSLog(@"currentThread: %@", [NSThread currentThread]);
    NSLog(@"thredDictionary: %@", [[NSThread currentThread] threadDictionary]);
    
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"currentThread: %@", [NSThread currentThread]);
        NSLog(@"thredDictionary: %@", [[NSThread currentThread] threadDictionary]);
    });
    
    */
    
    /*
    
    NSPropertyListFormat format;
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"Data.plist" withExtension:@""];
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    NSError *error;
    id plist = [NSPropertyListSerialization propertyListWithData:data options:0 format:&format error:&error];
    
    NSLog(@"error: %@", error);
    NSLog(@"format: %ld", format);
    NSLog(@"plist: %@", plist);

    BOOL res = [NSPropertyListSerialization propertyList:@10 isValidForFormat:NSPropertyListOpenStepFormat];
    NSLog(@"res: %d", res);
    
    NSLog(@"----------------");
    
    NSMutableArray *ma = [[NSMutableArray alloc] init];
    //[ma addObject:ma];
    [ma addObject:@"Bingo"];
    [ma addObject:@(3.34)];
    [ma addObject:[NSDate date]];
    
    NSData *d = [NSData dataWithBytes:(char[]){'A','z'} length:2];
    
    [ma addObject:d];
    
    plist = ma;
    
    NSLog(@"%@", [plist description]);
    NSLog(@"%@", [plist descriptionWithLocale:[NSLocale localeWithLocaleIdentifier:@"ru-RU"] indent:0]);
    
    NSArray *a = [NSArray array];
    
    
    
    for (int i = 0; i < 3; i++) {
        int options = i;
        
        data = [NSPropertyListSerialization dataWithPropertyList:plist format:NSPropertyListOpenStepFormat options:options error:&error];
        NSLog(@"error: %@", error);
        NSLog(@"data: %@", [data MD5HexDigest]);
        
        data = [NSPropertyListSerialization dataWithPropertyList:plist format:NSPropertyListXMLFormat_v1_0 options:options error:&error];
        NSLog(@"error: %@", error);
        NSLog(@"data: %@", [data MD5HexDigest]);
        
        
        
        data = [NSPropertyListSerialization dataWithPropertyList:plist format:NSPropertyListBinaryFormat_v1_0 options:options error:&error];
        NSLog(@"error: %@", error);
        NSLog(@"data: %@", [data MD5HexDigest]);
    }
    
    
    [a writeToFile:nil atomically:nil];
    
    data = [NSPropertyListSerialization dataWithPropertyList:plist format:NSPropertyListBinaryFormat_v1_0 options:0 error:&error];
    [data writeToFile:@"/Users/bergusman/Documents/info.xml" atomically:YES];
    
    [plist writeToFile:@"/Users/bergusman/Documents/info2.xml" atomically:YES];
    
    NSLog(@"----------------");
    
    id plist2 = [NSArray arrayWithContentsOfFile:@"/Users/bergusman/Documents/info.xml"];
    NSLog(@"%@", plist2);
    
    NSLog(@"%@", [@"~/Desktop" stringByExpandingTildeInPath]);
    
    */
}

@end
