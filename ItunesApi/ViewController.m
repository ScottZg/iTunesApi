//
//  ViewController.m
//  ItunesApi
//
//  Created by zhanggui on 2017/3/22.
//  Copyright © 2017年 shuquwangluo. All rights reserved.
//

#import "ViewController.h"
#import "IASearchViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *contentTableView;

@property (nonatomic,strong)NSArray *contentArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.contentTableView.tableFooterView = [UIView new];
   
}
#pragma mark - TableView Delegate && TableView Datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.contentArr count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = self.contentArr[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
            [self performSegueWithIdentifier:@"showSearchVC" sender:self];
            break;
        case 1:
            [self performSegueWithIdentifier:@"searchByAppleId" sender:self];
            break;
        default:
            break;
    }
}
#pragma mark - Lazy load
- (NSArray *)contentArr {
    if (!_contentArr) {
        _contentArr = @[@"搜索",@"基于Apple id搜索"];
    }
    return _contentArr;
}
@end
