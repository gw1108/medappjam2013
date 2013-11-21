//
//  FS3ViewController.m
//  FinalSay4
//
//  Created by VGDC-User on 11/19/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import "FS3ViewController.h"
#import "FS3AppDelegate.h"

@interface FS3ViewController ()

@end

@implementation FS3ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //self.nameField.delegate = self;
    //[[self emailField]setDelegate:self];
    //[[self ageField]setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

-(void)didMoveToParentViewController:(UIViewController *)parent {
    //save all the stuff into the shit.
}

- (IBAction)register:(id)sender {
}
@end
