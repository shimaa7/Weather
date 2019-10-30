//
//  WeatherModel.h
//  Weather
//
//  Created by Shimaa Hassan on 10/29/19.
//  Copyright © 2019 Shimaa Hassan. All rights reserved.
//

#ifndef WeatherModel_h
#define WeatherModel_h

struct Weather{
    NSString *city_name;
    NSString *request_data_time;
    NSString *description;
    NSString *temperature;
    NSString *humidity;
    NSString *windspeed;
    int   city_id;
};

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
