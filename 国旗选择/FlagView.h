//
//  MJFlagView.h
//  03-PickerView03-选择国旗
//
//  Created by apple on 14-4-7.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LcxFlag;
@interface FlagView : UIView
@property (nonatomic, strong) LcxFlag *flag;

+ (instancetype)flagViewWithResuingView:(UIView *)resuingView;
+ (CGFloat)flagViewHeight;
@end
