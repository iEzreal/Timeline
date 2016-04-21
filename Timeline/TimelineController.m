//
//  TimelineController.m
//  Timeline
//
//  Created by Ezreal on 16/4/21.
//  Copyright © 2016年 Ezreal. All rights reserved.
//

#import "TimelineController.h"
#import "TimelineCell.h"

@interface TimelineController () <UITableViewDataSource, UITableViewDelegate>

@property(nonatomic, strong) UITableView *tableView;

@end

@implementation TimelineController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"时间轴";
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 120;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"TimelineCell";
    TimelineCell *timelineCell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!timelineCell) {
        timelineCell = [[TimelineCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        timelineCell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    return timelineCell;
}



@end
