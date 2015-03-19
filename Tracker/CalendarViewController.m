//
//  CalendarViewController.m
//  Tracker
//
//  Created by Steve Spencer on 3/19/15.
//  Copyright (c) 2015 Steve Spencer. All rights reserved.
//

#import "CalendarViewController.h"
#import "CalendarView.h"


@interface CalendarViewController () <CalendarDelegate>

@property (nonatomic, strong) CalendarView * calendarView;

@end


@implementation CalendarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    CGFloat width = self.view.bounds.size.width;

    _calendarView= [[CalendarView alloc]initWithFrame:CGRectMake(0, 80, width, width)];
    _calendarView.delegate    = self;
    _calendarView.calendarDate = [NSDate date];
    _calendarView.monthAndDayTextColor        = RGBCOLOR(0, 174, 255);
    _calendarView.dayBgColorWithData          = RGBCOLOR(21, 124, 229);
    _calendarView.dayBgColorWithoutData       = RGBCOLOR(208, 208, 214);
    _calendarView.dayBgColorSelected          = RGBCOLOR(94, 94, 94);
    _calendarView.dayTxtColorWithoutData      = RGBCOLOR(57, 69, 84);
    _calendarView.dayTxtColorWithData         = [UIColor whiteColor];
    _calendarView.dayTxtColorSelected         = [UIColor whiteColor];
    _calendarView.borderColor                 = RGBCOLOR(159, 162, 172);
    _calendarView.borderWidth                 = 1;
    _calendarView.allowsChangeMonthByDayTap   = YES;
    _calendarView.allowsChangeMonthByButtons  = YES;
    _calendarView.keepSelDayWhenMonthChange   = YES;

    [self.view addSubview:_calendarView];
    _calendarView.center = CGPointMake(self.view.center.x, _calendarView.center.y);
}

#pragma mark - CalendarDelegate
-(void)dayChangedToDate:(NSDate *)selectedDate {
    NSLog(@"Date changed to %@", selectedDate);
}

/*
-(void)setHeightNeeded:(NSInteger)heightNeeded;
-(void)setMonthLabel:(NSString *)monthLabel;
-(void)setEnabledForPrevMonthButton:(BOOL)enablePrev nextMonthButton:(BOOL)enableNext;
*/

@end
