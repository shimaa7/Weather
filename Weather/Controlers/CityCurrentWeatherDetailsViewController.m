//
//  CityCurrentWeatherDetailsViewController.m
//  Weather
//
//  Created by Shimaa Hassan on 10/29/19.
//  Copyright © 2019 Shimaa Hassan. All rights reserved.
//

#import "CityCurrentWeatherDetailsViewController.h"
#import "API.h"
#import "WeatherModel.h"

@implementation CityCurrentWeatherDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupLayout];
    Network *connection = [[Network alloc] init];
    [connection getCityWeatherRequest: _city_name completed:^(struct Weather weather) {
        NSLog(@"%@ %@", weather.city_name, weather.description);
        [self loadData: weather];
    }];
    
}
-(void)loadData: (struct Weather) weather{
//    _descriptionVal.text = weather.description;
//    _humidityVal.text = weather.humidity;
//    _windspeedVal.text = weather.windspeed;
//    _temperatureVal.text = weather.temperature;
//    _mainLabel.text = weather.city_name;
}
-(void)setupLayout{
    
    //-------- setup views ----------------
    
    // main view color
    self.view.backgroundColor = [UIColor colorWithRed:37/255.0 green:37/255.0 blue:38/255.0 alpha:1/1.0];
    
    // bottom Image View
    UIImageView *bottomImageView = [[UIImageView alloc]init];
    bottomImageView.backgroundColor = [UIColor colorWithRed:37/255.0 green:37/255.0 blue:38/255.0 alpha:1/1.0];
    bottomImageView.image = [UIImage imageNamed: @"Background.png"];
    [bottomImageView setContentMode:UIViewContentModeScaleAspectFit];
    bottomImageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview: bottomImageView];
    
    // main label
    _mainLabel = [[UILabel alloc] init];
    _mainLabel.textColor = [UIColor colorWithRed:121/255.0 green:127/255.0 blue:136/255.0 alpha:1/1.0];
    _mainLabel.text = @"London UK";
    _mainLabel.textAlignment = NSTextAlignmentCenter;
    _mainLabel.font = [UIFont fontWithName:@"AlNile-Bold" size:20];
    _mainLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview: _mainLabel];
    
    // bottom label
    UILabel *bottomLabel = [[UILabel alloc] init];
    bottomLabel.textColor = [UIColor colorWithRed:121/255.0 green:127/255.0 blue:136/255.0 alpha:1/1.0];
    bottomLabel.text = @"Weather information for London received on\n03.10.2019 - 11:28";
    bottomLabel.textAlignment = NSTextAlignmentCenter;
    bottomLabel.font = [UIFont fontWithName:@"Verdana" size:13];
    bottomLabel.numberOfLines = 2;
    bottomLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview: bottomLabel];
    
    // add city btn image view
    UIImageView *addBtnImageView = [[UIImageView alloc] init];
    addBtnImageView.backgroundColor = UIColor.clearColor;
    addBtnImageView.image = [UIImage imageNamed: @"Button_modal.png"];
    [addBtnImageView setContentMode:UIViewContentModeScaleAspectFit];
    addBtnImageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview: addBtnImageView];
    
    // add city btn
    UIButton *addBtn = [[UIButton alloc] init];
    [addBtn setExclusiveTouch:YES];
    addBtn.backgroundColor = UIColor.clearColor;
    [addBtn setTitle:@"x" forState:UIControlStateNormal];
    [addBtn.titleLabel setFont:[UIFont fontWithName:@"Verdana" size:33]];
    [addBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    addBtn.translatesAutoresizingMaskIntoConstraints = NO;
    [addBtn addTarget:self action:@selector(addNewCityBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: addBtn];
    
    // cennter view
    UIView *centerView = [[UIView alloc] init];
    centerView.layer.cornerRadius = 25;
    centerView.backgroundColor = [UIColor colorWithRed:46/255.0 green:46/255.0 blue:46/255.0 alpha:1/1.0];
    centerView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:centerView];
    
    // weather image
    UIImageView *weatherImageView = [[UIImageView alloc] init];
    weatherImageView.image = [UIImage imageNamed:@"weatherImage.png"];
    weatherImageView.translatesAutoresizingMaskIntoConstraints = NO;
    [centerView addSubview:weatherImageView];
    
    // Description
    UILabel *Description = [[UILabel alloc] init];
    Description.textColor = [UIColor colorWithRed:121/255.0 green:127/255.0 blue:136/255.0 alpha:1/1.0];
    Description.text = @"Description";
    Description.textAlignment = NSTextAlignmentCenter;
    Description.font = [UIFont fontWithName:@"AlNile-Bold" size:18];
    Description.translatesAutoresizingMaskIntoConstraints = NO;
    [centerView addSubview: Description];
    
    // temperature
    UILabel *temperature = [[UILabel alloc] init];
    temperature.textColor = [UIColor colorWithRed:121/255.0 green:127/255.0 blue:136/255.0 alpha:1/1.0];
    temperature.text = @"Temperature";
    temperature.textAlignment = NSTextAlignmentCenter;
    temperature.font = [UIFont fontWithName:@"AlNile-Bold" size:18];
    temperature.translatesAutoresizingMaskIntoConstraints = NO;
    [centerView addSubview: temperature];
    
    // humidity
    UILabel *humidity = [[UILabel alloc] init];
    humidity.textColor = [UIColor colorWithRed:121/255.0 green:127/255.0 blue:136/255.0 alpha:1/1.0];
    humidity.text = @"Humidity";
    humidity.textAlignment = NSTextAlignmentCenter;
    humidity.font = [UIFont fontWithName:@"AlNile-Bold" size:18];
    humidity.translatesAutoresizingMaskIntoConstraints = NO;
    [centerView addSubview: humidity];
    
    // Windspeed
    UILabel *Windspeed = [[UILabel alloc] init];
    Windspeed.textColor = [UIColor colorWithRed:121/255.0 green:127/255.0 blue:136/255.0 alpha:1/1.0];
    Windspeed.text = @"Windspeed";
    Windspeed.textAlignment = NSTextAlignmentCenter;
    Windspeed.font = [UIFont fontWithName:@"AlNile-Bold" size:18];
    Windspeed.translatesAutoresizingMaskIntoConstraints = NO;
    [centerView addSubview: Windspeed];
    
    // Description
    _descriptionVal = [[UILabel alloc] init];
    _descriptionVal.textColor =  [UIColor colorWithRed:197/255.0 green:50/255.0 blue:73/255.0 alpha:1/1.0];
    _descriptionVal.text = @"Cloudy";
    _descriptionVal.textAlignment = NSTextAlignmentCenter;
    _descriptionVal.font = [UIFont fontWithName:@"AlNile-Bold" size:28];
    _descriptionVal.translatesAutoresizingMaskIntoConstraints = NO;
    [centerView addSubview: _descriptionVal];
    
    // temperature
    _temperatureVal = [[UILabel alloc] init];
    _temperatureVal.textColor =  [UIColor colorWithRed:197/255.0 green:50/255.0 blue:73/255.0 alpha:1/1.0];
    _temperatureVal.text = @"20° C";
    _temperatureVal.textAlignment = NSTextAlignmentCenter;
    _temperatureVal.font = [UIFont fontWithName:@"AlNile-Bold" size:28];
    _temperatureVal.translatesAutoresizingMaskIntoConstraints = NO;
    [centerView addSubview: _temperatureVal];
    
    // humidity
    _humidityVal = [[UILabel alloc] init];
    _humidityVal.textColor =  [UIColor colorWithRed:197/255.0 green:50/255.0 blue:73/255.0 alpha:1/1.0];
    _humidityVal.text = @"45%";
    _humidityVal.textAlignment = NSTextAlignmentCenter;
    _humidityVal.font = [UIFont fontWithName:@"AlNile-Bold" size:28];
    _humidityVal.translatesAutoresizingMaskIntoConstraints = NO;
    [centerView addSubview: _humidityVal];
    
    // Windspeed
    _windspeedVal = [[UILabel alloc] init];
    _windspeedVal.textColor =  [UIColor colorWithRed:197/255.0 green:50/255.0 blue:73/255.0 alpha:1/1.0];
    _windspeedVal.text = @"20 km/h";
    _windspeedVal.textAlignment = NSTextAlignmentCenter;
    _windspeedVal.font = [UIFont fontWithName:@"AlNile-Bold" size:28];
    _windspeedVal.translatesAutoresizingMaskIntoConstraints = NO;
    [centerView addSubview: _windspeedVal];
    
    //-------- setup constrains ----------------
    
    float viewHeight = self.view.frame.size.height;
    float viewWidth = self.view.frame.size.width;
    
    // bottom Image View
    [bottomImageView.bottomAnchor constraintEqualToAnchor: self.view.bottomAnchor
                                                 constant:(viewHeight * 0.035)].active = YES;
    [bottomImageView.rightAnchor constraintEqualToAnchor: self.view.rightAnchor
                                                constant:0.0].active = YES;
    [bottomImageView.leftAnchor constraintEqualToAnchor: self.view.leftAnchor
                                               constant:0.0].active = YES;
    [bottomImageView.heightAnchor constraintEqualToAnchor:self.view.heightAnchor
                                               multiplier:0.4].active = YES;
    
    // main label
    [_mainLabel.topAnchor constraintEqualToAnchor: self.view.topAnchor
                                        constant:-viewHeight * 0.005].active = YES;
    [_mainLabel.centerXAnchor constraintEqualToAnchor: self.view.centerXAnchor
                                            constant:0.0].active = YES;
    [_mainLabel.heightAnchor constraintEqualToAnchor:self.view.heightAnchor
                                         multiplier:0.2].active = YES;
    
    // bottom label
    [bottomLabel.bottomAnchor constraintEqualToAnchor: self.view.bottomAnchor
                                        constant:-viewHeight * 0.005].active = YES;
    [bottomLabel.centerXAnchor constraintEqualToAnchor: self.view.centerXAnchor
                                            constant:0.0].active = YES;
    [bottomLabel.heightAnchor constraintEqualToAnchor:self.view.heightAnchor
                                         multiplier:0.15].active = YES;
    
    // add city Btn image view
    [addBtnImageView.leftAnchor constraintEqualToAnchor: self.view.leftAnchor
                                                constant: -viewWidth * 0.04].active = YES;
    [addBtnImageView.topAnchor constraintEqualToAnchor: self.view.topAnchor
                                              constant:viewHeight * 0.03].active = YES;
    [addBtnImageView.heightAnchor constraintEqualToAnchor:self.view.heightAnchor
                                               multiplier:0.2].active = YES;
    [addBtnImageView.widthAnchor constraintEqualToAnchor:self.view.widthAnchor
                                              multiplier:0.4].active = YES;
    
    // add city btn
    [addBtn.leftAnchor constraintEqualToAnchor: self.view.leftAnchor
                                       constant: viewWidth * 0.07].active = YES;
    [addBtn.centerYAnchor constraintEqualToAnchor: _mainLabel.centerYAnchor
                                         constant:-2].active = YES;
    [addBtn.heightAnchor constraintEqualToAnchor:self.view.heightAnchor
                                      multiplier:0.3].active = YES;
    
    // center view
    [centerView.centerXAnchor constraintEqualToAnchor: self.view.centerXAnchor
                                      constant:0].active = YES;
    [centerView.topAnchor constraintEqualToAnchor: self.view.topAnchor
                                         constant:viewHeight * 0.2].active = YES;
    [centerView.heightAnchor constraintEqualToAnchor:self.view.heightAnchor
                                      multiplier:0.5].active = YES;
    [centerView.widthAnchor constraintEqualToAnchor:self.view.widthAnchor
                                          multiplier:0.8].active = YES;
    
    // weather image view
    [weatherImageView.centerXAnchor constraintEqualToAnchor: centerView.centerXAnchor
                                             constant:0].active = YES;
    [weatherImageView.topAnchor constraintEqualToAnchor: centerView.topAnchor
                                         constant:viewHeight * 0.07].active = YES;
    [weatherImageView.heightAnchor constraintEqualToAnchor:centerView.heightAnchor
                                          multiplier:0.3].active = YES;
    [weatherImageView.widthAnchor constraintEqualToAnchor:centerView.widthAnchor
                                         multiplier:0.6].active = YES;
    
    // Description label
    [Description.leftAnchor constraintEqualToAnchor: centerView.leftAnchor
                                                   constant:viewHeight * 0.04].active = YES;
    [Description.topAnchor constraintEqualToAnchor: weatherImageView.bottomAnchor
                                               constant:viewHeight * 0.04].active = YES;
    [Description.heightAnchor constraintEqualToAnchor:centerView.heightAnchor
                                                multiplier:0.1].active = YES;
    [Description.widthAnchor constraintEqualToAnchor:centerView.widthAnchor
                                               multiplier:0.3].active = YES;
    
    // temperature label
    [temperature.leftAnchor constraintEqualToAnchor: Description.leftAnchor
                                           constant:-viewHeight * 0.008].active = YES;
    [temperature.topAnchor constraintEqualToAnchor: Description.bottomAnchor
                                          constant:0].active = YES;
    [temperature.heightAnchor constraintEqualToAnchor:centerView.heightAnchor
                                           multiplier:0.1].active = YES;
    [temperature.widthAnchor constraintEqualToAnchor:centerView.widthAnchor
                                          multiplier:0.35].active = YES;
    
    // humidity label
    [humidity.leftAnchor constraintEqualToAnchor: temperature.leftAnchor
                                           constant:-viewHeight * 0.015].active = YES;
    [humidity.topAnchor constraintEqualToAnchor: temperature.bottomAnchor
                                          constant:0].active = YES;
    [humidity.heightAnchor constraintEqualToAnchor:centerView.heightAnchor
                                           multiplier:0.1].active = YES;
    [humidity.widthAnchor constraintEqualToAnchor:centerView.widthAnchor
                                          multiplier:0.35].active = YES;
    
    // humidity label
    [Windspeed.leftAnchor constraintEqualToAnchor: temperature.leftAnchor
                                        constant:-viewHeight * 0.008].active = YES;
    [Windspeed.topAnchor constraintEqualToAnchor: humidity.bottomAnchor
                                       constant:0].active = YES;
    [Windspeed.heightAnchor constraintEqualToAnchor:centerView.heightAnchor
                                        multiplier:0.1].active = YES;
    [Windspeed.widthAnchor constraintEqualToAnchor:centerView.widthAnchor
                                       multiplier:0.35].active = YES;
    
    // Description label
    [_descriptionVal.rightAnchor constraintEqualToAnchor: centerView.rightAnchor
                                           constant:-viewHeight * 0.04].active = YES;
    [_descriptionVal.topAnchor constraintEqualToAnchor: weatherImageView.bottomAnchor
                                          constant:viewHeight * 0.04].active = YES;
    [_descriptionVal.heightAnchor constraintEqualToAnchor:centerView.heightAnchor
                                           multiplier:0.1].active = YES;
    [_descriptionVal.widthAnchor constraintEqualToAnchor:centerView.widthAnchor
                                          multiplier:0.3].active = YES;
    
    // temperature label
    [_temperatureVal.rightAnchor constraintEqualToAnchor: _descriptionVal.rightAnchor
                                           constant:viewHeight * 0.027].active = YES;
    [_temperatureVal.topAnchor constraintEqualToAnchor: _descriptionVal.bottomAnchor
                                          constant:0].active = YES;
    [_temperatureVal.heightAnchor constraintEqualToAnchor:centerView.heightAnchor
                                           multiplier:0.1].active = YES;
    [_temperatureVal.widthAnchor constraintEqualToAnchor:centerView.widthAnchor
                                          multiplier:0.35].active = YES;
    
    // humidity label
    [_humidityVal.rightAnchor constraintEqualToAnchor: _descriptionVal.rightAnchor
                                        constant:viewHeight * 0.035].active = YES;
    [_humidityVal.topAnchor constraintEqualToAnchor: _temperatureVal.bottomAnchor
                                       constant:0].active = YES;
    [_humidityVal.heightAnchor constraintEqualToAnchor:centerView.heightAnchor
                                        multiplier:0.1].active = YES;
    [_humidityVal.widthAnchor constraintEqualToAnchor:centerView.widthAnchor
                                       multiplier:0.35].active = YES;
    
    // humidity label
    [_windspeedVal.rightAnchor constraintEqualToAnchor: _descriptionVal.rightAnchor
                                         constant:viewHeight * 0.008].active = YES;
    [_windspeedVal.topAnchor constraintEqualToAnchor: _humidityVal.bottomAnchor
                                        constant:0].active = YES;
    [_windspeedVal.heightAnchor constraintEqualToAnchor:centerView.heightAnchor
                                         multiplier:0.1].active = YES;
    [_windspeedVal.widthAnchor constraintEqualToAnchor:centerView.widthAnchor
                                        multiplier:0.35].active = YES;
    
}
-(void) addNewCityBtnClick:(UIButton*)sender{
    NSLog(@"Add new city!");
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
