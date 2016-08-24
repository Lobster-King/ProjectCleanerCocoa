//
//  PCTitleBarController.m
//  ProjectCleanerCocoa
//
//  Created by qinzhiwei on 16/8/23.
//  Copyright © 2016年 lobster. All rights reserved.
//

#import "PCTitleBarController.h"
#import "PCAnimation.h"
#import "NSView+NSViewAnimationWithBlocks.h"
#import "PCSharedInstance.h"
#import <QuartzCore/QuartzCore.h>

@interface PCTitleBarController ()

@property (weak) IBOutlet NSButton *myProjectButton;
@property (weak) IBOutlet NSView *sliderView;

@end

@implementation PCTitleBarController

#pragma mark--Life Cycle--
- (void)viewDidLoad{
    [super viewDidLoad];
    [self sliderViewConfig];
}

#pragma mark--Private Methods--
- (void)sliderViewConfig{
    [self.sliderView setWantsLayer:YES];
    self.sliderView.layer.backgroundColor = [NSColor colorWithSRGBRed:47.0/255.0 green:79.0/255.0 blue:79.0/255.0 alpha:1].CGColor;
}

- (IBAction)buttonClicked:(NSButton *)sender {

    switch (sender.tag) {
        case 10000:
        {
            
        }
            break;
        case 10001:
        {
            
        }
            break;
        case 10002:
        {
            
        }
            break;
        case 10003:
        {
            
        }
            break;
        case 10004:
        {
            
        }
            break;
        case 10005:
        {
            
        }
            break;
        case 10006:
        {
            
        }
            break;
        case 10007:
        {
            //open panel
            [self openPanel];
        }
            break;
            
        default:
            break;
    }
    if (sender.tag == 10007) {
        return;
    }
    
    if (![PCSharedInstance shareInstance].projectPath) {
        [self openPanel];
        return;
    }
    
    [NSAnimationContext runAnimationGroup:^(NSAnimationContext *context) {
        [context setDuration:0.3];
        [[self.sliderView animator] setFrame:sender.frame];
    } completionHandler:^{
        
    }];
    
}

- (void)openPanel{
    NSOpenPanel *openPanel = [NSOpenPanel openPanel];
    [openPanel setCanChooseDirectories:YES];
    [openPanel setCanChooseFiles:NO];
    NSInteger runModal = [openPanel runModal];
    if (runModal == NSModalResponseOK) {
        PCSharedInstance *instance = [PCSharedInstance shareInstance];
        instance.projectPath = [[openPanel directoryURL] path];
    }
}

@end
