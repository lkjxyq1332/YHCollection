//
//  CollectionViewCell.m
//  YHCollection
//
//  Created by 杨航 on 16/3/3.
//  Copyright © 2016年 yanghang. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

- (UIImageView *)imageView {
    if (!_imageView) {
        _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0,self.frame.size.width, self.frame.size.height)];
        [self addSubview:_imageView];
    }
    return _imageView;
}

- (void)setImage:(NSString *)image {
    _image = [_image copy];
    self.imageView.image = [UIImage imageNamed:image];
}
@end
