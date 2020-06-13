//
//  TableViewCell.m
//  AutoLayoutCellDemo
//
//  Created by zhangshaopeng715@pingan.com.cn on 2020/6/12.
//  Copyright © 2020 胖子的电脑. All rights reserved.
//

#import "TableViewCell.h"
#import "Masonry.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        UILabel *label4 = [UILabel new];
        [self.contentView addSubview:label4];
        label4.numberOfLines = 0;
        label4.font = [UIFont systemFontOfSize:16];
        label4.textColor = UIColor.whiteColor;
        label4.backgroundColor = UIColor.redColor;
        self.l4 = label4;
        [label4 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.contentView).mas_offset(20);
            make.right.mas_equalTo(self.contentView).mas_offset(-20);
        }];
        [label4 setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        UILabel *label1 = [UILabel new];
        [self.contentView addSubview:label1];
        label1.font = [UIFont systemFontOfSize:16];
        label1.numberOfLines = 0;
        label1.textColor = UIColor.whiteColor;
        label1.backgroundColor = UIColor.greenColor;
        self.l1 = label1;
        [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.mas_equalTo(self.contentView).mas_offset(20);
            make.right.mas_equalTo(label4.mas_left).mas_offset(-20);
        }];
        
        UILabel *label2 = [UILabel new];
        [self.contentView addSubview:label2];
        label2.font = [UIFont systemFontOfSize:16];
        label2.numberOfLines = 0;
        label2.textColor = UIColor.whiteColor;
        label2.backgroundColor = UIColor.purpleColor;
        self.l2 = label2;
        [label2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.contentView).mas_offset(20);
            make.top.mas_equalTo(label1.mas_bottom).mas_offset(20);
            make.right.mas_equalTo(self.contentView).mas_offset(-20);
        }];
        
        UILabel *label3 = [UILabel new];
        [self.contentView addSubview:label3];
        label3.font = [UIFont systemFontOfSize:16];
        label3.numberOfLines = 0;
        label3.textColor = UIColor.whiteColor;
        label3.backgroundColor = UIColor.grayColor;
        self.l3 = label3;
        [label3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.contentView).mas_offset(20);
            make.top.mas_equalTo(label2.mas_bottom).mas_offset(20);
            make.right.bottom.mas_equalTo(self.contentView).mas_offset(-20);
        }];
    }
    return self;
}

@end
