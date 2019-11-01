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

typedef void(^getRequestBlock)(Boolean state);

-(void) getCityWeatherRequest: (NSString*) city_name: (Weather*)currentCityWeather: completed:(getRequestBlock)completed;

@end


#endif /* API_h */
