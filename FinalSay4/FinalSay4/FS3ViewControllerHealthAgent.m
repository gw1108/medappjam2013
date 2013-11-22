//
//  FS3ViewControllerHealthAgent.m
//  FinalSay4
//
//  Created by VGDC-User on 11/20/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import "FS3ViewControllerHealthAgent.h"

@interface FS3ViewControllerHealthAgent ()

@property int offset;



@end


@implementation FS3ViewControllerHealthAgent

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.offset=0;
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
