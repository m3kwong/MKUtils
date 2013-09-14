//
//  MKUtils.m
//
//
//  Created by Mark Kwong on 2013-04-07.
//  Copyright (c) 2013 Mark Kwong. All rights reserved.
//

#import "MKUtils.h"

@implementation MKUtils

#pragma mark - File System Utils

+ (NSString *)getSavedDataPathFeedData{
    NSArray *path =  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *pathString = [path objectAtIndex:0];
    NSString *pathWithFile = [NSString stringWithFormat:@"%@/%@",pathString,@"FeedDataFilev2"];
    return pathWithFile;
}


+ (NSString *)getOldSavedDataPathFeedData{
    NSArray *path =  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *pathString = [path objectAtIndex:0];
    NSString *pathWithFile = [NSString stringWithFormat:@"%@/%@",pathString,@"FeedDataFile"];
    return pathWithFile;
}

+ (NSString *)getOldBkSavedDataPathFeedData{
    NSArray *path =  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *pathString = [path objectAtIndex:0];
    NSString *pathWithFile = [NSString stringWithFormat:@"%@/%@",pathString,@"FeedDataFileBackup"];
    return pathWithFile;
}




#pragma mark - NSNotifications

+(void) registerForKeyboardWillShow {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillShow:)
                                                 name:UIKeyboardWillShowNotification
                                               object:self];
}

+(void) removeKeyboardWillShowNotificaiton {
    NSNotificationCenter *defaultCenter = [NSNotificationCenter defaultCenter];
    [defaultCenter removeObserver:self name:UIKeyboardWillShowNotification object:nil];
}


#pragma mark - Time and Date Utils

+(NSString *) getDateTimeString:(NSDate *)now {
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
    [timeFormat setDateFormat:@"HH:mm"];
    
    NSDateComponents *comp = [[NSCalendar currentCalendar] components:NSHourCalendarUnit | NSMinuteCalendarUnit fromDate:now];

    NSString *theTime = [timeFormat stringFromDate:now];
    NSString *ampm;
    if(comp.hour >= 12){
        ampm = @"PM";
    }else{
        ampm = @"AM";
    }
    
    return [NSString stringWithFormat:@"%@%@"
            , theTime, ampm ];
}

#pragma mark - Image Utils

+ (UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize {
    //UIGraphicsBeginImageContext(newSize);
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 0.0);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end
