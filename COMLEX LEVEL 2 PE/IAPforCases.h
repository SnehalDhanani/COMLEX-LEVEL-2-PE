//
//  IAPforCases.h
//  Step2CSMac
//
//  Created by Jigar Zalavadiya on 19/01/12.
//  Copyright 2012 SPEC. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <StoreKit/StoreKit.h>

@class MainWindow;
@class FirstWindowController;
@class SampleWindowController;


@interface IAPforCases : NSWindowController<SKProductsRequestDelegate, SKPaymentTransactionObserver>{
    
    NSMutableArray *transactionHistory;
    NSMutableArray *products;
    
    NSString *myString;
    IBOutlet NSTextField *myTextField;
    
    IBOutlet MainWindow *mainwindow;
    IBOutlet FirstWindowController *firstwindowController;
    IBOutlet SampleWindowController *samplewindowController;
    
    IBOutlet NSButton *buyBtn;
    IBOutlet NSButton *backBtn;
    
}
@property (nonatomic, retain) NSMutableArray *transactionHistory;
@property (nonatomic, retain) NSString *myString;
@property (nonatomic, retain) IBOutlet MainWindow *mainwindow;
@property (nonatomic, retain) IBOutlet FirstWindowController *firstwindowController;
@property (nonatomic, retain) IBOutlet SampleWindowController *samplewindowController;
@property (nonatomic, retain) IBOutlet NSButton *buyBtn;
@property (nonatomic, retain) IBOutlet NSButton *backBtn;


-(IBAction)buyEvent:(id)sender;
-(IBAction)backEvent:(id)sender;

- (void) requestProductData;
- (void) completeTransaction: (SKPaymentTransaction *)transaction;
- (void) restoreTransaction: (SKPaymentTransaction *)transaction;
- (void) failedTransaction: (SKPaymentTransaction *)transaction;
- (void) recordTransaction:(SKPaymentTransaction * )transaction;
- (void) provideContent:(NSString * )productIdentifier;

@end
