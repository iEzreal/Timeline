//
//  TimelineCell.m
//  Timeline
//
//  Created by Ezreal on 16/4/21.
//  Copyright © 2016年 Ezreal. All rights reserved.
//

#import "TimelineCell.h"
#import <Masonry/Masonry.h>

@interface TimelineCell ()

@property(nonatomic, strong) UIImageView *pointView;
@property(nonatomic, strong) UIImageView *lineView;

@property(nonatomic, strong) UILabel *time;
@property(nonatomic, strong) UILabel *content;

@end

@implementation TimelineCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (!self) {
        return nil;
    }
    
    _pointView = [[UIImageView alloc] init];
    _pointView.image = [UIImage imageNamed:@"point"];
    [self.contentView addSubview:_pointView];
    
    _lineView = [[UIImageView alloc] init];
    _lineView.image = [UIImage imageNamed:@"line"];
    _lineView.frame = CGRectMake(20, 20, 13, 13);
    [self.contentView addSubview:_lineView];
    
    _time = [[UILabel alloc] init];
    _time.text = @"2016-03-28 11:38:58";
    [self.contentView addSubview:_time];
    
    _content = [[UILabel alloc] init];
    _content.text = @"您提交了订单，请等待第三方卖家系统确认";
    [self.contentView addSubview:_content];
    
    [self layoutPageView];
    
    return self;
}

- (void)layoutPageView {
    [_pointView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView);
        make.left.equalTo(self.contentView).offset(20);
        make.width.height.equalTo(@13);
    }];
    
    [_lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(_pointView);
        make.width.equalTo(@1);
        make.top.equalTo(_pointView.mas_bottom);
        make.bottom.equalTo(self.contentView.mas_bottom);
    }];
    
    [_time mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView);
        make.left.equalTo(_pointView.mas_right).offset(10);
    }];
    
    [_content mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_time.mas_bottom).offset(10);
        make.left.equalTo(_time);
    }];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

   
}

@end
