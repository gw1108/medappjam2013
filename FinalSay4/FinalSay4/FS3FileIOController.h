//
//  FS3FileIOController.h
//  FinalSay4
//
//  Created by App Jam on 11/21/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FS3FileIOController : NSObject

-(void) writeFile:(NSString*) fileName: (NSString*) content;
-(NSString*) readFile:(NSString*) fileName;

@end
