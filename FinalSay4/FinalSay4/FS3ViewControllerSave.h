//
//  FS3ViewControllerSave.h
//  FinalSay4
//
//  Created by App Jam on 11/22/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FS3Globals.h"
#import "FS3FileIOController.h"

@interface FS3ViewControllerSave : UIViewController

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, weak) IBOutlet UIButton *saveButton;

-(IBAction)saveState:(id)sender;


@end
