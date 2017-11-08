//
//  DetailedViewController.m
//  Weather
//
//  Created by Daniel Grosman on 2017-11-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"
#import "City.h"

@interface DetailedViewController ()

@property (nonatomic, strong) UILabel *state;
@property (nonatomic, strong) UILabel *currentTemp;
@property (nonatomic, strong) UILabel *currentTime;
@property (nonatomic, strong) UILabel *chanceOfPrecipitation;
@property (nonatomic) City *city;

@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.state = [[UILabel alloc] initWithFrame:CGRectMake(160, 130, 100, 100)];
    self.state.text = self.city.state;
//    self.state.textColor = UIColor.whiteColor;
    [self.view addSubview:self.state];
    
    self.currentTemp = [[UILabel alloc] initWithFrame:CGRectMake(160, 250, 100, 100)];
    self.currentTemp.text = self.city.currentTemp;
//    self.currentTemp.textColor = UIColor.whiteColor;
    [self.view addSubview:self.currentTemp];
    
    self.currentTime = [[UILabel alloc] initWithFrame:CGRectMake(160, 380, 100, 100)];
    self.currentTime.text = self.city.currentTime;
//    self.currentTime.textColor = UIColor.whiteColor;
    [self.view addSubview:self.currentTime];
    
    self.chanceOfPrecipitation = [[UILabel alloc] initWithFrame:CGRectMake(160, 500, 100, 100)];
    self.chanceOfPrecipitation.text = self.city.chanceOfPrecipitation;
//    self.chanceOfPrecipitation.textColor = UIColor.whiteColor;
    [self.view addSubview:self.chanceOfPrecipitation];
    
}

- (instancetype)initWithCity:(City *)city
    {
        self = [super init];
        if (self) {
            _city = city;
        }
        return self;
    }

@end
