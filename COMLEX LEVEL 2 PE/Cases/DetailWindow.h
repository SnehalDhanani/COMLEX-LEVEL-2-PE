//
//  DetailWindow.h
//  Step2CSMac
//
//  Created by Jigar Zalavadiya on 15/09/11.
//  Copyright 2011 SPEC. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>
#import <Quartz/Quartz.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import "Reachability.h"

@class MainWindow;

@interface DetailWindow : NSWindowController{
    
    IBOutlet NSTableView *tableView;
    IBOutlet NSArrayController *arrayController;
    IBOutlet MainWindow *mainwindow;
    IBOutlet NSButton *homeBtn;
    
    IBOutlet WebView *webview;
    IBOutlet WebFrame *mainFrame;
    IBOutlet NSSegmentedControl *segment;
    NSString *title;
   // NSString *hd;
    NSString *caseName;
    IBOutlet NSTextField *cName;
    
    IBOutlet PDFView *pdfView;
    id pdfLink;
    NSString *pdfText;
    
    
}
@property (nonatomic, retain) IBOutlet NSTableView *tableView;
@property (nonatomic, retain) IBOutlet NSArrayController *arrayController;
@property (nonatomic, retain) IBOutlet WebView *webview;
@property (nonatomic, retain) IBOutlet MainWindow *mainwindow;
@property (nonatomic, retain) IBOutlet NSSegmentedControl *segment;
@property (nonatomic, retain)  NSString *title;
//@property (nonatomic, retain) NSString *hd;
@property (nonatomic, retain) NSString *caseName;

- (IBAction)GoToHome:(id)sender;
- (IBAction)switchView:(id)sender;
- (IBAction)tableViewSelected:(id)sender;
- (void)addImageToTableView;


@end
