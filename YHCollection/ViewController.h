//
//  ViewController.h
//  YHCollection
//
//  Created by 杨航 on 16/3/3.
//  Copyright © 2016年 yanghang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;
@protocol cycleDelegate <NSObject>
- (void)cycleScrollView:(ViewController *)cycleScrollView didSelectItemAtIndex:(NSInteger)index;

@end
@interface ViewController : UIViewController

@property (nonatomic, weak)id<cycleDelegate> delegate;
@end

