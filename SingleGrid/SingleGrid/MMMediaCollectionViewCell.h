//
//  MMMediaCollectionViewCell.h
//  SingleGrid
//
//  Created by Juan Miguel Marqués Morilla on 22/2/16.
//  Copyright © 2016 Juan Miguel Marqués Morilla. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MMMediaCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleID;




-(void)setData:(NSString*)stringId;

@end
