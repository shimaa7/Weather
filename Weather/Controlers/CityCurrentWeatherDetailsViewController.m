//
//  CityCurrentWeatherDetailsViewController.m
//  Weather
//
//  Created by Shimaa Hassan on 10/29/19.
//  Copyright © 2019 Shimaa Hassan. All rights reserved.
//

#import "CityCurrentWeatherDetailsViewController.h"

@implementation CityCurrentWeatherDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupLayout];
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
    UILabel *mainLabel = [[UILabel alloc] init];
    mainLabel.textColor = [UIColor colorWithRed:121/255.0 green:127/255.0 blue:136/255.0 alpha:1/1.0];
    mainLabel.text = @"CITIES";
    mainLabel.textAlignment = NSTextAlignmentCenter;
    mainLabel.font = [UIFont fontWithName:@"AlNile-Bold" size:20];
    mainLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview: mainLabel];
    
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
    [mainLabel.topAnchor constraintEqualToAnchor: self.view.topAnchor
                                        constant:-viewHeight * 0.005].active = YES;
    [mainLabel.centerXAnchor constraintEqualToAnchor: self.view.centerXAnchor
                                            constant:0.0].active = YES;
    [mainLabel.heightAnchor constraintEqualToAnchor:self.view.heightAnchor
                                         multiplier:0.2].active = YES;
    
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
    [addBtn.centerYAnchor constraintEqualToAnchor: mainLabel.centerYAnchor
                                         constant:-2].active = YES;
    [addBtn.heightAnchor constraintEqualToAnchor:self.view.heightAnchor
                                      multiplier:0.3].active = YES;
    
}
-(void) addNewCityBtnClick:(UIButton*)sender{
    NSLog(@"Add new city!");
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
