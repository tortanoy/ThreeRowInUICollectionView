//
//  SampleCollectionViewController.m
//  ThreeRowInCollectionView
//
//  Created by iGetWeb on 3/16/2558 BE.
//  Copyright (c) 2558 iGetWeb. All rights reserved.
//

#import "SampleCollectionViewController.h"

@interface SampleCollectionViewController ()
{
    NSArray *userList;
}
@end

@implementation SampleCollectionViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    userList = @[@"cat-1",
                 @"cat-2",
                 @"cat-3",
                 @"cat-4",
                 @"cat-5",
                 @"cat-6",
                 @"cat-7"];
    
    [self.collectionView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"bg"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [userList count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *reuseIdentifier = @"SampleCell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    UIImageView *avatar = (UIImageView *)[cell viewWithTag:1001];
    [[avatar layer] setCornerRadius:avatar.bounds.size.width / 2];
    [[avatar layer] setMasksToBounds:YES];
    [avatar setImage:[UIImage imageNamed:userList[indexPath.row]]];
    
    UILabel *userNameLabel = (UILabel *)[cell viewWithTag:1002];
    [userNameLabel setText:@"###"];
    
    return cell;
}

@end
