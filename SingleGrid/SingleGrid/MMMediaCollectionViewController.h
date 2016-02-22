//
//  MMMediaCollectionViewController.h
//  SingleGrid
//
//  Created by Juan Miguel Marqués Morilla on 22/2/16.
//  Copyright © 2016 Juan Miguel Marqués Morilla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMMediaCollectionViewDelegate.h"

@interface MMMediaCollectionViewController : UIViewController

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (nonatomic,strong) MMMediaCollectionViewDelegate *collectionViewDelegate;

@end
