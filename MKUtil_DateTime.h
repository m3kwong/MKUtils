//
//  MKUtil_DateTime.h
//  
//
//  Created by m3kwong on 2013-05-26.
//  Copyright (c) 2013 Mark Kwong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MKUtil_DateTime : NSObject

+(NSString *) getDateTimeString:(NSDate *)now;
+(NSString *) getAmountOfTimeFromTimeInterval:(NSTimeInterval)interval;


@end
