//
//  TableViewCell.h
//  Weather
//
//  Created by Shimaa Hassan on 10/29/19.
//  Copyright © 2019 Shimaa Hassan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CitiesTableViewCell : UITableViewCell{
    NSString *reuseID;
}

@property (nonatomic, strong) UILabel *cityName;
@property (nonatomic, strong) UIButton *historicalBtn;

@end

NS_ASSUME_NONNULL_END
