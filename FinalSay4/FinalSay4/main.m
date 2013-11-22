//
//  main.m
//  FinalSay4
//
//  Created by VGDC-User on 11/19/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "FS3AppDelegate.h"

NSArray* stateVector;

int main(int argc, char * argv[])
{
    @autoreleasepool {
        
        stateVector=[NSMutableArray arrayWithObjects:nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([FS3AppDelegate class]));
    }
}
