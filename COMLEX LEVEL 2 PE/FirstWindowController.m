//
//  FirstWindowController.m
//  Step2CSMac
//
//  Created by Jigar Zalavadiya on 18/01/12.
//  Copyright 2012 SPEC. All rights reserved.
//

#import "FirstWindowController.h"
#import "SampleWindowController.h"
#import "IAPforCases.h"
#import "MainWindow.h"

@implementation FirstWindowController
@synthesize sample1, sample2, sample3, case60;
@synthesize samplewindowController, iapforCases, mainWindow;
@synthesize Free1, Buy1;


- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    NSUserDefaults *pref = [NSUserDefaults standardUserDefaults];
    NSString *myString1 = [pref stringForKey:@"keyForPurchase"];
    
    if ([myString1 isEqualToString:@"purchased1"]) {
        
        [Free1 setHidden:NO];
        [Buy1 setHidden:YES];
        
    }
    else{
        
      //  NSURL *url = [NSURL URLWithString: @"http://www.usmletutoring.com/Apple/Buy%20Now%20-%2019.99.png"];
      //  NSData *data = [NSData dataWithContentsOfURL:url];
     //   NSImage *image = [[[NSImage alloc] initWithData:data] autorelease];
      //  Buy1.image = image;
        
        [Free1 setHidden:YES];
        [Buy1 setHidden:NO];
    }
}
-(IBAction)Btn1Event:(id)sender{
    
    if (!samplewindowController) {
        
        samplewindowController = [[SampleWindowController alloc] initWithWindowNibName:@"SampleWindowController"];
        samplewindowController.firstwindowController = self;
    }
    if (samplewindowController.webView) {
        [samplewindowController.webView close];
        [samplewindowController.webView removeFromSuperview];
    }
    [iapforCases close];
    [mainWindow close];
    samplewindowController.caseName = @"Sore throat";
    samplewindowController.pLink = @"Sore_throat_20_year_old_male_clinic.pdf";
    samplewindowController.vLink = @"http://usmletutoring.com/Apple/uploads/Sore_Throat.html";
    [samplewindowController showWindow:self];
    [samplewindowController windowDidLoad];
}
-(IBAction)Btn2Event:(id)sender{
    if (!samplewindowController) {
        
        samplewindowController = [[SampleWindowController alloc] initWithWindowNibName:@"SampleWindowController"];
        samplewindowController.firstwindowController = self;
        
    }
    if (samplewindowController.webView) {
        [samplewindowController.webView close];
        [samplewindowController.webView removeFromSuperview];
    }
    [iapforCases close];
    [mainWindow close];
    samplewindowController.caseName = @"Numbness and Weakness";
    samplewindowController.vLink = @"http://usmletutoring.com/Apple/uploads/Numbness_Weakness.html";
   // samplewindowController.pLink = @"http://www.usmletutoring.com/Comlex/iPadpdfs/Acute_abdomen_39_year_old_female_ER.pdf";
    samplewindowController.pLink = @"Numbness_weakness_60_year_old_female_clinic.pdf";
    
    [samplewindowController showWindow:self];
    [samplewindowController windowDidLoad];
}
-(IBAction)Btn3Event:(id)sender{
    
    if (!samplewindowController) {
        samplewindowController = [[SampleWindowController alloc] initWithWindowNibName:@"SampleWindowController"];
        samplewindowController.firstwindowController = self;
    }
    if (samplewindowController.webView) {
        [samplewindowController.webView close];
        [samplewindowController.webView removeFromSuperview];
    }
    [iapforCases close];
    [mainWindow close];
    samplewindowController.caseName = @"Wrist Pain";
    samplewindowController.vLink = @"http://usmletutoring.com/Apple/uploads/Wrist_Pain.html";
    samplewindowController.pLink = @"Wrist_pain_34_year_old_female_clinic.pdf";
    [samplewindowController showWindow:self];
    [samplewindowController windowDidLoad];
}
-(IBAction)Btn4Event:(id)sender{
    
    
    NSUserDefaults *pref = [NSUserDefaults standardUserDefaults];
    NSString *myString = [pref stringForKey:@"keyForPurchase"];
   
    if ([myString isEqualToString:@"purchased1"]) {
        
        if (!mainWindow) {
            mainWindow = [[MainWindow alloc] initWithWindowNibName:@"MainWindow"];
            mainWindow.FVC = self;
        }
        [samplewindowController close];
        [mainWindow showWindow:self];
        
    }
    else{ 
        
        if (!iapforCases) {
            iapforCases = [[IAPforCases alloc] initWithWindowNibName:@"IAPforCases"];
            iapforCases.firstwindowController = self;
        }
        [samplewindowController close];
        [iapforCases showWindow:self];
    }
    
}
@end
