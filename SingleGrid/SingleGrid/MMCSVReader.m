//
//  MMCSVReader.m
//  SingleGrid
//
//  Created by Juan Miguel Marqués Morilla on 22/2/16.
//  Copyright © 2016 Juan Miguel Marqués Morilla. All rights reserved.
//

#import "MMCSVReader.h"

@implementation MMCSVReader

+(instancetype)sharedInstance{
    
    static dispatch_once_t once;
    static id sharedInstance;
    
    dispatch_once(&once, ^{
        sharedInstance = [self new];
    });
    
    return sharedInstance;
    
}

-(NSArray *)readFromFile:(NSString *)filename{
    
    
    NSString *strPath = [[NSBundle mainBundle] pathForResource:@"ids" ofType:@"csv"];
    NSString *strFile = [NSString stringWithContentsOfFile:strPath encoding:NSUTF8StringEncoding error:nil];
    if (!strFile) {
        NSLog(@"Error reading file.");
    }
    NSArray *result = [[NSArray alloc] init];
    result = [strFile componentsSeparatedByString:@"\n"];
    
    
    return result;
    
}

@end
