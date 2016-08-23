//
//  PCMyProjectViewController.m
//  ProjectCleanerCocoa
//
//  Created by qinzhiwei on 16/8/23.
//  Copyright © 2016年 lobster. All rights reserved.
//

#import "PCMyProjectViewController.h"

@interface PCMyProjectViewController ()<NSTabViewDelegate,NSTableViewDataSource>

@property (nonatomic, strong) NSTableView *myProjectTableView;
@property (nonatomic, strong) NSMutableArray *dataSource;

@end

@implementation PCMyProjectViewController

#pragma mark--Life Cycle--

- (void)viewDidLoad{
    [super viewDidLoad];
    [self initTableView];
}

#pragma mark--Private Methods--
- (void)initTableView{
    [self.view addSubview:self.myProjectTableView];
}

- (void)tableView:(NSTableView *)tableView didClickTableColumn:(NSTableColumn *)tableColumn{
    NSInteger row = [tableView clickedRow];
    [tableView deselectColumn:row];
}

#pragma mark--NSTableViewDataSource--
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    return self.dataSource.count;
}

- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row{
    return 50.0f;
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    return @"a";
}

- (void)tableView:(NSTableView *)tableView willDisplayCell:(id)cell forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    
}

#pragma mark--Getters & Setters--
- (NSTableView *)myProjectTableView{
    if (!_myProjectTableView) {
        _myProjectTableView = [[NSTableView alloc]initWithFrame:CGRectMake(0, 0, 200, 500)];
        _myProjectTableView.backgroundColor = [NSColor yellowColor];
    }
    return _myProjectTableView;
}

- (NSMutableArray *)dataSource{
    if (!_dataSource) {
        _dataSource = [NSMutableArray arrayWithObjects:@"1",@"3", nil];
    }
    return _dataSource;
}

@end
