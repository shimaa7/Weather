//
//  API.m
//  Weather
//
//  Created by Shimaa Hassan on 10/29/19.
//  Copyright © 2019 Shimaa Hassan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>
#import "UIImageView+AFNetworking.h"
#import "API.h"
#import "WeatherModel.h"

@implementation Network

static NSString* const CityWeatherURLString = @"https://api.openweathermap.org/data/2.5/weather?APPID=f5cb0b965ea1564c50c6f1b74534d823&q=";

- (void) getCityWeatherRequest: (NSString*) city_name: (Weather*)currentCityWeather: completed:(getRequestBlock)completed
{
    NSString *BaseURL = [CityWeatherURLString stringByAppendingString:city_name];
    //--------------- API Request ---------------------------------------

    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    NSURL *URL = [NSURL URLWithString:BaseURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            
            //--------------- Fill Data ----------------------------------
//            NSLog(@"%@", responseObject[@"weather"][0][@"description"]);
            currentCityWeather.city_id = (NSNumber*) responseObject[@"id"];
            currentCityWeather.city_name = (NSString*) responseObject[@"name"];
            currentCityWeather.description = (NSString*) responseObject[@"weather"][0][@"main"];
            currentCityWeather.humidity = (NSNumber*)responseObject[@"main"][@"humidity"];
            currentCityWeather.temperature = (NSNumber*)responseObject[@"main"][@"temp"];
            currentCityWeather.windspeed = (NSNumber*)responseObject[@"wind"][@"speed"];
            NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
            [dateFormatter setDateFormat:@"dd.MM.yyyy - HH:mm"];
            currentCityWeather.request_data_time = [dateFormatter stringFromDate:[NSDate date]];
            NSLog(@"%@", currentCityWeather.city_name);
            
            completed(true);
        }
    }];
    [dataTask resume];

}

@end

//{"coord": { "lon": 139,"lat": 35},
//    "weather": [
//                {
//                    "id": 800,
//                    "main": "Clear",
//                    "description": "clear sky",
//                    "icon": "01n"
//                }
//                ],
//    "base": "stations",
//    "main": {
//        "temp": 289.92,
//        "pressure": 1009,
//        "humidity": 92,
//        "temp_min": 288.71,
//        "temp_max": 290.93
//    },
//    "wind": {
//        "speed": 0.47,
//        "deg": 107.538
//    },
//    "clouds": {
//        "all": 2
//    },
//    "dt": 1560350192,
//    "sys": {
//        "type": 3,
//        "id": 2019346,
//        "message": 0.0065,
//        "country": "JP",
//        "sunrise": 1560281377,
//        "sunset": 1560333478
//    },
//    "timezone": 32400,
//    "id": 1851632,
//    "name": "Shuzenji",
//    "cod": 200
//}
