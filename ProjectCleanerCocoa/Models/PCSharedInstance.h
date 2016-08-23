//
//  PCSharedInstance.h
//  ProjectCleanerCocoa
//
//  Created by qinzhiwei on 16/8/23.
//  Copyright © 2016年 lobster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PCSharedInstance : NSObject

@property (nonatomic, copy)NSString *projectPath;

+ (PCSharedInstance *)shareInstance;

@end
