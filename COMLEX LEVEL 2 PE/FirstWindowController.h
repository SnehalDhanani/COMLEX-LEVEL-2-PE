//
//  FirstWindowController.h
//  Step2CSMac
//
//  Created by Jigar Zalavadiya on 18/01/12.
//  Copyright 2012 SPEC. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class SampleWindowController;
@class IAPforCases;
@class MainWindow;

@interface FirstWindowController : NSWindowController{
    
    
    IBOutlet SampleWindowController *samplewindowController;
    IBOutlet IAPforCases *iapforCases;
    IBOutlet MainWindow *mainWindow;
    
    IBOutlet NSButton *sample1;
    IBOutlet NSButton *sample2;
    IBOutlet NSButton *sample3;
    IBOutlet NSButton *case60;
    IBOutlet NSImageView *Buy1;
    IBOutlet NSImageView *Free1;
    
}

@property (nonatomic,retain) IBOutlet SampleWindowController *samplewindowController;
@property (nonatomic,retain) IBOutlet IAPforCases *iapforCases;
@property (nonatomic,retain) IBOutlet MainWindow *mainWindow;

@property (nonatomic,retain) IBOutlet NSButton *sample1;
@property (nonatomic,retain) IBOutlet NSButton *sample2;
@property (nonatomic,retain) IBOutlet NSButton *sample3;
@property (nonatomic,retain) IBOutlet NSButton *case60;
@property (nonatomic,retain) IBOutlet NSImageView *Buy1;
@property (nonatomic,retain) IBOutlet NSImageView *Free1;

-(IBAction)Btn1Event:(id)sender;
-(IBAction)Btn2Event:(id)sender;
-(IBAction)Btn3Event:(id)sender;
-(IBAction)Btn4Event:(id)sender;

@end
