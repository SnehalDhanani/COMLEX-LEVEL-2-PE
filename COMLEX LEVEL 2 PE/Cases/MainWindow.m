//
//  MainWindow.m
//  Step2CSMac
//
//  Created by Jigar Zalavadiya on 15/09/11.
//  Copyright 2011 SPEC. All rights reserved.
//

#import "MainWindow.h"
#import "DetailWindow.h"
#import "FeedbackWindow.h"


@implementation MainWindow
@synthesize btn1, btn2 , btn3, btn4 , btn5 , btn6, btn7 , btn8, btn9, btn12;
@synthesize FVC;


- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        
    }
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    [self.window setBackgroundColor:[NSColor colorWithPatternImage:[NSImage imageNamed:@"shelves2.jpg"]]];
    [self.window makeKeyAndOrderFront:nil];
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    [prefs setObject:@"purchased1" forKey:@"keyForPurchase"];
    
    
    [btn1 highlight:NO];
}

- (IBAction)btn1Event:(id)sender {
    
    if (!detailwindow) {
        
        detailwindow = [[DetailWindow alloc] initWithWindowNibName:@"DetailWindow"];
        detailwindow.mainwindow = self;
       /* if (hdSegment.selectedSegment == 0) {
            NSLog(@"HD");
            detailwindow.hd = @"HDVideo";
        }
        else{
            detailwindow.hd = @"SimpleVideo";
            NSLog(@"SD");
        }*/
       
    }
    if (detailwindow.webview) {
        [detailwindow.webview close];
        [detailwindow.webview removeFromSuperview];
    }
    [feedback close];
    detailwindow.title = @"First";
    detailwindow.caseName =@"Introduction";
    [detailwindow showWindow:self];
    [detailwindow addImageToTableView];
}
- (IBAction)btn2Event:(id)sender{
    
    //[detailwindow close];
    if (!detailwindow) {
        
        detailwindow = [[DetailWindow alloc] initWithWindowNibName:@"DetailWindow"];
        detailwindow.mainwindow = self;
       /* if (hdSegment.selectedSegment == 0) {
            detailwindow.hd = @"HDVideo";
        }
        else{
            detailwindow.hd = @"SimpleVideo";
        }
        */
    }
    if (detailwindow.webview) {
        [detailwindow.webview close];
        [detailwindow.webview removeFromSuperview];
    }
    [feedback close];
    detailwindow.title = @"Second";
    detailwindow.caseName = @"Cardiovascular System";
    [detailwindow showWindow:self];
    [detailwindow addImageToTableView];

}
- (IBAction)btn3Event:(id)sender {
    
    if (!detailwindow) {
        
        detailwindow = [[DetailWindow alloc] initWithWindowNibName:@"DetailWindow"];
        detailwindow.mainwindow = self;
       /* if (hdSegment.selectedSegment == 0) {
            detailwindow.hd = @"HDVideo";
        }
        else{
            detailwindow.hd = @"SimpleVideo";
           
        }
        */
    }
    if (detailwindow.webview) {
        [detailwindow.webview close];
        [detailwindow.webview removeFromSuperview];
    }
    [feedback close];
    detailwindow.title = @"Third";
    detailwindow.caseName = @"Respiratory System";
    [detailwindow showWindow:self];
    [detailwindow addImageToTableView];
}
- (IBAction)btn4Event:(id)sender {
    
    
    if (!detailwindow) {
        
        detailwindow = [[DetailWindow alloc] initWithWindowNibName:@"DetailWindow"];
        detailwindow.mainwindow = self;
       /* if (hdSegment.selectedSegment == 0) {
            
            detailwindow.hd = @"HDVideo";
        }
        else{
            detailwindow.hd = @"SimpleVideo";
           
        }*/
        
    }
    if (detailwindow.webview) {
        [detailwindow.webview close];
        [detailwindow.webview removeFromSuperview];
    }
    [feedback close];
    detailwindow.title = @"Forth";
    detailwindow.caseName= @"Gastrointestinal System";
    [detailwindow showWindow:self];
    [detailwindow addImageToTableView];
}
- (IBAction)btn5Event:(id)sender {
    
    
    if (!detailwindow) {
        
        detailwindow = [[DetailWindow alloc] initWithWindowNibName:@"DetailWindow"];
        detailwindow.mainwindow = self;
       /* if (hdSegment.selectedSegment == 0) {
            
            detailwindow.hd = @"HDVideo";
        }
        else{
            detailwindow.hd = @"SimpleVideo";
            
        }*/
    }
    if (detailwindow.webview) {
        [detailwindow.webview close];
        [detailwindow.webview removeFromSuperview];
    }
    [feedback close];
    detailwindow.title = @"Fifth";
    detailwindow.caseName = @"Genito-Urinary System";
    [detailwindow showWindow:self];
    [detailwindow addImageToTableView];
}
- (IBAction)btn6Event:(id)sender {
    
    
    if (!detailwindow) {
        
        detailwindow = [[DetailWindow alloc] initWithWindowNibName:@"DetailWindow"];
        detailwindow.mainwindow = self;
       /* if (hdSegment.selectedSegment == 0) {
            
            detailwindow.hd = @"HDVideo";
        }
        else{
            detailwindow.hd = @"SimpleVideo";
            
        }*/
    }
    if (detailwindow.webview) {
        [detailwindow.webview close];
        [detailwindow.webview removeFromSuperview];
    }
    [feedback close];
    detailwindow.title = @"Sixth";
    detailwindow.caseName = @"Central Nervous System";
    [detailwindow showWindow:self];
    [detailwindow addImageToTableView];
}
- (IBAction)btn7Event:(id)sender {
    
    
    if (!detailwindow) {
        
        detailwindow = [[DetailWindow alloc] initWithWindowNibName:@"DetailWindow"];
        detailwindow.mainwindow = self;
      /*  if (hdSegment.selectedSegment == 0) {
            
            detailwindow.hd = @"HDVideo";
        }
        else{
            detailwindow.hd = @"SimpleVideo";
            
        }
       */
    }
    if (detailwindow.webview) {
        [detailwindow.webview close];
        [detailwindow.webview removeFromSuperview];
    }
    [feedback close];
    detailwindow.title = @"Seventh";
    detailwindow.caseName =@"Pediatrics Cases";
    [detailwindow showWindow:self];
    [detailwindow addImageToTableView];
}
- (IBAction)btn8Event:(id)sender {
    
    
    if (!detailwindow) {
        detailwindow = [[DetailWindow alloc] initWithWindowNibName:@"DetailWindow"];
        detailwindow.mainwindow = self;
       /* if (hdSegment.selectedSegment == 0) {
            
            detailwindow.hd = @"HDVideo";
        }
        else{
            detailwindow.hd = @"SimpleVideo";
            
        }*/
    }
    if (detailwindow.webview) {
        [detailwindow.webview close];
        [detailwindow.webview removeFromSuperview];
    }
    [feedback close];
    detailwindow.title = @"Eighth";
    detailwindow.caseName = @"Musculoskeletal System";
    [detailwindow showWindow:self];
    [detailwindow addImageToTableView];
}
- (IBAction)btn9Event:(id)sender {
    
    
    if (!detailwindow) {
        detailwindow = [[DetailWindow alloc] initWithWindowNibName:@"DetailWindow"];
        detailwindow.mainwindow = self;
       /* if (hdSegment.selectedSegment == 0) {
            
            detailwindow.hd = @"HDVideo";
        }
        else{
            detailwindow.hd = @"SimpleVideo";
            
        }*/
    }
    if (detailwindow.webview) {
        [detailwindow.webview close];
        [detailwindow.webview removeFromSuperview];
    }
    [feedback close];
    detailwindow.title = @"Ninth";
    detailwindow.caseName = @"Additional Cases";
    [detailwindow showWindow:self];
    [detailwindow addImageToTableView];
}
- (IBAction)btn12Event:(id)sender{
    
    if (detailwindow != nil) {
        if (!feedback) {
            // [detailwindow close];
            feedback = [[FeedbackWindow alloc] initWithWindowNibName:@"FeedbackWindow"];
            feedback.mainwindow = self;
        }
        else{
            
        }
    }
    else{
        if (!feedback) {
            feedback = [[FeedbackWindow alloc] initWithWindowNibName:@"FeedbackWindow"];
            feedback.mainwindow = self;
        }
    }
    if (detailwindow.webview) {
        [detailwindow.webview close];
        [detailwindow.webview removeFromSuperview];
    }
    [detailwindow close];
    [feedback showWindow:self];
    
}

/*
- (IBAction)HdVideo:(id)sender{
    
    if (hdSegment.selectedSegment == 0) {
        
        
        detailwindow.hd = @"HDVideo";
    }
    else{
        detailwindow.hd = @"SimpleVideo";
        
    }
}
 */
@end