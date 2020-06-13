//
//  ViewController.m
//  AutoLayoutCellDemo
//
//  Created by zhangshaopeng715@pingan.com.cn on 2020/6/12.
//  Copyright © 2020 胖子的电脑. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "Masonry.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong)UITableView *tableView;
@property (nonatomic, strong)NSMutableArray *itemArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initData];
    UITableView *tableView = [UITableView new];
    [self.view addSubview:tableView];
    self.tableView = tableView;
    tableView.delegate = self;
    tableView.dataSource = self;
    [tableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"TableViewCell"];
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.bottom.mas_equalTo(self.view);
    }];
}

- (void)initData{
    self.itemArray = [NSMutableArray array];
    NSString *content = @"因为疫情影响，全市仅开放部分游泳馆，游泳馆进行人数限制，并且需要提前一天或者当天在小程序上预约时段";
    NSString *content1 = @"安全隐患";
    for (int i=0; i<10; i++) {
        NSString *i1 = [content substringToIndex:((arc4random()%content.length)+1)];
        NSString *i2 = [content substringToIndex:((arc4random()%content.length)+1)];
        NSString *i3 = [content substringToIndex:((arc4random()%content.length)+1)];
        NSString *i4 = [content1 substringToIndex:((arc4random()%content1.length)+1)];
        NSArray *a = @[i1,i2,i3,i4];
        [self.itemArray addObject:a];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.itemArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    NSArray *item = [self.itemArray objectAtIndex:indexPath.row];
    cell.l4.text = item[3];
    cell.l1.text = @"因为疫情影响，全市仅开放部分游泳馆，游泳";//item[0];
    cell.l2.text = @"因为疫情影响，全市仅开放部分游泳馆，游泳";//item[1];
    cell.l3.text = @"因为疫情影响，全市仅开放部分游泳馆，游泳";//item[2];
    return cell;
}


@end
