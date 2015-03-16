//
//  ThreeRowFlowLayout.m
//  ThreeRowInCollectionView
//
//  Created by iGetWeb on 3/16/2558 BE.
//  Copyright (c) 2558 iGetWeb. All rights reserved.
//

#import "ThreeRowFlowLayout.h"

@interface ThreeRowFlowLayout ()
{
    UICollectionView *collectionView;
    int numberOfItemsPerRow;
    CGSize newItemSize;
    CGFloat totalSpacing;
    CGFloat itemsPerRow;
    CGFloat itemAspectRatio;
}
@end

@implementation ThreeRowFlowLayout

- (void)prepareLayout
{
    numberOfItemsPerRow = 3;
    
    newItemSize = self.itemSize;
    
    // Always use an item count of at least 1 and convert it to a float to use in size calculations
    itemsPerRow = MAX(numberOfItemsPerRow, 1);
    
    
    totalSpacing = self.minimumInteritemSpacing * (itemsPerRow - 1.0);
    
    newItemSize.width = (self.collectionView.bounds.size.width - totalSpacing) / itemsPerRow;
    newItemSize.height = self.itemSize.height;
    
    self.itemSize = newItemSize;
    
}

@end
