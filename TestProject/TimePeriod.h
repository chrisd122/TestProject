//
//  TimePeriod.h
//  TestProject
//
//  Created by Yosemite on 5/25/16.
//  Copyright © 2016 Christian.Dimitrov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimePeriod : NSObject

@property (strong, nonatomic) NSString *periodEnd;
@property (strong, nonatomic) NSString *sliceUnit;
@property (nonatomic) NSInteger sliceUnitCount;
@property (nonatomic) NSInteger sliceCount;

@end
