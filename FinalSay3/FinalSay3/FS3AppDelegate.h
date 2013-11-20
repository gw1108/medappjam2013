//
//  FS3AppDelegate.h
//  FinalSay3
//
//  Created by VGDC-User on 11/19/13.
//  Copyright (c) 2013 Team7. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FS3AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
