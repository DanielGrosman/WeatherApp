//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"
#import "DetailedViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    City *Vancouver = [[City alloc] initWithChanceOfPrecipitation:@"40%" currentTemp:@"11 Degrees" currentTime:@"3:30 PM" state:@"Rainy" stateSymbol:@"rain"];
    City *Barcelona = [[City alloc] initWithChanceOfPrecipitation:@"20%" currentTemp:@"22 Degrees" currentTime:@"12:30 AM" state:@"Cloudy" stateSymbol:@"cloudy"];
    City *Berlin = [[City alloc] initWithChanceOfPrecipitation:@"30%" currentTemp:@"18 Degrees" currentTime:@"1:30 AM" state:@"Clear" stateSymbol:@"clear-day"];
    City *Jerusalem = [[City alloc] initWithChanceOfPrecipitation:@"0%" currentTemp:@"28 Degrees" currentTime:@"10:00 AM" state:@"Sunny" stateSymbol:@"Sunny"];
    City *Shanghai = [[City alloc] initWithChanceOfPrecipitation:@"10%" currentTemp:@"33 Degrees" currentTime:@"12:00 PM" state:@"Snow" stateSymbol:@"snow"];
    
    CityViewController *vancouverVC = [[CityViewController alloc] initWithCity:Vancouver];
    vancouverVC.title  = @"Vancouver";
    CityViewController *barcelonaVC = [[CityViewController alloc] initWithCity:Barcelona];
    barcelonaVC.title  = @"Barcelona";
    CityViewController *berlinVC = [[CityViewController alloc] initWithCity:Berlin];
    berlinVC.title  = @"Berlin";
    CityViewController *jerusalemVC = [[CityViewController alloc] initWithCity:Jerusalem];
    jerusalemVC.title  = @"Jerusalem";
    CityViewController *shanghaiVC = [[CityViewController alloc] initWithCity:Shanghai];
    shanghaiVC.title  = @"Shanghai";
    
    UINavigationController *vancouverNC = [[UINavigationController alloc] initWithRootViewController:vancouverVC];
    UINavigationController *barcelonaNC = [[UINavigationController alloc] initWithRootViewController:barcelonaVC];
    UINavigationController *berlinNC = [[UINavigationController alloc] initWithRootViewController:berlinVC];
    UINavigationController *jerusalemNC = [[UINavigationController alloc] initWithRootViewController:jerusalemVC];
    UINavigationController *shanghaiNC = [[UINavigationController alloc] initWithRootViewController:shanghaiVC];
    
    UITabBarController *tabController = [[UITabBarController alloc] init];
    self.window.rootViewController = tabController;
    
    NSArray *navControllers = @[vancouverNC,barcelonaNC,berlinNC,jerusalemNC,shanghaiNC];
    tabController.viewControllers = navControllers;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
