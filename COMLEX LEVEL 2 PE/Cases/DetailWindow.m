//
//  DetailWindow.m
//  Step2CSMac
//
//  Created by Jigar Zalavadiya on 15/09/11.
//  Copyright 2011 SPEC. All rights reserved.
//

#import "DetailWindow.h"
#import "MainWindow.h"
#import "Reachability.h"


@implementation DetailWindow
@synthesize tableView;
@synthesize arrayController;
@synthesize webview, mainwindow , segment , title , caseName ;

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        
            NSNotificationCenter  *nc = [NSNotificationCenter defaultCenter];
            
            [nc addObserver:self
                   selector:@selector(windowWillClose:)
                       name:NSWindowWillCloseNotification
                     object:nil];  // pass window to observe only that window
            
            return (self);
       
    }
    return self;
}
-(BOOL)reachable {
    Reachability *r = [Reachability reachabilityWithHostName:@"google.com"];
    NetworkStatus internetStatus = [r currentReachabilityStatus];
    if(internetStatus == NotReachable) {
        return NO;
    }
	return YES;
}
/*
-(void)viewWillDisappear:(BOOL)animated
{
   // [webview loadHTMLString:nil baseURL:nil];
    [webview stopLoading:self];
    [webview close];
    [webview removeFromSuperview];
    
}*/
- (void)addImageToTableView
{

    [cName setStringValue:caseName]; 
    [tableView setBackgroundColor:[NSColor clearColor]];
    [self.segment setSelectedSegment:0];
    [webview stopLoading:self];
    
    if([title isEqualToString:@"First"]){
        
        NSString *urlStr = [[NSBundle mainBundle] pathForResource:@"Common_tips_for_CS.pdf" ofType:nil];
        NSURL *url = [NSURL fileURLWithPath:urlStr];
        PDFDocument *pdfDoc = [[PDFDocument alloc] initWithURL:url];
        [pdfView setDocument:pdfDoc];
        [pdfView setHidden:NO];
        [webview setHidden:YES];
        
        if ([[arrayController arrangedObjects] count] != 0) 
        { 
            [arrayController removeObjectsAtArrangedObjectIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, [[arrayController arrangedObjects ] count])]]; 
        }
        
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"COMMON_tips.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Standardize.png"],@"image", nil]];
        
    }
    
    if ([title isEqualToString:@"Second"]) {
        
        NSString *urlStr = [[NSBundle mainBundle] pathForResource:@"Hypertension_follow-up__45_year_old_female_clinic.pdf" ofType:nil];
        NSURL *url = [NSURL fileURLWithPath:urlStr];
        PDFDocument *pdfDoc = [[PDFDocument alloc] initWithURL:url];
        [pdfView setDocument:pdfDoc];
        [pdfView setHidden:NO];
        [webview setHidden:YES];

        if ([[arrayController arrangedObjects] count] != 0) 
        { 
            [arrayController removeObjectsAtArrangedObjectIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, [[arrayController arrangedObjects ] count])]]; 
        }
        
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Hypertansion.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Palpitations.png"],@"image", nil]] ;
    
    }
    if ([title isEqualToString:@"Third"]) {
        
        NSString *urlStr = [[NSBundle mainBundle] pathForResource:@"Sinusitis_33_year_old_male_clinic.pdf" ofType:nil];
        NSURL *url = [NSURL fileURLWithPath:urlStr];
        PDFDocument *pdfDoc = [[PDFDocument alloc] initWithURL:url];
        [pdfView setDocument:pdfDoc];
        [pdfView setHidden:NO];
        [webview setHidden:YES];
        
        if ([[arrayController arrangedObjects] count] != 0) 
        { 
            [arrayController removeObjectsAtArrangedObjectIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, [[arrayController arrangedObjects ] count])]]; 
        }
        
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Sinusitis.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Sore throat.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Chronic cough.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Hemoptysis.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Shortness of breath.png"],@"image", nil]];
        
    }
    if ([title isEqualToString:@"Forth"]) {
        
        NSString *urlStr = [[NSBundle mainBundle] pathForResource:@"Acute_abdomen_39_year_old_female_ER.pdf" ofType:nil];
        NSURL *url = [NSURL fileURLWithPath:urlStr];
        PDFDocument *pdfDoc = [[PDFDocument alloc] initWithURL:url];
        [pdfView setDocument:pdfDoc];
        [pdfView setHidden:NO];
        [webview setHidden:YES];
        
        if ([[arrayController arrangedObjects] count] != 0) 
        { 
            [arrayController removeObjectsAtArrangedObjectIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, [[arrayController arrangedObjects ] count])]]; 
        }
        
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Acute abdomen-pain.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Constipation.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Diarrhea in male.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Dysphagia.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Hematemesis.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Jaundice.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Epigastric pain.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Nausea and vomiting.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Melena.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Lower GI bleeding.png"],@"image", nil]];
        
    }
    if ([title isEqualToString:@"Fifth"]) {
        
        NSString *urlStr = [[NSBundle mainBundle] pathForResource:@"Burning_micturition_65_year_old_woman_hospital.pdf" ofType:nil];
        NSURL *url = [NSURL fileURLWithPath:urlStr];
        PDFDocument *pdfDoc = [[PDFDocument alloc] initWithURL:url];
        [pdfView setDocument:pdfDoc];
        [pdfView setHidden:NO];
        [webview setHidden:YES];
        
        if ([[arrayController arrangedObjects] count] != 0) 
        { 
            [arrayController removeObjectsAtArrangedObjectIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, [[arrayController arrangedObjects ] count])]]; 
        }
        
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Burning Micturition(urination).png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Dyspareunia.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Erectile dysfunction.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Difficulty in urination in elderly male.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Amenorrhoea.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"First antenatal visit.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Hematuria.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Heavy menstrual bleeding.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Hot flushes in elderly female.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Vaginal discharge.png"],@"image", nil]];
    }
    if ([title isEqualToString:@"Sixth"]) {
        
        NSString *urlStr = [[NSBundle mainBundle] pathForResource:@"Dizziness_45_year_old_man_clinic.pdf" ofType:nil];
        NSURL *url = [NSURL fileURLWithPath:urlStr];
        PDFDocument *pdfDoc = [[PDFDocument alloc] initWithURL:url];
        [pdfView setDocument:pdfDoc];
        [pdfView setHidden:NO];
        [webview setHidden:YES];
        
        if ([[arrayController arrangedObjects] count] != 0) 
        { 
            [arrayController removeObjectsAtArrangedObjectIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, [[arrayController arrangedObjects ] count])]]; 
        }
        
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Dizziness in male.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Headache – GCA.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Headache- SAH.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Headache – Meningitis.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Headache – migraine.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Frequent Falls.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Hearing loss.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Insomnia.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Loss of consciousness.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Memory Loss.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Numbness and weakness.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Acute vision loss.png"],@"image", nil]];
        
    }
    if ([title isEqualToString:@"Seventh"]) {
        
        NSString *urlStr = [[NSBundle mainBundle] pathForResource:@"Diarrhea_1_year_old_child_clinic.pdf" ofType:nil];
        NSURL *url = [NSURL fileURLWithPath:urlStr];
        PDFDocument *pdfDoc = [[PDFDocument alloc] initWithURL:url];
        [pdfView setDocument:pdfDoc];
        [pdfView setHidden:NO];
        [webview setHidden:YES];
        
        if ([[arrayController arrangedObjects] count] != 0) 
        { 
            [arrayController removeObjectsAtArrangedObjectIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, [[arrayController arrangedObjects ] count])]]; 
        }
        
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Diarrhea in child.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Epistaxis.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Vomiting in new born.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Fever in new born.png"],@"image", nil]] ;
    

    }
    if ([title isEqualToString:@"Eighth"]) {
        
        NSString *urlStr = [[NSBundle mainBundle] pathForResource:@"Ankle_pain_30_year_old_male_clinic.pdf" ofType:nil];
        NSURL *url = [NSURL fileURLWithPath:urlStr];
        PDFDocument *pdfDoc = [[PDFDocument alloc] initWithURL:url];
        [pdfView setDocument:pdfDoc];
        [pdfView setHidden:NO];
        [webview setHidden:YES];
        
        if ([[arrayController arrangedObjects] count] != 0) 
        { 
            [arrayController removeObjectsAtArrangedObjectIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, [[arrayController arrangedObjects ] count])]]; 
        }
        
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Ankle pain.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Elbow pain.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Heel pain.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Back PAin.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Knee PAin.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Joint Pain.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Shoulder pain.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Wrist pain.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Hip pain.png"],@"image", nil]] ;
    }
    if ([title isEqualToString:@"Ninth"]) {
        
        NSString *urlStr = [[NSBundle mainBundle] pathForResource:@"Diabetes_Mellitus_Follow_up_66_year_old_Man_clinic.pdf" ofType:nil];
        NSURL *url = [NSURL fileURLWithPath:urlStr];
        PDFDocument *pdfDoc = [[PDFDocument alloc] initWithURL:url];
        [pdfView setDocument:pdfDoc];
        [pdfView setHidden:NO];
        [webview setHidden:YES];
        
        if ([[arrayController arrangedObjects] count] != 0) 
        { 
            [arrayController removeObjectsAtArrangedObjectIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, [[arrayController arrangedObjects ] count])]]; 
        }
        
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Diabetes follow up.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Sickle cell disease- acute pain.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Domestic violence.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Insurance check up.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"sad mood and fatigue.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Weight gain.png"],@"image", nil]];
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Weight loss.png"],@"image", nil]] ;
        [arrayController addObject:[NSDictionary dictionaryWithObjectsAndKeys:[NSImage imageNamed:@"Pain seeking behavior.png"],@"image", nil]];
    }
    
    [arrayController setSelectionIndex:0];
    [tableView reloadData];
    if([self reachable]){
    }
    else {
        NSLog(@"Not Connected");
        NSAlert *alert = [[[NSAlert alloc] init] autorelease];
        [alert addButtonWithTitle:@"Ok"];
        [alert setMessageText:@"Internet is not Connected"];
        [alert setInformativeText:@"You have a connection failure. You have to get on a wi-fi or a network to get internet connection."];
        [alert setIcon:[NSImage imageNamed:@"WiFi1.png"]];
        [alert beginSheetModalForWindow:self.window modalDelegate:self didEndSelector:nil contextInfo:nil];
    } 
}

