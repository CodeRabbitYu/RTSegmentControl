//
//  RTSegmentedControl.h
//  RTSegmentControl
//
//  Created by Rabbit on 16/3/31.
//  Copyright © 2016年 Rabbit. All rights reserved.
//

#import <UIKit/UIKit.h>

// 定义选择代理
@protocol RTSegmentedControlDelegate < NSObject>

@optional

-(void)segumentSelectionChange:(NSInteger)selection;

@end

@interface RTSegmentedControl : UIView

@property (nonatomic, strong) id <RTSegmentedControlDelegate> delegate;

@property (nonatomic, strong) NSMutableArray * btnTitleSource;
@property (strong, nonatomic) UIColor * titleColor;
@property (strong, nonatomic) UIColor * selectColor;
@property (strong, nonatomic) UIFont * titleFont;
@property (nonatomic, strong) UIColor * buttonDownColor;
@property (nonatomic, assign) NSInteger selectBtn;

+ (RTSegmentedControl *)segmentedControlFrame:(CGRect)frame titleDataSource:(NSArray *)titleDataSouece backgroundColor:(UIColor *)backgroundColor titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont selectColor:(UIColor *)selectColor buttonDownColor:(UIColor *)buttonDownColor selectBtn:(int)selectBtn Delegate:(id)delegate;

@end
