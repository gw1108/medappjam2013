//
//  FS3ViewControllerSave.m
//  FinalSay4
//
//  Created by App Jam on 11/22/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import "FS3ViewControllerSave.h"

@interface FS3ViewControllerSave ()

@end

@implementation FS3ViewControllerSave

@synthesize window;
@synthesize saveButton;

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString*) parseStateVector{
    return nil;//TODO
}

-(IBAction)saveState:(id)sender{
    //window.backgroundColor=[UIColor greenColor];
    NSLog(@"button pressed %@ tag= %ld", [sender currentTitle], (long)[sender tag]);
    NSString* fileName=@"advanceDirective1.txt";
    NSString* content=self.parseStateVector;
   // FS3FileIOController* io=[FS3FileIOController alloc];
    [FS3FileIOController writeFile:fileName:content];
    
}


@end
