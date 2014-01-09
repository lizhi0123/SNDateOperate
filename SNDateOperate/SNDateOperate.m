//
//  NSString+NSDate.m
//  Insure
//
//  Created by Apple_Admin on 13-7-12.
//  Copyright (c) 2013年 AppleDev_APP. All rights reserved.
//

#import "SNDateOperate.h"

@implementation SNDateOperate

+(NSString *)gainStringFromDate:(NSDate *)date dateFormate:(NSString *)dateFormate{
    
    if (!date) {
        return  nil;
    }
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //[dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    [dateFormatter setDateFormat:dateFormate];
    NSString *strDate = [dateFormatter stringFromDate:date];
    
    
    
    return strDate;
}


+(NSDate *)gainDateFromString:(NSString *)str dateFormate:(NSString *)dateFormate{
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //[dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    [dateFormatter setDateFormat:dateFormate];
    NSDate *date = [dateFormatter dateFromString:str];
    return  date;
}

+(NSUInteger)gainAgeFrom:(NSDate *)fromDate ToDate:(NSDate *)toDate{
    //[NSDate date]
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    unsigned int unitFlags = NSYearCalendarUnit;
    NSDateComponents *comps = [gregorian components:unitFlags fromDate:fromDate  toDate:toDate  options:0];
    NSInteger year = [comps year];
    return year;
}


//判断是否是同一天
+(BOOL)isSameDay:(NSDate*)date1 date2:(NSDate*)date2

{
    
    NSCalendar* calendar = [NSCalendar currentCalendar];
    
    
    
    unsigned unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit;
    
    NSDateComponents* comp1 = [calendar components:unitFlags fromDate:date1];
    
    NSDateComponents* comp2 = [calendar components:unitFlags fromDate:date2];
    
    
    
    return [comp1 day]   == [comp2 day] &&
    
    [comp1 month] == [comp2 month] &&
    
    [comp1 year]  == [comp2 year];
    
}

@end
