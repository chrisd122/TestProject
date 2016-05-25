//
//  SurroundingPeriodData.m
//  TestProject
//
//  Created by Yosemite on 5/25/16.
//  Copyright © 2016 Christian.Dimitrov. All rights reserved.
//

#import "SurroundingPeriodData.h"

@implementation SurroundingPeriodData

- (instancetype)init{
    
    SurroundingPeriodData *element = [SurroundingPeriodData alloc];
    
    element.timePeriod = [TimePeriod init];
    element.minValue = [KPIValue init];
    element.maxValue = [KPIValue init];
    element.avgValue = [KPIValue init];

    return element;
}

@end
