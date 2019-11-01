//
//  WeatherModel.h
//  Weather
//
//  Created by Shimaa Hassan on 10/29/19.
//  Copyright © 2019 Shimaa Hassan. All rights reserved.
//

#ifndef WeatherModel_h
#define WeatherModel_h
#import <CoreData/CoreData.h>

@class Weather;
@interface Weather: NSManagedObject

@property (nonatomic, readwrite) NSString *city_name;
@property (nonatomic, readwrite) NSString *request_data_time;
@property (nonatomic, readwrite) NSString *description;
@property (nonatomic, readwrite) NSNumber *temperature;
@property (nonatomic, readwrite) NSNumber *humidity;
@property (nonatomic, readwrite) NSNumber *windspeed;
@property (nonatomic, readwrite) NSNumber *city_id;

-(void) saveWeatherObject;
@end

#endif /* WeatherModel_h */

//{
//    "coord": {
//        "lon": -122.08,
//        "lat": 37.39
//    },
//    "weather": [
//                {
//                    "id": 800,
//                    "main": "Clear",
//                    "description": "clear sky", //
//                    "icon": "01d"
//                }
//                ],
//    "base": "stations",
//    "main": {
//        "temp": 296.71, //
//        "pressure": 1013,
//        "humidity": 53, //
//        "temp_min": 294.82,
//        "temp_max": 298.71
//    },
//    "visibility": 16093,
//    "wind": {
//        "speed": 1.5, //
//        "deg": 350
//    },
//    "clouds": {
//        "all": 1
//    },
//    "dt": 1560350645,
//    "sys": {
//        "type": 1,
//        "id": 5122,
//        "message": 0.0139,
//        "country": "US",
//        "sunrise": 1560343627,
//        "sunset": 1560396563
//    },
//    "timezone": -25200,
//    "id": 420006353,
//    "name": "Mountain View",
//    "cod": 200
//}
