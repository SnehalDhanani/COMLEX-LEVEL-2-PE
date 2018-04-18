//
//  MainWindow.h
//  Step2CSMac
//
//  Created by Jigar Zalavadiya on 15/09/11.
//  Copyright 2011 SPEC. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class DetailWindow;
@class FeedbackWindow;
@class FirstWindowController;

@interface MainWindow : NSWindowController {
    
    IBOutlet NSButton *btn1;
    IBOutlet NSButton *btn2;
    IBOutlet NSButton *btn3;
    IBOutlet NSButton *btn4;
    IBOutlet NSButton *btn5;
    IBOutlet NSButton *btn6;
    IBOutlet NSButton *btn7;
    IBOutlet NSButton *btn8;
    IBOutlet NSButton *btn9;
    IBOutlet NSButton *btn12;
    IBOutlet DetailWindow *detailwindow;
    IBOutlet FeedbackWindow *feedback;
    IBOutlet FirstWindowController *FVC;
    
   // IBOutlet NSSegmentedControl *hdSegment;
        
}

@property (nonatomic, retain) IBOutlet NSButton *btn1;
@property (nonatomic, retain) IBOutlet NSButton *btn2;
@property (nonatomic, retain) IBOutlet NSButton *btn3;
@property (nonatomic, retain) IBOutlet NSButton *btn4;
@property (nonatomic, retain) IBOutlet NSButton *btn5;
@property (nonatomic, retain) IBOutlet NSButton *btn6;
@property (nonatomic, retain) IBOutlet NSButton *btn7;
@property (nonatomic, retain) IBOutlet NSButton *btn8;
@property (nonatomic, retain) IBOutlet NSButton *btn9;
@property (nonatomic, retain) IBOutlet NSButton *btn12;
@property (nonatomic, retain) IBOutlet FirstWindowController *FVC;
//@property (nonatomic, retain) IBOutlet NSSegmentedControl *hdSegment;


- (IBAction)btn1Event:(id)sender;
- (IBAction)btn2Event:(id)sender;
- (IBAction)btn3Event:(id)sender;
- (IBAction)btn4Event:(id)sender;
- (IBAction)btn5Event:(id)sender;
- (IBAction)btn6Event:(id)sender;
- (IBAction)btn7Event:(id)sender;
- (IBAction)btn8Event:(id)sender;
- (IBAction)btn9Event:(id)sender;
- (IBAction)btn12Event :(id)sender;
//-(IBAction)HdVideo:(id)sender;

@end
