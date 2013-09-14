//
//  MKUtil_DateTime.m
//
//
//  Created by Mark Kwong on 2013-05-26.
//  Copyright (c) 2013 Mark Kwong. All rights reserved.
//
//  Time and Date Utils

#import "MKUtil_DateTime.h"

@implementation MKUtil_DateTime

#pragma mark - Time and Date Utils

+(NSString *) getDateTimeString:(NSDate *)now {
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
    [timeFormat setDateFormat:@"HH:mm:ss"];
    
    NSString *theDate = [dateFormat stringFromDate:now];
    NSString *theTime = [timeFormat stringFromDate:now];
    
    return [NSString stringWithFormat:@"%@ %@"
            , theDate, theTime];
}

+(NSString *) getAmountOfTimeFromTimeInterval:(NSTimeInterval)interval{
    int hours = (int)interval / 3600;             // integer division to get the hours part
    int minutes = (interval - (hours*3600)) / 60; // interval minus hours part (in seconds) divided by 60 yields minutes
    NSString *timeDiff = [NSString stringWithFormat:@"%dhr %02dmin", hours, minutes];
    return timeDiff;
}


+(NSDate *)nsdateFromDateComponents:(NSInteger)day
                              month:(NSInteger)month
                               year:(NSInteger)year{
    
    NSDateComponents *comp = [[NSDateComponents alloc] init];
    
    comp.day = day;
    comp.month = month;
    comp.year = year;
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDate *date = [cal dateFromComponents:comp];
    
    return date;
}

+(NSDate *)nsdateFromDateComponents:(NSDateComponents *)comp{
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDate *date = [cal dateFromComponents:comp];
    
    return date;
}


+(NSDateComponents *)dayMonthYearComponentFromNsdate:(NSDate *)date{
    
    NSCalendar *cal = [NSCalendar currentCalendar];
    
    NSDateComponents *comp = [cal components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit fromDate:date];

    return comp;
}



@end
