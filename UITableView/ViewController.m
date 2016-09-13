//
//  ViewController.m
//  UITableView
//
//  Created by liuxingchen on 16/9/13.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
}
//tableView的第每个组有几条数据
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    if (section == 0) {
        return 1;
    }else if (section == 1){
        return 2;
    }else{
        return 3;
    }
}
//tableView一共有多少组数据
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
//tableview上的cell样式
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //UITableViewCell的样式默认是default默认的话无法显示子标题，如果需要子标题可以把style换成Subtitle
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    //indexPath.section ==0; 第0组
    //indexpath.row == 1;第一行
    if (indexPath.section== 0) {
        if (indexPath.row==0) {
            cell.textLabel.text = @"奥迪";
            cell.imageView.image = [UIImage imageNamed:@"m_9_100"];
            cell.detailTextLabel.text = @"奥迪1";
        }
    }else if (indexPath.section ==1){
        if (indexPath.row ==0) {
            cell.textLabel.text = @"宝马";
            cell.imageView.image = [UIImage imageNamed:@"m_3_100"];
            cell.detailTextLabel.text = @"宝马1";
        }else if (indexPath.row ==1){
            cell.textLabel.text = @"奔驰";
            cell.imageView.image = [UIImage imageNamed:@"m_2_100"];
            cell.detailTextLabel.text = @"奔驰1";
        }
    }else {
        if (indexPath.row ==0) {
            cell.textLabel.text = @"本田";
            cell.imageView.image = [UIImage imageNamed:@"m_4_100"];
            cell.detailTextLabel.font = [UIFont systemFontOfSize:8];
            cell.detailTextLabel.text = @"本田1";
        }else if (indexPath.row ==1) {
            cell.textLabel.text = @"马自达";
            cell.imageView.image = [UIImage imageNamed:@"m_5_100"];
            cell.detailTextLabel.font = [UIFont systemFontOfSize:8];
            cell.detailTextLabel.text = @"马自达1";
        }else if (indexPath.row ==2) {
            cell.textLabel.text = @"三菱";
            cell.imageView.image = [UIImage imageNamed:@"m_6_100"];
            cell.detailTextLabel.font = [UIFont systemFontOfSize:8];
            cell.detailTextLabel.text = @"三菱1";
        }
    }
    return cell;
}
//tableview第section组的头部标题
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"奥迪系";
    }else if (section == 1){
        return @"德系";
    }else{
        return @"国产系";
    }
}
//tableview第section组的尾部标题
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if (section == 0) {
        return @"奥迪奥迪奥迪奥迪奥迪奥迪奥迪奥迪奥迪";
    }else if (section == 1){
        return @"德系德系德系德系德系德系德系德系德系";
    }else{
        return @"国产系国产系国产系国产系国产系国产系";
    }
}
@end


