
//
//  YHCirculation.m
//  YHCollection
//
//  Created by 杨航 on 16/3/3.
//  Copyright © 2016年 yanghang. All rights reserved.
//

#import "YHCirculation.h"
static const CGFloat YHItemWH = 200;

@implementation YHCirculation
- (void)prepareLayout {
    [super prepareLayout];
    // 每个cell的尺寸
    self.itemSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, YHItemWH);
    self.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
    // 设置水平滚动
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.minimumLineSpacing = 0;
}


@end
