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

@interface PCTitleBarController ()

@property (weak) IBOutlet NSButton *myProjectButton;
@property (weak) IBOutlet NSView *sliderView;

@end

@implementation PCTitleBarController

#pragma mark--Life Cycle--
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        
    }
    return self;
}

- (id)init{
    if (self = [super init]) {
        self = [self initWithNibName:@"PCTitleBar" bundle:nil];
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    [self sliderViewConfig];
//    NSButton
}

#pragma mark--Private Methods--
- (void)sliderViewConfig{
    [self.sliderView setWantsLayer:YES];
    self.sliderView.layer.backgroundColor = [NSColor lightGrayColor].CGColor;
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
    
    self.sliderView.frame = sender.frame;
    
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
