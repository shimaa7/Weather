//
//  WeatherModel.m
//  Weather
//
//  Created by Shimaa Hassan on 10/29/19.
//  Copyright © 2019 Shimaa Hassan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeatherModel.h"
#import <CoreData/CoreData.h>

@implementation Weather: NSManagedObject

@synthesize city_name;
@synthesize request_data_time;
@synthesize description;
@synthesize temperature;
@synthesize humidity;
@synthesize windspeed;
@synthesize city_id;

-(id)init {
    self = [super init];
    return self;
}

-(void) saveWeatherObject{
    
    Weather *weatherObject = ([NSEntityDescription insertNewObjectForEntityForName:@"Weather" inManagedObjectContext:[self managedObjectContext]]);
    
    NSError *error = nil;
    if ([[weatherObject managedObjectContext] save:&error] == NO) {
        NSAssert(NO, @"Error saving context: %@\n%@", [error localizedDescription], [error userInfo]);
    }
}

@end

