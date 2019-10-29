//
//  CityHistoricalViewController.h
//  Weather
//
//  Created by Shimaa Hassan on 10/29/19.
//  Copyright © 2019 Shimaa Hassan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CityHistoricalViewController : UIViewController

@property (strong,nonatomic) UITableView *citiesTableView;
@property (strong,nonatomic) NSArray *content;
@property (strong,nonatomic) NSArray *contentDateTime;

- (void)viewDidLoad;
- (void)setupLayout;
- (void)addNewCityBtnClick:(UIButton*)sender;

@end

NS_ASSUME_NONNULL_END
