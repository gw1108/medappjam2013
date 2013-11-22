//
//  FS3UITabBarControllerMaster.h
//  FinalSay4
//
//  Created by App Jam on 11/21/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FS3UITabBarControllerMaster : UITabBarController

-(NSArray *) pollPagesForChoices;//returns an array of the choices the user has picked
//is an array of strings and booleans
-(void) setPageChoices:(NSArray*) choices;//given an array of the choices loaded from a saved directive, populates current directive

@end
