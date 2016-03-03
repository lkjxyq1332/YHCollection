//
//  ViewController.m
//  YHCollection
//
//  Created by 杨航 on 16/3/3.
//  Copyright © 2016年 yanghang. All rights reserved.
//

#import "ViewController.h"
#import "YHCirculation.h"
#import "CollectionViewCell.h"
@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate>{
    NSArray *itemArray;
    
}
@property (nonatomic, strong)UICollectionView *collectionView;
@property (nonatomic, assign)NSInteger totalCount;
@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen]bounds].size.width, 300) collectionViewLayout:[YHCirculation new]];
    [self.collectionView registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    [self.view addSubview:self.collectionView];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    itemArray = @[@"1",@"2",@"3",@"4",@"5"];
    _totalCount = itemArray.count *100;//设置500个cell
    [self.collectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:_totalCount *0.5 inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:NO];//从中间开始
    self.collectionView.pagingEnabled = YES;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _totalCount;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    //根据下标设置item
    long itemIndex = indexPath.item % itemArray.count;
    cell.image = itemArray[itemIndex];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //点击的cell对应的下标 (0 到 4)
    NSLog(@"%ld",indexPath.item % itemArray.count);
    
}
@end
