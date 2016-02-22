//
//  MMMediaCollectionViewCell.m
//  SingleGrid
//
//  Created by Juan Miguel Marqués Morilla on 22/2/16.
//  Copyright © 2016 Juan Miguel Marqués Morilla. All rights reserved.
//

#import "MMMediaCollectionViewCell.h"
#import <SDWebImage/SDImageCache.h>
#import "UIImageView+WebCache.h"

@implementation MMMediaCollectionViewCell

-(void)setData:(NSString*)stringId{
    
    stringId = [stringId stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    
    self.titleID.text = [NSString stringWithFormat:@"ID: %@",stringId];
    
    NSString *urlSring = [NSString stringWithFormat:@"https://www.nicequest.com/portal_nicequest_api/DocumentServlet?docid=%@",stringId];
    
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:urlSring] placeholderImage:[UIImage imageNamed:@"placeholder.jpg"] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
    
    }];
    
}

@end
