//
//  MMCSVReader.h
//  SingleGrid
//
//  Created by Juan Miguel Marqués Morilla on 22/2/16.
//  Copyright © 2016 Juan Miguel Marqués Morilla. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MMCSVReader : NSObject

+(instancetype)sharedInstance;

- (NSArray*)readFromFile:(NSString*)filename;

@end
