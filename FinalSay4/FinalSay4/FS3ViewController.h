//
//  FS3ViewController.h
//  FinalSay4
//
//  Created by VGDC-User on 11/19/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FS3ViewController :UITableViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *ageField;
- (IBAction)register:(id)sender;

@end
