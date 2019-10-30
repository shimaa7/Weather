//
//  SearchForCityViewController.h
//  Weather
//
//  Created by Shimaa Hassan on 10/29/19.
//  Copyright © 2019 Shimaa Hassan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SearchForCityViewController : UIViewController

@property (strong,nonatomic) UITableView *citiesTableView;
@property (strong,nonatomic) NSArray *content;

- (void)viewDidLoad;
- (void)setupLayout;
- (void)addNewCityBtnClick:(UIButton*)sender;

@end

NS_ASSUME_NONNULL_END
