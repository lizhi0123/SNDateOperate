//
//  NSString+NSDate.h
//  Insure
//
//  Created by Apple_Admin on 13-7-12.
//  Copyright (c) 2013年 AppleDev_APP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SNDateOperate : NSObject

//dateFormate @"yyyy-MM-dd HH:mm:ss"
+(NSString *)gainStringFromDate:(NSDate *)date dateFormate:(NSString *)dateFormate;
+(NSDate *)gainDateFromString:(NSString *)str dateFormate:(NSString *)dateFormate;

+(NSUInteger)gainAgeFrom:(NSDate *)fromDate ToDate:(NSDate *)toDate;


//判断是否是同一天
+(BOOL)isSameDay:(NSDate*)date1 date2:(NSDate*)date2;

@end


