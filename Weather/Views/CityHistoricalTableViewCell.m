//
//  CityHistoricalTableViewCell.m
//  Weather
//
//  Created by Shimaa Hassan on 10/29/19.
//  Copyright © 2019 Shimaa Hassan. All rights reserved.
//

#import "CityHistoricalTableViewCell.h"

static NSString * const CellIDTitle = @"CityCell";

@implementation CityHistoricalTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        reuseID = reuseIdentifier;
        
        //-------- setup views ----------------
        
        // date and time label
        self.DateTime = [[UILabel alloc] init];
        self.DateTime.textColor = [UIColor colorWithRed:121/255.0 green:127/255.0 blue:136/255.0 alpha:1/1.0];
        self.DateTime.font = [UIFont fontWithName:@"AlNile-Bold" size:19];
        self.DateTime.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:self.DateTime];
        
        // weather historical label
        self.weatherState = [[UILabel alloc] init];
        self.weatherState.textColor =  [UIColor colorWithRed:197/255.0 green:50/255.0 blue:73/255.0 alpha:1/1.0];
        self.weatherState.font = [UIFont fontWithName:@"AlNile" size:20];
        self.weatherState.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:self.weatherState];

        
        if (reuseID == CellIDTitle){
            
            //-------- setup constrains ----------------
            
            // date and time label
            [self.DateTime.leftAnchor constraintEqualToAnchor: self.contentView.leftAnchor
                                                     constant: 15].active = YES;
            [self.DateTime.topAnchor constraintEqualToAnchor: self.contentView.topAnchor
                                                    constant:5].active = YES;
            [self.DateTime.heightAnchor constraintEqualToAnchor:self.contentView.heightAnchor
                                                       multiplier:0.4].active = YES;
            [self.DateTime.rightAnchor constraintEqualToAnchor:self.contentView.rightAnchor
                                                    constant:0].active = YES;
            
            // weather historical label
            [self.weatherState.leftAnchor constraintEqualToAnchor: self.contentView.leftAnchor
                                                           constant: 15].active = YES;
            [self.weatherState.topAnchor constraintEqualToAnchor: self.DateTime.bottomAnchor
                                                         constant:-15].active = YES;
            [self.weatherState.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor
                                                            constant:0].active = YES;
            [self.weatherState.rightAnchor constraintEqualToAnchor:self.contentView.rightAnchor
                                                         constant:0.0].active = YES;
            
            
        }
    }
    return self;
}

@end
