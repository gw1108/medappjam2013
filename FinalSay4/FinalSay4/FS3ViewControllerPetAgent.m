//
//  FS3ViewControllerPetAgent.m
//  FinalSay4
//
//  Created by VGDC-User on 11/20/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import "FS3ViewControllerPetAgent.h"

@interface FS3ViewControllerPetAgent ()

@end

@implementation FS3ViewControllerPetAgent

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
    
    self.Name.delegate = self;
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

@end