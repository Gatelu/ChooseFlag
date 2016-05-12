//
//  LcxFlag.m
//  国旗选择
//
//  Created by Gate on 16/1/3.
//  Copyright © 2016年 Gate. All rights reserved.
//

#import "LcxFlag.h"

@implementation LcxFlag
- (instancetype)initFlagWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        _name = dict[@"name"];
        _icon = dict[@"icon"];
    }
    return self;
}
+ (instancetype)flagWithDict:(NSDictionary *)dict{
    return [[self alloc] initFlagWithDict:dict];
}


@end