-(void)windowDidLoad{
    [super windowDidLoad];
    [self.window setBackgroundColor:[NSColor colorWithPatternImage:[NSImage imageNamed:@"Back.png"]]];
}

- (IBAction)switchView:(id)sender{
    [self tableViewSelected:self];
}
- (void)tableView:(NSTableView *)tableView willDisplayCell:(id)cell forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    
}
- (IBAction)tableViewSelected:(id)sender {
    NSString *url;
    NSString *urlStr;
    
    if ([self reachable]) {

    if ([title isEqualToString:@"First"]){
         NSLog(@"First selected");
        if ([self.tableView selectedRow ] == 0) {
            if (segment.selectedSegment == 0) {
                
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                            
                urlStr = [[NSBundle mainBundle] pathForResource:@"Common_tips_for_CS.pdf" ofType:nil];
                pdfText = @"Common_tips_for_CS.pdf";
                
            }
            else{
                
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url = @"http://usmletutoring.com/Apple/uploads/Commom_tips.html";
                
                }
        }
        
        if ([self.tableView selectedRow ] == 1) { 
            if (segment.selectedSegment == 0) {
                
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Standardized_patient_Check_lists.pdf" ofType:nil];
                pdfText = @"Standardized_patient_Check_lists.pdf";
                
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url = @"http://usmletutoring.com/Apple/uploads/Standardized_patient_Check_lists.html";
            }
        }
    }
    
    if ([title isEqualToString:@"Second"]){
        if ([self.tableView selectedRow ] == 0) {
            if (segment.selectedSegment == 0) {
                
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                urlStr = [[NSBundle mainBundle] pathForResource:@"Hypertension_follow-up__45_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Hypertension_follow-up__45_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url = @"http://usmletutoring.com/Apple/uploads/Hypertension_followup.html";
                
            }
        }
        if ([self.tableView selectedRow] == 1) {
            if (segment.selectedSegment == 0) {
                
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                urlStr = [[NSBundle mainBundle] pathForResource:@"Palpitations_56_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Palpitations_56_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url = @"http://usmletutoring.com/Apple/uploads/Palpitations.html";
                
            }
        }
    }
    
    if ([title isEqualToString:@"Third"]){
        if ([self.tableView selectedRow ] == 0) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                urlStr = [[NSBundle mainBundle] pathForResource:@"Sinusitis_33_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Sinusitis_33_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Sinusitis.html";
            }
        }
        if ([self.tableView selectedRow] == 1) {
            if (segment.selectedSegment == 0) {
                
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Sore_throat_20_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Sore_throat_20_year_old_male_clinic.pdf";
                
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Sore_Throat.html";
                
            }
        }
        if ([self.tableView selectedRow ] == 2) {
            if (segment.selectedSegment == 0) {
                
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                urlStr = [[NSBundle mainBundle] pathForResource:@"Chronic_cough_33_year_old_mane_clinic.pdf" ofType:nil];
                pdfText = @"Chronic_cough_33_year_old_mane_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url= @"http://usmletutoring.com/Apple/uploads/Chronic_Cough.html";
            }
        }
        if ([self.tableView selectedRow] == 3) {
            if (segment.selectedSegment == 0) {
                
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Hemoptysis_60_year_old_man_clinic.pdf" ofType:nil];
                pdfText = @"Hemoptysis_60_year_old_man_clinic.pdf";
                
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Hemoptysis.html";
            
            }
        }
        if ([self.tableView selectedRow] == 4) {
            if (segment.selectedSegment == 0) {
                
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Shortness_of_breath_56_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Shortness_of_breath_56_year_old_female_clinic.pdf";
                
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Shortness_of_breath.html";
                
            }
        }
    }
    
    if ([title isEqualToString:@"Forth"]){
        if ([self.tableView selectedRow ] == 0) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
               
                urlStr = [[NSBundle mainBundle] pathForResource:@"Acute_abdomen_39_year_old_female_ER.pdf" ofType:nil];
                pdfText = @"Acute_abdomen_39_year_old_female_ER.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url= @"http://usmletutoring.com/Apple/uploads/Acute_Abdomen.html";
                
            }
        }
        if ([self.tableView selectedRow] == 1) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                urlStr = [[NSBundle mainBundle] pathForResource:@"Constipation_73_year_old_woman_clinic.pdf" ofType:nil];
                pdfText = @"Constipation_73_year_old_woman_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Constipation.html";
            }
        }
        if ([self.tableView selectedRow ] == 2) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Diarrhea_32_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Diarrhea_32_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Diarrhea_32year.html";
                
                
            }
        }
        if ([self.tableView selectedRow] == 3) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Dysphagia_65_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Dysphagia_65_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Dysphagia.html";
                
            }
        }
        if ([self.tableView selectedRow] == 4) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Hemetemesis__46_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Hemetemesis__46_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Hemetemesis.html";
            }
        }
        if ([self.tableView selectedRow ] == 5) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Jaundice__56_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Jaundice__56_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/jaundice.html";
            }
        }
        if ([self.tableView selectedRow] == 6) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Epigastric-pain_53_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Epigastric-pain_53_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Epigastria_Pain.html";
                
            }
        }
        if ([self.tableView selectedRow ] == 7) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Nausea_vomiting_32_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Nausea_vomiting_32_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Nausea_Vomiting.html";
            }
        }
        if ([self.tableView selectedRow] == 8) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Lower_GI_bleeding_46_year_old_male_ER.pdf" ofType:nil];
                pdfText = @"Lower_GI_bleeding_46_year_old_male_ER.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Lower_GI_Bleeding.html";
            }
        }
        if ([self.tableView selectedRow] == 9) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"LGIB__45_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"LGIB__45_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/LGIB.html";
            }
        }
    }
    
    if ([title isEqualToString:@"Fifth"]){
        if ([self.tableView selectedRow ] == 0) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
               
                urlStr = [[NSBundle mainBundle] pathForResource:@"Burning_micturition_65_year_old_woman_hospital.pdf" ofType:nil];
                pdfText = @"Burning_micturition_65_year_old_woman_hospital.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Burning_micturition.html";                
            }
        }
        if ([self.tableView selectedRow] == 1) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Dyspareunia_24_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Dyspareunia_24_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Dyspareunia.html";
                
                
            }
        }
        if ([self.tableView selectedRow ] == 2) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
               
                urlStr = [[NSBundle mainBundle] pathForResource:@"Erectile_dysfunction_62_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Erectile_dysfunction_62_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Erectile_Dysfunction.html";
            }
        }
        if ([self.tableView selectedRow] == 3) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
               
                urlStr = [[NSBundle mainBundle] pathForResource:@"BPH.pdf" ofType:nil];
                pdfText = @"BPH.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url= @"http://usmletutoring.com/Apple/uploads/BPH.html";
                
            }
        }
        if ([self.tableView selectedRow] == 4) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
               
                urlStr = [[NSBundle mainBundle] pathForResource:@"Amenorrhea_17_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Amenorrhea_17_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Amenorrhea.html";
            }
        }
        if ([self.tableView selectedRow ] == 5) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"First_antenatal_visit_26_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"First_antenatal_visit_26_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/First_Antenatal_visit.html";
            }
        }
        if ([self.tableView selectedRow] == 6) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Bloody_Urine_62_year_old_male_ER.pdf" ofType:nil];
                pdfText = @"Bloody_Urine_62_year_old_male_ER.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
