//
//  MMMediaCollectionViewDelegate.m
//  SingleGrid
//
//  Created by Juan Miguel Marqués Morilla on 22/2/16.
//  Copyright © 2016 Juan Miguel Marqués Morilla. All rights reserved.
//

#import "MMMediaCollectionViewDelegate.h"
#import "MMMediaCollectionViewCell.h"


@interface MMMediaCollectionViewDelegate ()

@end

@implementation MMMediaCollectionViewDelegate


-(instancetype)initWithCollectionView:(UICollectionView*)collectionView controller:(UIViewController*)controller{
    
    
    self = [super init];
    if (self) {
        
        self.controller = controller;
        self.collectionView = collectionView;
        
        [self.collectionView setDelegate:self];
        [self.collectionView setDataSource:self];

    }
    
    
    return self;
    
    
}


-(void)reloadData{
    
    [self.collectionView reloadData];
}

-(void)reloadDataWithItems:(NSArray*)items{
    
    self.items = items;
    
    [self.collectionView reloadData];
}


#pragma mark UICollectionView delegate methods

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [self.items count];
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
   
    CGFloat width =  (collectionView.bounds.size.width-30)/2;
    CGFloat height = (collectionView.bounds.size.width-30)/2;
    
    
    return CGSizeMake(width, height);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    NSString *stringId = self.items[indexPath.row];
    
    MMMediaCollectionViewCell *cell = (MMMediaCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionCell" forIndexPath:indexPath];
    
    [cell setData:stringId];
    
    return cell;
    
}




@end
