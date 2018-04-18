//
//  FeedbackWindow.h
//  Step2CSMac
//
//  Created by Jigar Zalavadiya on 15/11/11.
//  Copyright 2011 SPEC. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import "Reachability.h"

@class MainWindow;

@interface FeedbackWindow : NSWindowController{
    IBOutlet WebView *feedBack;
    IBOutlet MainWindow *mainwindow;
    IBOutlet NSButton *homeBtn;
    
}
@property (nonatomic, retain) IBOutlet MainWindow *mainwindow;
@property (nonatomic, retain) IBOutlet WebView *feedBack;

-(IBAction)GoHome:(id)sender;
@end
