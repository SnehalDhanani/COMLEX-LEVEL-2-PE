//
//  FeedbackWindow.m
//  Step2CSMac
//
//  Created by Jigar Zalavadiya on 15/11/11.
//  Copyright 2011 SPEC. All rights reserved.
//

#import "FeedbackWindow.h"
#import "Reachability.h"


@implementation FeedbackWindow
@synthesize mainwindow , feedBack;

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
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
    if([self reachable]){
        
        [[feedBack mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://spreadsheets.google.com/spreadsheet/embeddedform?formkey=dGtlOEVUeGhGNEZDSElxYy1WdFA0cWc6MQ"]]];
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
-(IBAction)GoHome:(id)sender{
    
    [mainwindow showWindow:self];

}
-(void)dealloc{
    
    [feedBack release];
    [super dealloc];
}

@end
