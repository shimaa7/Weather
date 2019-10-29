//
//  ViewController.h
//  Weather
//
//  Created by Shimaa Hassan on 10/28/19.
//  Copyright © 2019 Shimaa Hassan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CitiesViewController : UIViewController

@property (strong,nonatomic) UITableView *citiesTableView;
@property (strong,nonatomic) NSArray *content;

- (void)viewDidLoad;
- (void)setupLayout;
- (void)addNewCityBtnClick:(UIButton*)sender;

@end

