//
//  FS3ViewController.h
//  FinalSay4
//
//  Created by VGDC-User on 11/19/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FS3ViewController :UITableViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *Name;
@property (strong, nonatomic) IBOutlet UITextField *RelationshipToYou;
@property (strong, nonatomic) IBOutlet UITextField *Address;
@property (strong, nonatomic) IBOutlet UITextField *PhoneNumber;
@property (strong, nonatomic) IBOutlet UITextField *Email;

@end
