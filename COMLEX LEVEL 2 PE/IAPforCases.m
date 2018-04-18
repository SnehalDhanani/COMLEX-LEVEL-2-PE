//
//  IAPforCases.m
//  Step2CSMac
//
//  Created by Jigar Zalavadiya on 19/01/12.
//  Copyright 2012 SPEC. All rights reserved.
//

#import "IAPforCases.h"
#import "MainWindow.h"
#import "FirstWindowController.h"
#import "SampleWindowController.h"

@implementation IAPforCases
@synthesize buyBtn, backBtn;
@synthesize mainwindow, firstwindowController, samplewindowController;
@synthesize transactionHistory;
@synthesize myString;


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
    
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
    products = [[NSMutableArray alloc] init];
    NSArray *p = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, NSUserDomainMask, YES);
    
   // NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [p objectAtIndex:0];
    NSString * path = [documentsDirectory stringByAppendingPathComponent:@"history.plist"];
    self.transactionHistory =[NSMutableArray arrayWithContentsOfFile:path];
    if(!transactionHistory) {
        NSMutableArray *_transactionHistory = [[NSMutableArray alloc]init];self.transactionHistory = _transactionHistory;
        [_transactionHistory release];
    }
    [self requestProductData];
}

- (void) requestProductData{
    
    SKProductsRequest *request= [[SKProductsRequest alloc]initWithProductIdentifiers:[NSSet setWithObject:@"OEPL.COMLEX_LEVEL_2_PE.Comlex2"]];
    request.delegate = self;
    [request start];
}

- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response{
   
    NSLog(@"productsRequest didReceiveResponse %ld", [response.products count]);
    
    NSArray *myProducts = response.products;
    for(SKProduct * product in myProducts) {
        [products addObject:product];
    }
    //[request autorelease];
    
    for(SKProduct *aProduct in response.products) 
	{
		NSLog(@"returned: %@ %@",[aProduct localizedDescription],aProduct.price);
        myString = [NSString stringWithFormat:@"%@%@",[aProduct.priceLocale objectForKey:NSLocaleCurrencySymbol],[aProduct price]];
		NSLog(@"Price : %@ ",myString);
	}
    
    for (NSString *invalidProductId in response.invalidProductIdentifiers)
    {
        NSLog(@"Invalid product id: %@" , invalidProductId);
    }
    
    NSView* superView = [[NSView alloc] initWithFrame:NSMakeRect(0, 0, 1000, 500)];
    myTextField = [[NSTextField alloc] initWithFrame:NSMakeRect(585, 90, 153, 35)];
    
    [myTextField setStringValue:myString];
    [myTextField setAlignment:NSCenterTextAlignment];
    [myTextField setEditable:NO];
    [myTextField setBezeled:NO];
    [myTextField setDrawsBackground:NO];
    [myTextField setSelectable:NO];
    [myTextField setBordered:NO];
    [myTextField setTextColor:[NSColor whiteColor]];
    [myTextField setBackgroundColor:[NSColor clearColor]];
    
    [myTextField setFont:[NSFont fontWithName:@"Futura" size:24]]; 
    [superView addSubview:myTextField];
    [superView setAutoresizesSubviews:YES];
    [myTextField setAutoresizingMask:NSViewWidthSizable | NSViewHeightSizable];
    
    [self.window.contentView addSubview:superView];
    
   // [[self window];
}

-(IBAction)buyEvent:(id)sender{
    
    SKPayment *payment = [SKPayment paymentWithProductIdentifier:@"OEPL.COMLEX_LEVEL_2_PE.Comlex2"];
    [[SKPaymentQueue defaultQueue] addPayment:payment];
    
}
- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray*)transactions{
    
    for (SKPaymentTransaction *transaction in transactions)
    {
        switch (transaction.transactionState)
        {
            case SKPaymentTransactionStatePurchased:
                [self completeTransaction:transaction];
                break;
            case SKPaymentTransactionStateFailed:
                [self failedTransaction:transaction];
                break;
            case SKPaymentTransactionStateRestored:
                [self restoreTransaction:transaction];
            default:break;
        }
    }
}

- (void) completeTransaction: (SKPaymentTransaction *)transaction{
    
    [self recordTransaction: transaction];
    [self provideContent: transaction.payment.productIdentifier];
    [[SKPaymentQueue defaultQueue] finishTransaction: transaction];
}

- (void) restoreTransaction: (SKPaymentTransaction *)transaction{
    
    [self completeTransaction:transaction];
}

- (void) failedTransaction: (SKPaymentTransaction *)transaction{
    if (transaction.error.code != SKErrorPaymentCancelled){
        
        
    }
    [[SKPaymentQueue defaultQueue] finishTransaction: transaction];
}

- (void) recordTransaction:(SKPaymentTransaction * )transaction {
    
    if([self.transactionHistory containsObject:transaction.payment.productIdentifier])
    {
        return;
    }
    [[NSUserDefaults standardUserDefaults] setValue:transaction.transactionIdentifier forKey:@"proUpgradeTransactionReceipt" ];
    [[NSUserDefaults standardUserDefaults] synchronize];
  //  NSArray *paths =NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, NSUserDomainMask, YES);
  //  NSString *documentsDirectory = [paths objectAtIndex:0];
  //  NSString * path = [documentsDirectory stringByAppendingPathComponent:@"history.plist"];
  //  [self.transactionHistory addObject:transaction.payment.productIdentifier];
  //  [self.transactionHistory writeToFile:path atomically:YES];

}
- (void) provideContent:(NSString * )productIdentifier {
    
    if (!mainwindow) {
        mainwindow = [[MainWindow alloc] initWithWindowNibName:@"MainWindow"];
        samplewindowController = [[SampleWindowController alloc] initWithWindowNibName:@"SampleWindowController"];
    }
    
    [self.window close];
    [samplewindowController close];
    [mainwindow showWindow:self];
    
}

/*
- (void)recordTransaction:(SKPaymentTransaction *)transaction
{
    if ([transaction.payment.productIdentifier isEqualToString:kInAppPurchaseProUpgradeProductId])
    {
        // save the transaction receipt to disk
        [[NSUserDefaults standardUserDefaults] setValue:transaction.transactionReceipt forKey:@"proUpgradeTransactionReceipt" ];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}
*/


-(IBAction)backEvent:(id)sender{
    
    [self.window close];
    [firstwindowController showWindow:self];
    
}
@end
