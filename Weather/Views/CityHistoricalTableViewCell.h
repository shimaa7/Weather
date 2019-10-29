//
//  CityHistoricalTableViewCell.h
//  Weather
//
//  Created by Shimaa Hassan on 10/29/19.
//  Copyright © 2019 Shimaa Hassan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CityHistoricalTableViewCell : UITableViewCell{
    NSString *reuseID;
}

@property (nonatomic, strong) UILabel *DateTime;
@property (nonatomic, strong) UILabel *weatherState;

@end

NS_ASSUME_NONNULL_END
