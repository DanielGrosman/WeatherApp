//
//  CityViewController.m
//  Weather
//
//  Created by Daniel Grosman on 2017-11-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailedViewController.h"
#import "City.h"

@interface CityViewController ()

@property (nonatomic, strong) UILabel *weatherState;
@property (nonatomic, strong) UIImageView *weatherImage;
@property (nonatomic, strong) UIButton *detailsButton;
@property (nonatomic) City *city;

@end

@implementation CityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.weatherState = [[UILabel alloc] initWithFrame:CGRectMake(170, 130, 100, 100)];
    self.weatherState.text = self.city.state;
    self.weatherState.textColor = UIColor.whiteColor;
    [self.view addSubview:self.weatherState];
    
    self.weatherImage = [[UIImageView alloc] initWithFrame:CGRectMake(120, 250, 150, 150)];
    self.weatherImage.image = [UIImage imageNamed:self.city.stateSymbol];
    [self.view addSubview:self.weatherImage];
    
    self.detailsButton = [[UIButton alloc] initWithFrame:CGRectMake(145, 400, 100, 100)];
    [self.detailsButton setTitle:@"Details" forState:UIControlStateNormal];
    [self.detailsButton setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    [self.detailsButton addTarget:self action:@selector(didTapButton) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:self.detailsButton];
}

- (instancetype)initWithCity:(City *)city
{
    self = [super init];
    if (self) {
        _city = city;
    }
    return self;
}

- (void) showWeatherDetails {
    DetailedViewController *detailedViewController = [[DetailedViewController alloc] initWithCity:self.city];
    [self.navigationController pushViewController:detailedViewController animated:YES];
}

- (void)didTapButton {
    [self showWeatherDetails];
}

@end