//                url=@"http://usmletutoring.com/Apple/uploads/Hematuria.html";
            }
        }
        if ([self.tableView selectedRow ] == 7) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Heavy_menstrual_bleeding_54_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Heavy_menstrual_bleeding_54_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Heavy_menstrual_bleeding.html";
            }
        }
        if ([self.tableView selectedRow] == 8) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
               
                urlStr = [[NSBundle mainBundle] pathForResource:@"hot_flashes.pdf" ofType:nil];
                pdfText = @"hot_flashes.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Hot_Flashes.html";
                
            }
        }
        if ([self.tableView selectedRow] == 9) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Vaginal_discharge_34_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Vaginal_discharge_34_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Vaginal_discharge.html";
                
            }
        }
    }

    if ([title isEqualToString:@"Sixth"]){
        if ([self.tableView selectedRow ] == 0) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Dizziness_45_year_old_man_clinic.pdf" ofType:nil];
                pdfText = @"Dizziness_45_year_old_man_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Dizziness.html";
                
            }
        }
        if ([self.tableView selectedRow] == 1) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Headache_GCA__77_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Headache_GCA__77_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Headache%20GCA.html";
            }
        }
        if ([self.tableView selectedRow ] == 2) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                urlStr = [[NSBundle mainBundle] pathForResource:@"Headache_SAH__32_year_old_male_ER.pdf" ofType:nil];
                pdfText = @"Headache_SAH__32_year_old_male_ER.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Headache%20SAH.html";
            }
        }
        if ([self.tableView selectedRow] == 3) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
               
                urlStr = [[NSBundle mainBundle] pathForResource:@"Headache_Meningitis__32_year_old_male_ER.pdf" ofType:nil];
                pdfText = @"Headache_Meningitis__32_year_old_male_ER.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Headache_Meningitis.html";
            }
        }
        if ([self.tableView selectedRow] == 4) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Headache_Migraine__22_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Headache_Migraine__22_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Headache_Migraine.html";
            }
        }
        if ([self.tableView selectedRow ] == 5) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Frequent_fall_72_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Frequent_fall_72_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Frequently_fall.html";
            }
        }
        if ([self.tableView selectedRow] == 6) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
               
                urlStr = [[NSBundle mainBundle] pathForResource:@"Hearing_loss__62_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Hearing_loss__62_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Hearing_Loss.html";
            }
        }
        if ([self.tableView selectedRow ] == 7) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Insomnia__72_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Insomnia__72_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Insomnia.html";
            }
        }
        if ([self.tableView selectedRow] == 8) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"LOC_54_year_old_male_ER.pdf" ofType:nil];
                pdfText = @"LOC_54_year_old_male_ER.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/LOC.html";
            }
        }
        if ([self.tableView selectedRow] == 9) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
               
                urlStr = [[NSBundle mainBundle] pathForResource:@"Memory_loss_87_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Memory_loss_87_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Memory_Loss.html";
            }
        }
        if ([self.tableView selectedRow] == 10) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Numbness_weakness_60_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Numbness_weakness_60_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Numbness_Weakness.html";
                
            }
        }
        if ([self.tableView selectedRow] == 11) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
               
                urlStr = [[NSBundle mainBundle] pathForResource:@"Sudden_vision_loss_65_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Sudden_vision_loss_65_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Sudden_vision_loss.html";
                            }
        }
    }
    
    if ([title isEqualToString:@"Seventh"]){
        if ([self.tableView selectedRow ] == 0) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Diarrhea_1_year_old_child_clinic.pdf" ofType:nil];
                pdfText = @"Diarrhea_1_year_old_child_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Diarrhea%20_1Year.html";
            }
        }
        if ([self.tableView selectedRow] == 1) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Nose-bleed_4_year_old_boy_clinic.pdf" ofType:nil];
                pdfText = @"Nose-bleed_4_year_old_boy_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Nose_bleed.html";
                            }
        }
        if ([self.tableView selectedRow ] == 2) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Vomiting_2_month_old__child_clinic.pdf" ofType:nil];
                pdfText = @"Vomiting_2_month_old__child_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Vomiting.html";
                
            }
        }
        if ([self.tableView selectedRow] == 3) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Fever_in_child_telephonic_2_year_old_child_clinic.pdf" ofType:nil];
                pdfText = @"Fever_in_child_telephonic_2_year_old_child_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Fever_in_child_telephonic.html";
            }
        }
    }
    
    if ([title isEqualToString:@"Eighth"]){
        if ([self.tableView selectedRow ] == 0) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Ankle_pain_30_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Ankle_pain_30_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Ankle_Pain.html";
                
            }
        }
        if ([self.tableView selectedRow] == 1) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
               
                urlStr = [[NSBundle mainBundle] pathForResource:@"Elbow_pain_56_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Elbow_pain_56_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Elbow_Pain.html";
                
            }
        }
        if ([self.tableView selectedRow ] == 2) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Heel_pain_32_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Heel_pain_32_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Heel_Pain.html";
            }
        }
        if ([self.tableView selectedRow] == 3) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Back_pain.pdf" ofType:nil];
                pdfText = @"Back_pain.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Back_Pain.html";
            }
        }
        if ([self.tableView selectedRow] == 4) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                urlStr = [[NSBundle mainBundle] pathForResource:@"Knee_pain__65_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Knee_pain__65_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Knee_Pain.html";
            }
        }
        if ([self.tableView selectedRow ] == 5) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
               
                urlStr = [[NSBundle mainBundle] pathForResource:@"Joint_pain__60_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Joint_pain__60_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Joint_Pain.html";
                
            }
        }
        if ([self.tableView selectedRow] == 6) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
               
                urlStr = [[NSBundle mainBundle] pathForResource:@"Shoulder_pain_46_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Shoulder_pain_46_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Shoulder_Pain.html";
            }
        }
        if ([self.tableView selectedRow ] == 7) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                urlStr = [[NSBundle mainBundle] pathForResource:@"Wrist_pain_34_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Wrist_pain_34_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Wrist_Pain.html";
                
            }
        }
        if ([self.tableView selectedRow] == 8) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Hip_pain_76_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Hip_pain_76_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Hip_Pain.html";
            }
        }
    }

    if ([title isEqualToString:@"Ninth"]){
        if ([self.tableView selectedRow ] == 0) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                urlStr = [[NSBundle mainBundle] pathForResource:@"Diabetes_Mellitus_Follow_up_66_year_old_Man_clinic.pdf" ofType:nil];
                pdfText = @"Diabetes_Mellitus_Follow_up_66_year_old_Man_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Diabetes_Mellitus_Follow_up.html";
            }
        }
        if ([self.tableView selectedRow] == 1) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Sickle_cell_disease_26_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Sickle_cell_disease_26_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Sickle_Cell_Disease.html";
                
            }
        }
        if ([self.tableView selectedRow ] == 2) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Domestic_abuse_40_year_old_Lady_clinic.pdf" ofType:nil];
                pdfText = @"Domestic_abuse_40_year_old_Lady_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Domestic_abuse.html";
                
            }
        }
        if ([self.tableView selectedRow] == 3) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Insurance_Checkup_52_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Insurance_Checkup_52_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Insurance_Checkup.html";
            }
        }
        if ([self.tableView selectedRow] == 4) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Sad_mood_and_fatigue_32_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Sad_mood_and_fatigue_32_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Sad_mood_and_fatigue.html";
            }
        }
        if ([self.tableView selectedRow ] == 5) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Weight_gain_45_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Weight_gain_45_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Weight_Gain.html";
            }
        }
        if ([self.tableView selectedRow] == 6) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Weight_loss_46_year_old_female_clinic.pdf" ofType:nil];
                pdfText = @"Weight_loss_46_year_old_female_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Weight_Loss.html";
            }
        }
        if ([self.tableView selectedRow ] == 7) {
            if (segment.selectedSegment == 0) {
                [webview setHidden:YES];
                [pdfView setHidden:NO];
                
                urlStr = [[NSBundle mainBundle] pathForResource:@"Pain_seeking_behavior_45_year_old_male_clinic.pdf" ofType:nil];
                pdfText = @"Pain_seeking_behavior_45_year_old_male_clinic.pdf";
            }
            else{
                [pdfView setHidden:YES];
                [webview setHidden:NO];
                url=@"http://usmletutoring.com/Apple/uploads/Pain_seeking_Behavior.html";
                
            }
        }
    }
    
    if ([self.tableView selectedRow] == -1) {
        url = @" ";
        urlStr = [[NSBundle mainBundle] pathForResource:pdfText ofType:nil];
        NSLog(@"Text of Pdf : %@", pdfText);
    }
        if (segment.selectedSegment == 0) {
            [webview close];
            [webview removeFromSuperview];
            NSURL *url = [NSURL fileURLWithPath:urlStr];
            PDFDocument *pdfDoc = [[PDFDocument alloc] initWithURL:url];
            [pdfView setDocument:pdfDoc];

        }
        else{
            if (!webview) {
                webview = [[WebView alloc] initWithFrame:NSMakeRect(self.window.frame.size.width - pdfView.frame.size.width, 10, pdfView.frame.size.width- 10, pdfView.frame.size.height)];
                
                
                [[webview mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]]; 
                [self.window.contentView addSubview:webview];
            }
            else{
                [webview close];
                [webview removeFromSuperview];
                
                webview = [[WebView alloc] initWithFrame:NSMakeRect(self.window.frame.size.width - pdfView.frame.size.width, 10, pdfView.frame.size.width- 10, pdfView.frame.size.height)];
                
                
                [[webview mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]]; 
                [self.window.contentView addSubview:webview];
            }
            //[webview close];
        }
    }
	else {
        NSAlert *alert = [[[NSAlert alloc] init] autorelease];
        [alert addButtonWithTitle:@"Ok"];
        [alert setMessageText:@"Internet is not Connected"];
        [alert setInformativeText:@"You have a connection failure. You have to get on a wi-fi or a network to get internet connection."];
        [alert setIcon:[NSImage imageNamed:@"WiFi1.png"]];
        [alert beginSheetModalForWindow:self.window modalDelegate:self didEndSelector:nil contextInfo:nil];

    }
}
/*
- (void)windowWillClose:(NSNotification *)notification{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:NSWindowWillCloseNotification object:[self window]];
    
    NSLog(@"CLOSED");
    
}
*/

- (void)windowWillClose:(NSNotification *)notification
{
  //  NSLog (@"Notification %@", [notification name]);
    [webview close];
    [webview removeFromSuperview];
}

- (IBAction)GoToHome:(id)sender {
   
    [mainwindow showWindow:self];
}
-(void)dealloc{
    [tableView release];
    [arrayController release];
    self.webview = nil;
    [webview release];
    [mainwindow release];
    [segment release];
    [title release];
   // [hd release];
    [caseName release];
    [super dealloc];
}
/*
- (void)tableView:(NSTableView *)aTableView setObjectValue:(id)anObject forTableColumn:(NSTableColumn *)aTableColumn row:(int)rowIndex{
 NSLog(@"Hello");
 
}*/
@end
