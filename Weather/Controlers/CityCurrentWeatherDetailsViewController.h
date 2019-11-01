//
//  CityCurrentWeatherDetailsViewController.h
//  Weather
//
//  Created by Shimaa Hassan on 10/29/19.
//  Copyright © 2019 Shimaa Hassan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface CityCurrentWeatherDetailsViewController : UIViewController

@property (strong,nonatomic) NSString *city_name;
@property (strong,nonatomic) UILabel *descriptionVal;
@property (strong,nonatomic) UILabel *temperatureVal;
@property (strong,nonatomic) UILabel *humidityVal;
@property (strong,nonatomic) UILabel *windspeedVal;
@property (strong,nonatomic) UILabel *mainLabel;
@property (strong,nonatomic) Weather *weather;

@end

NS_ASSUME_NONNULL_END
