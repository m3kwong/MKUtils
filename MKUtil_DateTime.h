//
//  MKUtil_DateTime.h
//  
//
//  Created by m3kwong on 2013-05-26.
//  Copyright (c) 2013 Mark Kwong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MKUtil_DateTime : NSObject

/** Returns a string in the format yyyy-MM-dd HH:mm:ss from a NSDate object
 
 
 */
+(NSString *) getDateTimeString:(NSDate *)now;


/** Returns a string of hr:min from an NSTimeInterval
 
 */
+(NSString *) getAmountOfTimeFromTimeInterval:(NSTimeInterval)interval;



/** Returns a NSDate object from day, month and year
 
 @param day
 @param month
 @param year
 
 */
+(NSDate *) nsdateFromDateComponents:(NSInteger)day
                              month:(NSInteger)month
                               year:(NSInteger)year;


/** Extracts day, month and year from a NSDate object
 
 @param date    The date to extract components
 
 */
+(NSDateComponents *)dayMonthYearComponentFromNsdate:(NSDate *)date;
+(NSDate *)nsdateFromDateComponents:(NSDateComponents *)comp;

@end
