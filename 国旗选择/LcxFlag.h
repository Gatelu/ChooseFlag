//
//  LcxFlag.h
//  国旗选择
//
//  Created by Gate on 16/1/3.
//  Copyright © 2016年 Gate. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LcxFlag : NSObject
@property (nonatomic ,copy) NSString *name;
@property (nonatomic ,copy) NSString *icon;


- (instancetype)initFlagWithDict:(NSDictionary *)dict;
+ (instancetype)flagWithDict:(NSDictionary *)dict;

@end
