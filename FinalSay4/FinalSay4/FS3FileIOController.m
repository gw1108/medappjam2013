//
//  FS3FileIOController.m
//  FinalSay4
//
//  Created by App Jam on 11/21/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import "FS3FileIOController.h"

@implementation FS3FileIOController{

    
}

-(void) writeFile:(NSString*) fileName: (NSString*) content{
    
    NSFileHandle *filehandle = [NSFileHandle fileHandleForWritingAtPath:fileName];
    [filehandle writeData:[content dataUsingEncoding:NSUTF8StringEncoding]];
    [filehandle closeFile];
    
}
-(NSString*) readFile:(NSString*) fileName{
    int fd=open([fileName UTF8String], O_RDONLY);
    if(fd==-1){
        return nil;//file does not exist or can not be read
    }
    NSMutableData* data=[[NSMutableData alloc] initWithLength:1024];//just put 1 there to get compiler to shut up
    
    
    if(data){
        void* buffer=[data mutableBytes];
        NSUInteger bufferSize=[data length];
        NSUInteger fileSize= read(fd, buffer, bufferSize);
        
        if(fileSize<1024){
            [data setLength:fileSize];
        }
    }
    
    close(fd);
    
    return [NSString stringWithUTF8String:[data bytes]];
}

@end
