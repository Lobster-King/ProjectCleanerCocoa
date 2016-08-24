//
//  PCMyProjectViewController.m
//  ProjectCleanerCocoa
//
//  Created by qinzhiwei on 16/8/23.
//  Copyright © 2016年 lobster. All rights reserved.
//

#import "PCMyProjectViewController.h"

@interface PCMyProjectViewController ()

@property (nonatomic, strong) NSMutableArray *dataSource;

@end

@implementation PCMyProjectViewController

#pragma mark--Life Cycle--

- (void)viewDidLoad{
    [super viewDidLoad];
}

#pragma mark--Private Methods--

#pragma mark--Getters & Setters--

- (NSMutableArray *)dataSource{
    if (!_dataSource) {
        _dataSource = [NSMutableArray arrayWithObjects:@"1",@"3", nil];
    }
    return _dataSource;
}

@end
