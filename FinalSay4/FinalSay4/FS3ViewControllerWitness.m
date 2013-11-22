//
//  FS3ViewControllerWitness.m
//  FinalSay4
//
//  Created by App Jam on 11/21/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import "FS3ViewControllerWitness.h"

@interface FS3ViewControllerWitness ()
@property int offset;

@end


@implementation FS3ViewControllerWitness


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.offset=27;
        if([stateVector objectAtIndex:self.offset]){
            self.offset=30;
        }
        //[stateVector replaceObjectAtIndex: self.offset :YES];
        [stateVector replaceObjectAtIndex:self.offset withObject:[NSObject alloc]];
        
        //self.noText = false;
        if([self.StatementOfWitness.text length] == 0)
        {
            self.StatementOfWitness.text = @"STATEMENT OF WITNESSES: I declare under penalty of perjury under the laws of California (1) that the individual who signed or acknowledged this advance health care directive is personally known to me, or that the individual’s identity was proven to me by convincing evidence (2) that the individual signed or acknowledged this advance directive in my presence (3) that the individual appears to be of sound mind and under no duress, fraud, or undue influence, (4) that I am not a person appointed as agent by this advance directive, and (5) that I am not the individual’s health care provider, an employee of the individual’s health care provider, the operator of a community care facility, an employee of an operator of a community care facility, the operator of a residential care facility for the elderly nor an employee of an operator of a residential care facility for the elderly.";
            //self.noText = true;
        }

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //self.Name.delegate = self;
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc] initWithTarget:self action: @selector(dismissKeyboard)];
    
    [tap setCancelsTouchesInView:NO];
    [self.view addGestureRecognizer:tap];
    
    //[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    
}
-(void)dismissKeyboard{
    [self.Address resignFirstResponder];
    [self.Address endEditing:YES];
    [self.Name resignFirstResponder];
    [self.Name endEditing:YES];
    [self.StatementOfWitness resignFirstResponder];
    [self.StatementOfWitness endEditing:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
