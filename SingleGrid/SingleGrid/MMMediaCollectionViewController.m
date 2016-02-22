//
//  MMMediaCollectionViewController.m
//  SingleGrid
//
//  Created by Juan Miguel Marqués Morilla on 22/2/16.
//  Copyright © 2016 Juan Miguel Marqués Morilla. All rights reserved.
//

#import "MMMediaCollectionViewController.h"
#import "MMCSVReader.h"

@interface MMMediaCollectionViewController ()

@property (nonatomic,strong) NSArray *idsArray;

@end

@implementation MMMediaCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.collectionViewDelegate = [[MMMediaCollectionViewDelegate alloc] initWithCollectionView:self.collectionView controller:self];
    
    // Do any additional setup after loading the view from its nib.
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
}

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [self loadContent];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadContent{
   
    self.idsArray = [[MMCSVReader sharedInstance]readFromFile:@"ids"];
    
    [self.collectionViewDelegate reloadDataWithItems:self.idsArray];

}



@end
