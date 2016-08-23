//
//  PCAnimation.h
//  ProjectCleanerCocoa
//
//  Created by qinzhiwei on 16/8/23.
//  Copyright © 2016年 lobster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PCAnimation : NSObject

+ (void)animateWithDuration:(NSTimeInterval)duration
                  animation:(void (^)(void))animationBlock;
+ (void)animateWithDuration:(NSTimeInterval)duration
                  animation:(void (^)(void))animationBlock
                 completion:(void (^)(void))completionBlock;

@end
