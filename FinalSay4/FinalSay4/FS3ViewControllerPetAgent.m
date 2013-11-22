//
//  FS3ViewControllerPetAgent.m
//  FinalSay4
//
//  Created by VGDC-User on 11/20/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import "FS3ViewControllerPetAgent.h"

@interface FS3ViewControllerPetAgent ()
@property int offset;
@end

@implementation FS3ViewControllerPetAgent

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.offset=25;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.Name.delegate = self;
    self.originalCenter = self.view.center;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    self.noText = false;
    if([self.OtherAction.text length] == 0)
    {
        self.OtherAction.text = @"If you would like to specify another action or give specific instructions enter them here.";
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
    self.view.center = CGPointMake(self.view.center.x, (self.view.center.y
                                   - 140));//140 is a magic number.
    if(self.noText)
    {
        self.OtherAction.text = @"";
    }
}

- (IBAction)doneOtherAction:(id)sender {
    [self.OtherAction resignFirstResponder];
    self.view.center = self.originalCenter;
    self.noText = false;
    if([self.OtherAction.text length] == 0)
    {
        self.OtherAction.text = @"If you would like to specify another action or give specific instructions enter them here.";
        self.noText = true;
    }
}
@end