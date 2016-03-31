//
//  ViewController.m
//  RTSegmentControl
//
//  Created by Rabbit on 16/3/31.
//  Copyright © 2016年 Rabbit. All rights reserved.
//

#import "ViewController.h"
#import "RTSegmentedControl.h"

@interface ViewController ()<RTSegmentedControlDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray * btnDataSource = @[@"未付款", @"已付款", @"待收货"];
    
    //  第4部  调用创建
    RTSegmentedControl * segment = [RTSegmentedControl segmentedControlFrame:CGRectMake(0, 44, self.view.bounds.size.width, 44) titleDataSource:btnDataSource backgroundColor:[UIColor colorWithRed:253.0f/255 green:239.0f/255 blue:230.0f/255 alpha:1.0f] titleColor:[UIColor grayColor] titleFont:[UIFont fontWithName:@".Helvetica Neue Interface" size:16.0f] selectColor:[UIColor orangeColor] buttonDownColor:[UIColor redColor] selectBtn:1 Delegate:self];
    // 第5步 添加到试图上
    [self.view addSubview:segment];


}

#pragma mark -- 遵守代理 实现代理方法
- (void)segumentSelectionChange:(NSInteger)selection{
    if (selection == 0) {
        NSLog(@"新动态");
        
    }else if (selection == 1){
        NSLog(@"朋友圈");
    }else{
        NSLog(@"iOS教程");
        
        
    }
    
}

@end
