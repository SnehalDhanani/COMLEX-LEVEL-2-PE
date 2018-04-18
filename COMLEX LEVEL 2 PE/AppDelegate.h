//
//  AppDelegate.h
//  COMLEX LEVEL 2 PE
//
//  Created by Jigar Zalavadiya on 14/03/12.
//  Copyright (c) 2012 SPEC. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@class MainWindow;
@class WelcomeWindow;
@class FirstWindowController;

@interface AppDelegate : NSObject <NSApplicationDelegate>{
    
    NSWindow *window;
    IBOutlet MainWindow *mainwindow;
    IBOutlet WelcomeWindow *welcomeWindow;
    IBOutlet FirstWindowController *firstwindowController;
    
    
}

@property (assign) IBOutlet NSWindow *window;

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (nonatomic, retain) IBOutlet MainWindow *mainwindow;
@property (nonatomic, retain) IBOutlet WelcomeWindow *welcomeWindow;
@property (nonatomic, retain) IBOutlet FirstWindowController *firstwindowController;


- (IBAction)saveAction:(id)sender;

@end
