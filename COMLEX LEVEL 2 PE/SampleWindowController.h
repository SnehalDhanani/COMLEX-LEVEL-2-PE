//
//  SampleWindowController.h
//  Step2CSMac
//
//  Created by Jigar Zalavadiya on 18/01/12.
//  Copyright 2012 SPEC. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>
#import <Quartz/Quartz.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import "Reachability.h"

@class FirstWindowController;

@interface SampleWindowController : NSWindowController{
    
    IBOutlet FirstWindowController *firstwindowController;
    IBOutlet NSButton *backBtn;
    id caseName;
    id vLink;
    id pLink;
    IBOutlet NSSegmentedControl *mySegment;
    IBOutlet WebView *webView;
    IBOutlet PDFView *pdfView;
    IBOutlet NSTextField *cName;
    
}
@property (nonatomic, retain) IBOutlet FirstWindowController *firstwindowController;
@property (nonatomic, retain) IBOutlet NSButton *backBtn;
@property (nonatomic, retain) id caseName;
@property (nonatomic, retain) id vLink;
@property (nonatomic, retain) id pLink;
@property (nonatomic, retain) IBOutlet NSSegmentedControl *mySegment;
@property (nonatomic, retain) IBOutlet WebView *webView;
@property (nonatomic, retain) IBOutlet NSTextField *cName;
@property (nonatomic, retain) IBOutlet PDFView *pdfView;

-(IBAction)GoBack:(id)sender;
-(IBAction)changeSegment:(id)sender;
@end
