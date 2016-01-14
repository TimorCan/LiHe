//
//  CalendarTool.m
//  JXCalendar
//
//  Created by juxi-ios on 15/12/24.
//  Copyright © 2015年 周灿. All rights reserved.
//

#import "CalendarTool.h"

@implementation CalendarTool


//获取date的下个月今天日期
-(NSDate *)nextMonthDate
{
    NSDateComponents * components = [[NSDateComponents alloc]init];
    components.month = 1;
    NSDate * nextMonthDate =[[NSCalendar currentCalendar]dateByAddingComponents:components toDate:[NSDate date] options:NSCalendarMatchStrictly];
    return nextMonthDate;
    //today 2015-12-24      nextMonthDate:2016-01-24 01:34:52 +0000

}


//获取date的上个月今天日期
-(NSDate *)previousMonthDate
{
    NSDateComponents * components = [[NSDateComponents alloc]init];
    components.month = -1;
    NSDate * previousMonthDate =[[NSCalendar currentCalendar]dateByAddingComponents:components toDate:[NSDate date] options:NSCalendarMatchStrictly];
    return previousMonthDate;
    //today 2015-12-24      previousMonthDate:2015-11-24 01:34:52 +0000
}

@end
