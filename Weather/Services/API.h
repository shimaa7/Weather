//
//  API.h
//  Weather
//
//  Created by Shimaa Hassan on 10/29/19.
//  Copyright © 2019 Shimaa Hassan. All rights reserved.
//

#ifndef API_h
#define API_h
#import "WeatherModel.h"

@interface Network : NSObject

typedef void(^getRequestBlock)(struct Weather weather);

-(struct Weather) getCityWeatherRequest: (NSString*) city_name completed:(getRequestBlock)completed;


@end


#endif /* API_h */
