# RTSegmentControl
模仿淘宝我的订单界面效果,可以从其他界面跳转到指定的界面


第1步:将 RTSegmentedControl 文件拖入工程

第2步:引入头文件 RTSegmentedControl.h

第3步  创建需要的选择器
NSArray * btnDataSource = @[@"未付款", @"已付款", @"待收货"];

第4部  调用创建
YJSegmentedControl * segment = [RTSegmentedControl segmentedControlFrame:CGRectMake(0, 44, self.view.bounds.size.width, 44) titleDataSource:btnDataSource backgroundColor:[UIColor colorWithRed:253.0f/255 green:239.0f/255 blue:230.0f/255 alpha:1.0f] titleColor:[UIColor grayColor] titleFont:[UIFont fontWithName:@".Helvetica Neue Interface" size:16.0f] selectColor:[UIColor orangeColor] buttonDownColor:[UIColor redColor] selectBtn:1 Delegate:self];

第5步 添加到试图上 
[self.view addSubview:segment];

可以自定义:
1.segmented位置
2.segemented背景颜色
3.文字颜色
4.字体的字体
5.选中文字颜色
6.选中文字背景颜色
7.需要跳转的界面(传入一个int值就可以了)

************************************************************************************************
注意:一定要按照上面写的来呦