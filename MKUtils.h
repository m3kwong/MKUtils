//
//  MKUtils.h
//
//
//  Created by m3kwong on 2013-04-07.
//  Copyright (c) 2013 Mark Kwong. All rights reserved.
//

#import <Foundation/Foundation.h>


//System Version check: Credit to StackOverflow
    //http://stackoverflow.com/questions/3339722/check-iphone-ios-version
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)


@interface MKUtils : NSObject


+ (NSString *)getSavedDataPathFeedData;
+ (NSString *)getOldSavedDataPathFeedData;
+ (NSString *)getOldBkSavedDataPathFeedData;
+(void) registerForKeyboardWillShow;
+(void) removeKeyboardWillShowNotificaiton;
+(NSString *) getDateTimeString:(NSDate *)now;
+ (UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize;

@end
