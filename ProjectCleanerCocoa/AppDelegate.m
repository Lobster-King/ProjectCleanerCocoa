//
//  AppDelegate.m
//  ProjectCleanerCocoa
//
//  Created by qinzhiwei on 16/8/22.
//  Copyright © 2016年 lobster. All rights reserved.
//

#import "AppDelegate.h"
#import "WAYWindow.h"

@interface AppDelegate ()

@property (weak) IBOutlet WAYWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [_window setVibrantDarkAppearance];
    [_window setContentViewAppearanceVibrantDark];
    _window.titleBarHeight = 80.0;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
