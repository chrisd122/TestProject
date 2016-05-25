//
//  KPIData.m
//  TestProject
//
//  Created by Yosemite on 5/25/16.
//  Copyright © 2016 Christian.Dimitrov. All rights reserved.
//

#import "KPIData.h"

@implementation KPIData

- (instancetype)init{
    
    KPIData *element = [KPIData alloc];
    
    element.code = @"";
    element.label = @"";
    element.kpiValue = [KPIValue init];
    element.surroundingPeriodData = [SurroundingPeriodData init];
    
    return element;
}

@end
