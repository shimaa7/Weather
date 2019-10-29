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

@implementation Network

static NSString * const BaseURLString = @"https://openweathermap.org/data/2.5/London?q=Cairo&APPID=f5cb0b965ea1564c50c6f1b74534d823";

- (void) getServerRequest
{
    NSURL *URL = [NSURL URLWithString: BaseURLString];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:URL.absoluteString parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];

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
