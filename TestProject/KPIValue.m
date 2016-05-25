//
//  KPIValue.m
//  TestProject
//
//  Created by Yosemite on 5/25/16.
//  Copyright © 2016 Christian.Dimitrov. All rights reserved.
//

#import "KPIValue.h"

@implementation KPIValue

- (instancetype)init{
    KPIValue *element = [KPIValue alloc];
    
    element.timePeriod = [TimePeriod init];
    element.amountInAggregationCurrency = [AmountInAggregationCurrency init];
    
    return element;
}

@end
