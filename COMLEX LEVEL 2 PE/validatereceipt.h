//
//  validatereceipt.h
//
//  Created by Ruotger Skupin on 23.10.10.
//  Copyright 2010-2011 Matthew Stevens, Ruotger Skupin, Apple, Alessandro Segala. All rights reserved.
//

/* 
 Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 
 Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 
 Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in
 the documentation and/or other materials provided with the distribution.
 
 Neither the name of the copyright holders nor the names of its contributors may be used to endorse or promote products derived 
 from this software without specific prior written permission.
 
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, 
 BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL 
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE 
 OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#import <Foundation/Foundation.h>


extern NSString *kReceiptBundleIdentifer;
extern NSString *kReceiptBundleIdentiferData;
extern NSString *kReceiptVersion;
extern NSString *kReceiptOpaqueValue;
extern NSString *kReceiptHash;
extern NSString *kReceiptInApp;

extern NSString *kReceiptInAppQuantity;
extern NSString *kReceiptInAppProductIdentifier;
extern NSString *kReceiptInAppTransactionIdentifier;
extern NSString *kReceiptInAppPurchaseDate;
extern NSString *kReceiptInAppOriginalTransactionIdentifier;
extern NSString *kReceiptInAppOriginalPurchaseDate;

CFDataRef copy_mac_address(void);

NSArray * parseInAppPurchasesData(NSData * inappData);
NSDictionary * dictionaryWithAppStoreReceipt(NSString * path);
NSArray* obtainInAppPurchases(NSString *receiptPath);
BOOL validateReceiptAtPath(NSString * path);
NSData * appleRootCert(void);