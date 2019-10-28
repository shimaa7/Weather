//
//  AppDelegate.h
//  Weather
//
//  Created by Shimaa Hassan on 10/28/19.
//  Copyright © 2019 Shimaa Hassan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

