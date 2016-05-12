//
//  ViewController.m
//  国旗选择
//
//  Created by Gate on 16/1/3.
//  Copyright © 2016年 Gate. All rights reserved.
//

#import "ViewController.h"
#import "LcxFlag.h"
#import "FlagView.h"
@interface ViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>
@property (nonatomic ,strong) NSArray *flags;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
//    NSArray *dictArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"flags" ofType:@"plist"]];
//    NSMutableArray *flagArray = [NSMutableArray array];
//    for (NSDictionary *dict in dictArray) {
//        LcxFlag *flag = [LcxFlag flagWithDict:dict];
//        [flagArray addObject:flag];
//    }
//    _flags = flagArray;
}
- (NSArray *)flags
{
    if (_flags == nil) {
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"flags.plist" ofType:nil]];
        
        NSMutableArray *flagArray = [NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            LcxFlag *flag = [LcxFlag flagWithDict:dict];
            [flagArray addObject:flag];
        }
        
        _flags = flagArray;
    }
    NSLog(@"~~~~~~~~~~%lu",(unsigned long)_flags.count);
    return _flags;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    NSLog(@"----------%lu",(unsigned long)self.flags.count);
    return self.flags.count;
}
/*
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    LcxFlag *flag =  self.flags[row];
    return flag.name;
}*/
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
//        FlagView *flagView = (FlagView *)view;
//        if (flagView == nil) { // 没有可循环利用的view
//            flagView = [FlagView flagView];
//        }
    FlagView *flagView = [FlagView flagViewWithResuingView:view];
    flagView.flag = self.flags[row];
    return flagView ;
}
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return [FlagView flagViewHeight];
}
@end
