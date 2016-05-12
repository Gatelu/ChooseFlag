//
//  MJFlagView.m
//  03-PickerView03-选择国旗
//
//  Created by apple on 14-4-7.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "FlagView.h"
#import "LcxFlag.h"

@interface FlagView()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@end

@implementation FlagView
+ (instancetype)flagViewWithResuingView:(UIView *)reusingView
{
//    if (reusingView == nil) {
//        return [[[NSBundle mainBundle] loadNibNamed:@"FlagView" owner:nil options:nil] lastObject];
//    } else {
//        return (FlagView *)reusingView;
//    }
    if (reusingView == nil) {
        return [[[NSBundle mainBundle] loadNibNamed:@"FlagView" owner:nil options:nil] lastObject];
    } else {
        return (FlagView *)reusingView;
    }
}

- (void)setFlag:(LcxFlag *)flag
{
    _flag = flag;
    
    // 1.名称
    self.nameLabel.text = flag.name;
    
    // 2.图标
    self.iconView.image = [UIImage imageNamed:flag.icon];
}

+ (CGFloat)flagViewHeight
{
    return 55;
}
@end
