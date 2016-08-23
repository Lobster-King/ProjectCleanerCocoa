//
//  AppDelegate.m
//  ProjectCleanerCocoa
//
//  Created by qinzhiwei on 16/8/22.
//  Copyright © 2016年 lobster. All rights reserved.
//

#import "AppDelegate.h"
#import "WAYWindow.h"
#import "PCTitleBarController.h"

@interface AppDelegate ()

@property (weak) IBOutlet WAYWindow *window;
@property (nonatomic, strong) PCTitleBarController *titleBar;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [_window setVibrantDarkAppearance];
    [_window setContentViewAppearanceVibrantDark];
//    PCTitleBarController * titleBar = [PCTitleBarController new];
    //must set titleBarHeight first
    _window.titleBarHeight = 100.0;
    [_window.titleBarView addSubview:self.titleBar.view];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

#pragma mark--Getters & Setters--
- (PCTitleBarController *)titleBar{
    if (!_titleBar) {
        _titleBar = [PCTitleBarController new];
    }
    return _titleBar;
}

@end
