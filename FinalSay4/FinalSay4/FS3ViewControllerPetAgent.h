//
//  FS3ViewControllerPetAgent.h
//  FinalSay4
//
//  Created by VGDC-User on 11/20/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FS3Globals.h"

@interface FS3ViewControllerPetAgent : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *Name;

@property (strong, nonatomic) IBOutlet UITextView *OtherAction;

@property (nonatomic) CGPoint originalCenter;
@property (nonatomic) BOOL noText;

- (IBAction)doneOtherAction:(id)sender;

@end