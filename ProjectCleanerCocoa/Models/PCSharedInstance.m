//
//  PCSharedInstance.m
//  ProjectCleanerCocoa
//
//  Created by qinzhiwei on 16/8/23.
//  Copyright © 2016年 lobster. All rights reserved.
//

#import "PCSharedInstance.h"

static PCSharedInstance *shareIt = nil;

@implementation PCSharedInstance

+ (PCSharedInstance *)shareInstance{
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        shareIt = [[self alloc] init];
    });
    return shareIt;
}



@end
