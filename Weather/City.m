//
//  City.m
//  Weather
//
//  Created by Daniel Grosman on 2017-11-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

- (instancetype)initWithChanceOfPrecipitation:(NSString *)chanceOfPrecipitation
                                  currentTemp:(NSString *)currentTemp currentTime: (NSString *) currentTime state: (NSString *) state stateSymbol: (NSString *) stateSymbol
{
    self = [super init];
    if (self) {
        _chanceOfPrecipitation = chanceOfPrecipitation;
        _currentTemp = currentTemp;
        _currentTime = currentTime;
        _state = state;
        _stateSymbol = stateSymbol;
    }
    return self;
    
}


@end
