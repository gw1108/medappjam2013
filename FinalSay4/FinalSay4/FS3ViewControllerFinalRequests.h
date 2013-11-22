//
//  FS3ViewControllerFinalRequests.h
//  FinalSay4
//
//  Created by VGDC-User on 11/21/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FS3ViewControllerFinalRequests : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextView *DyingRequest;
- (IBAction)doneOther:(id)sender;

@property (nonatomic) bool noText;
@end
