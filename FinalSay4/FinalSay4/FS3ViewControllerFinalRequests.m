//
//  FS3ViewControllerFinalRequests.m
//  FinalSay4
//
//  Created by VGDC-User on 11/21/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import "FS3ViewControllerFinalRequests.h"

@interface FS3ViewControllerFinalRequests ()

@end

@implementation FS3ViewControllerFinalRequests

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.DyingRequest.delegate = self;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    self.noText = false;
    if([self.DyingRequest.text length] == 0)
    {
        self.DyingRequest.text = @"Enter any specific requests here.";
        self.noText = true;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

-(void)keyboardDidShow:(NSNotification *)note
{
    if(self.noText)
    {
        self.DyingRequest.text = @"";
    }
}

- (IBAction)doneOther:(id)sender {
    [self.DyingRequest resignFirstResponder];
    self.noText = false;
    if([self.DyingRequest.text length] == 0)
    {
        self.DyingRequest.text = @"Enter any specific requests here.";
        self.noText = true;
    }
}
@end
