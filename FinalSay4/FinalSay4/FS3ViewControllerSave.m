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
    
    NSString* content=@"Name: \r\nDate\r\n\r\n";
    content=[content stringByAppendingString:@"Part 1\r\n1.1 DESIGNATION OF AGENT:I designate the following individual as my agent to make health care decisions for me"];
    content=[content stringByAppendingString:@"Name of the individual I choose as agent: "];
    //content=[content stringByAppendingString:[(NSString*)[stateVector objectAtIndex: 0] ]];
    content=[content stringByAppendingString:@"\r\nRelationship: "];
    //content=[content stringByAppendingString:[(NSString*)[stateVector objectAtIndex: 1] ]];
    content=[content stringByAppendingString:@"\r\nAddress: "];
    //content=[content stringByAppendingString:[(NSString*)[stateVector objectAtIndex: 2] ]];
    content=[content stringByAppendingString:@"\r\nPhone number: "];
    //content=[content stringByAppendingString:[(NSString*)[stateVector objectAtIndex: 3] ]];
    content=[content stringByAppendingString:@"\r\n\r\n1.2 AGENT'S AUTHORITY: My agent is authorized to make all health care decisions for me, including decisions to provide, withhold, or withdraw artificial nutrition and hydration and all other forms of health care to keep me alive, except as I state here: "];
    
    content=[content stringByAppendingString:@"\r\n\r\n: WHEN AGENT'S AUTHORITY BECOMES EFFECTIVE: My agent's authority becomes effective when my primary physician determines that I am unable to make my own health care decisions unless I mark the following box.If I mark this box ( ), my agent's authority to make health care decisions for me takes effect immediately."];
    content=[content stringByAppendingString:@"\r\n\r\n(1.4.) AGENT'S OBLIGATION: My agent shall make health care decisions for me in accordance with this power of attorney for health care, any instructions I give in Part 2 of this form, and my other wishes to the extent known to my agent. To the extent my wishes are unknown, my agent shall make health care decisions for me in accordance with what my agent determines to be in my best interest. In determining my best interest, my agent shall consider my personal values to the extent known to my agent."];
    content=[content stringByAppendingString:@"\r\n\r\n(1.5) AGENT'S POSTDEATH AUTHORITY: My agent is authorized to make anatomical gifts, authorize an autopsy, and direct disposition of my remains, except as I state here or in Part 3 of this form:"];
    //content=[content stringByAppendingString:@""];
    content=[content stringByAppendingString:@"\r\n\r\n(1.6) NOMINATION OF CONSERVATOR: If a conservator of my person needs to be appointed for me by a court, I nominate the agent designated in this form."];
    content=[content stringByAppendingString:@"\r\n\r\nPart 2\r\n Instructions for Health Care\r\n"];
    content=[content stringByAppendingString:@"2.1 END OF LIFE DECISIONS\r\nI direct that my health care providers and others involved in my care provide, withhold, or withdraw treatment in accordance with the choice I have marked below:"];
   
    
    if(YES){//do acheck here against index 8 and 10
        //if 8
        content=[content stringByAppendingString:@"\r\nI do not want my life to be prolonged if (1) I have an incurable and irreversible condition that will result in my death within a relatively short time, (2) I become unconscious and, to a reasonable degree of medical certainty, I will not regain consciousness, or (3) the likely risks and burdens of treatment would outweigh the expected benefits"];
        int count=4;
        if(NO){//check index 15
            content=[content stringByAppendingString:@", or ("];
            content =[content stringByAppendingString: [[NSString alloc] initWithFormat:@"%d", count]];
            content=[content stringByAppendingString:@") I will be unable to live without constant and excruciating pain"];
            count++;
            
        }
        if(NO){//check index 16
            content=[content stringByAppendingString:@", or ("];
            content =[content stringByAppendingString: [[NSString alloc] initWithFormat:@"%d", count]];
            content=[content stringByAppendingString:@") I will be unable to communicate with other people"];
            count++;
        }
        content=[content stringByAppendingString:@"."];
    }else{
        //if 10
        content=[content stringByAppendingString:@"\r\nI want my life to be prolonged as long as possible within the limits of generally accepted health care standards"];
    }
    if(NO){
        
    }
    
    
    content=[content stringByAppendingString:@"\r\n\r\n Part 5 Signature\r\n"];
    content=[content stringByAppendingString:@"(5.1) EFFECT OF A COPY: A copy of ths form has the same effect as the original."];
    content=[content stringByAppendingString:@"\r\n(5.2) SIGNATURE: X"];
    content=[content stringByAppendingString:@"\r\nDate: "];
    
    content=[content stringByAppendingString:@"\r\n(5.3) STATEMENT OF WITNESSES: "];
    content=[content stringByAppendingString:@"STATEMENT OF WITNESSES: I declare under penalty of perjury under the laws of California (1) that the individual who signed or acknowledged this advance health care directive is personally known to me, or that the individual’s identity was proven to me by convincing evidence (2) that the individual signed or acknowledged this advance directive in my presence (3) that the individual appears to be of sound mind and under no duress, fraud, or undue influence, (4) that I am not a person appointed as agent by this advance directive, and (5) that I am not the individual’s health care provider, an employee of the individual’s health care provider, the operator of a community care facility, an employee of an operator of a community care facility, the operator of a residential care facility for the elderly nor an employee of an operator of a residential care facility for the elderly."];
    content=[content stringByAppendingString:@"\r\n\r\nFIRST WITNESS\r\n"];
    content=[content stringByAppendingString:@"Name: "];
    content=[content stringByAppendingString:@"\r\nAddress: "];
    content=[content stringByAppendingString:@"\r\nSignature of Witness: "];
    content=[content stringByAppendingString:@"\r\nDate: "];
    
    content=[content stringByAppendingString:@"\r\n\r\nSECOND WITNESS\r\n"];
    content=[content stringByAppendingString:@"Name: "];
    content=[content stringByAppendingString:@"\r\nAddress: "];
    content=[content stringByAppendingString:@"\r\nSignature of Witness: "];
    content=[content stringByAppendingString:@"\r\nDate: "];
    
    content=[content stringByAppendingString:@"\r\n\r\n(5.4) ADDITIONAL STATEMENT OF WITNESS: At least one of the above witnesses must also sign the following declaration: I further declare under penalty of perjury under the laws of California that I am not related to the individual executing this advance health care directive by blood, marriage, or adoption, and to the best of my knowledge, I am not entitled to any part of the individual's estate upon his or her death under a will now existing or by operation of law.\r\n"];
    content=[content stringByAppendingString:@"\r\nSignature of Witness: "];
    content=[content stringByAppendingString:@"\r\nSignature of Witness: "];
    
    
    
    
    return content;//TODO
}

-(IBAction)saveState:(id)sender{
    //window.backgroundColor=[UIColor greenColor];
    //NSLog(@"button pressed %@ tag= %ld", [sender currentTitle], (long)[sender tag]);
    NSString* fileName=@"advanceDirective1.txt";
    NSString* content=self.parseStateVector;
    NSLog(content);
   // FS3FileIOController* io=[FS3FileIOController alloc];
    [FS3FileIOController writeFile:fileName:content];
    
}


@end
