//
//  City.h
//  Weather
//
//  Created by Daniel Grosman on 2017-11-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic, strong) NSString *chanceOfPrecipitation;
@property (nonatomic, strong) NSString *currentTemp;
@property (nonatomic, strong) NSString *currentTime;
@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) NSString *stateSymbol;


- (instancetype)initWithChanceOfPrecipitation:(NSString *)chanceOfPrecipitation
                                  currentTemp:(NSString *)currentTemp currentTime: (NSString *) currentTime state: (NSString *) state stateSymbol: (NSString *) stateSymbol;
@end
