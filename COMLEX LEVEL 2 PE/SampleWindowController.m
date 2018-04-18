//
//  SampleWindowController.m
//  Step2CSMac
//
//  Created by Jigar Zalavadiya on 18/01/12.
//  Copyright 2012 SPEC. All rights reserved.
//

#import "SampleWindowController.h"
#import "Reachability.h"

@implementation SampleWindowController
@synthesize firstwindowController;
@synthesize backBtn, caseName, mySegment;
@synthesize vLink, pLink, webView, cName, pdfView;


- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        
        NSNotificationCenter  *nc = [NSNotificationCenter defaultCenter];
        
        [nc addObserver:self
               selector:@selector(windowWillClose:)
                   name:NSWindowWillCloseNotification
                 object:nil];  // pass window to observe only that window
        
        return (self);

    }
    
    return self;
}
-(BOOL)reachable {
    Reachability *r = [Reachability reachabilityWithHostName:@"google.com"];
    NetworkStatus internetStatus = [r currentReachabilityStatus];
    if(internetStatus == NotReachable) {
        return NO;
    }
	return YES;
}


- (void)windowDidLoad
{
    [super windowDidLoad];
    [webView setHidden:YES];
    [pdfView setHidden:NO];
    
    [cName setStringValue:caseName];
    mySegment.selectedSegment = 0;    
    [self changeSegment:self];
}
-(IBAction)GoBack:(id)sender{
    
    [firstwindowController showWindow:self];
    
}
-(IBAction)changeSegment:(id)sender{
    if([self reachable]){
        
        [webView stopLoading:self];
    if (mySegment.selectedSegment == 0) {
        
        [webView setHidden:YES];
        [pdfView setHidden:NO];
        if (webView) {
            [webView removeFromSuperview];
            [webView close];
        }
        
        NSString *urlStr = [[NSBundle mainBundle] pathForResource:pLink ofType:nil];
        NSURL *url = [NSURL fileURLWithPath:urlStr];
        PDFDocument *pdfDoc = [[PDFDocument alloc] initWithURL:url];
        [pdfView setDocument:pdfDoc];
    }
    else{
        [webView setHidden:NO];
        [pdfView setHidden:YES];
        
        webView = [[WebView alloc] initWithFrame:NSMakeRect(0, 0, pdfView.frame.size.width- 10, pdfView.frame.size.height-10)];
        
        
        [[webView mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:vLink]]]; 
        [self.window.contentView addSubview:webView];
        
        //[[webView mainFrame ] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:vLink]]];
        
    }
    }
    else {
        NSAlert *alert = [[[NSAlert alloc] init] autorelease];
        [alert addButtonWithTitle:@"Ok"];
        [alert setMessageText:@"Internet is not Connected"];
        [alert setInformativeText:@"You have a connection failure. You have to get on a wi-fi or a network to get internet connection."];
        [alert setIcon:[NSImage imageNamed:@"WiFi1.png"]];
        [alert beginSheetModalForWindow:self.window modalDelegate:self didEndSelector:nil contextInfo:nil];
        
    } 

    
}
- (void)windowWillClose:(NSNotification *)notification
{
    //  NSLog (@"Notification %@", [notification name]);
    [webView close];
    [webView removeFromSuperview];
}
-(void)dealloc{
    
    [pdfView release];
  //  [cName release];
    [webView release];
   // [caseName release];
   // [vLink release];
  //  [pLink release];
    [super dealloc];
}

@end
