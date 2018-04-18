//
//  WelcomeWindow.h
//  Step2CSMac
//
//  Created by Jigar Zalavadiya on 05/10/11.
//  Copyright 2011 SPEC. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface WelcomeWindow : NSWindowController{
    
    IBOutlet NSButton *closebtn;
    IBOutlet NSButton *checkBox;
    
    
}
@property (nonatomic, retain) IBOutlet NSButton *closebtn;
@property (nonatomic, retain) IBOutlet NSButton *checkBox;

-(IBAction)closeEvent:(id)sender;
-(IBAction)checkEvent:(id)sender;


@end
