//
//  WelcomeWindow.m
//  Step2CSMac
//
//  Created by Jigar Zalavadiya on 05/10/11.
//  Copyright 2011 SPEC. All rights reserved.
//

#import "WelcomeWindow.h"

@implementation WelcomeWindow
@synthesize closebtn;
@synthesize checkBox;


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
    [self.window makeKeyAndOrderFront:self];
    [self.window setBackgroundColor:[NSColor colorWithPatternImage:[NSImage imageNamed:@"welcomeback.jpg"]]]; 

}
-(IBAction)closeEvent:(id)sender{
    
    [self.window close];
}
-(IBAction)checkEvent:(id)sender{
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];

    if ([checkBox state ]== NSOnState) {
        
        [prefs setObject:@"On1" forKey:@"keyToLookupString"];
    }else
    {
        [prefs setObject:@"Off1" forKey:@"keyToLookupString"];
    }
}
-(void)dealloc{
    
    [closebtn release];
    [checkBox release];
    [super dealloc];
}
@end
