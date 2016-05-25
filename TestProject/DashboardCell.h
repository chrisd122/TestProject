//
//  DashboardCell.h
//  TestProject
//
//  Created by Yosemite on 5/25/16.
//  Copyright © 2016 Christian.Dimitrov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashboardCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lbl_title;
@property (weak, nonatomic) IBOutlet UILabel *lbl_timePeriod;
@property (weak, nonatomic) IBOutlet UILabel *lbl_KPIValue;
@property (weak, nonatomic) IBOutlet UILabel *lbl_minValue;
@property (weak, nonatomic) IBOutlet UILabel *lbl_maxValue;
@property (weak, nonatomic) IBOutlet UILabel *lbl_avgValue;

@end
