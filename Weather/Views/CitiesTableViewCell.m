//
//  TableViewCell.m
//  Weather
//
//  Created by Shimaa Hassan on 10/29/19.
//  Copyright © 2019 Shimaa Hassan. All rights reserved.
//

#import "CitiesTableViewCell.h"

static NSString * const CellIDTitle = @"CitiesCell";

@implementation CitiesTableViewCell

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
        
        // city name label
        self.cityName = [[UILabel alloc] init];
        self.cityName.textColor = [UIColor colorWithRed:121/255.0 green:127/255.0 blue:136/255.0 alpha:1/1.0];
        self.cityName.font = [UIFont fontWithName:@"AlNile-Bold" size:18];
        self.cityName.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:self.cityName];

        // historical btn
        self.historicalBtn = [[UIButton alloc] init];
        [self.historicalBtn setExclusiveTouch:YES];
        self.historicalBtn.backgroundColor = UIColor.clearColor;
        [self.historicalBtn setTitle:@"" forState:UIControlStateNormal];
        UIImage *btnImage = [UIImage imageNamed:@"arrow-point-to-right.png"];
        [self.historicalBtn setImage:btnImage forState:UIControlStateNormal];
        [self.historicalBtn.titleLabel setFont:[UIFont fontWithName:@"Verdana-Bold" size:20]];
        [self.historicalBtn setTitleColor:[UIColor colorWithRed:197/255.0 green:50/255.0 blue:73/255.0 alpha:1/1.0] forState:UIControlStateNormal];
        self.historicalBtn.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:self.historicalBtn];

        if (reuseID == CellIDTitle){

        //-------- setup constrains ----------------
        
        // city name label
        [self.cityName.leftAnchor constraintEqualToAnchor: self.contentView.leftAnchor
                                                    constant: 15].active = YES;
        [self.cityName.topAnchor constraintEqualToAnchor: self.contentView.topAnchor
                                                  constant:15].active = YES;
        [self.cityName.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor
                                                   constant:-15].active = YES;
        [self.cityName.widthAnchor constraintEqualToAnchor:self.contentView.widthAnchor
                                                  multiplier:0.9].active = YES;
        
        // historical btn
        [self.historicalBtn.rightAnchor constraintEqualToAnchor: self.contentView.rightAnchor
                                                    constant: 0].active = YES;
        [self.historicalBtn.topAnchor constraintEqualToAnchor: self.contentView.topAnchor
                                                  constant:0].active = YES;
        [self.historicalBtn.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor
                                                   constant:0].active = YES;
        [self.historicalBtn.widthAnchor constraintEqualToAnchor:self.contentView.widthAnchor
                                                  multiplier:0.1].active = YES;
        
        
    }
    }
    return self;
}

@end
