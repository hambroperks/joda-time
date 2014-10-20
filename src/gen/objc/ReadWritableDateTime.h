//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/ReadWritableDateTime.java
//

#ifndef _OrgJodaTimeReadWritableDateTime_H_
#define _OrgJodaTimeReadWritableDateTime_H_

#import "JreEmulation.h"
#include "ReadWritableInstant.h"
#include "ReadableDateTime.h"

/**
 @brief Defines an instant in time that can be queried and modified using datetime fields.
 <p> The implementation of this interface will be mutable. It may provide more advanced methods than those in the interface. <p> Methods in your application should be defined using <code>ReadWritableDateTime</code> as a parameter if the method wants to manipulate and change a date in simple ways.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@protocol OrgJodaTimeReadWritableDateTime < OrgJodaTimeReadableDateTime, OrgJodaTimeReadWritableInstant, NSObject, JavaObject >
/**
 @brief Set the year to the specified value.
 @param year the year
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setYearWithInt:(int)year;

/**
 @brief Add a number of years to the date.
 @param years the years to add
 @throws IllegalArgumentException if the value is invalid
 */
- (void)addYearsWithInt:(int)years;

/**
 @brief Set the weekyear to the specified value.
 @param weekyear the weekyear
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setWeekyearWithInt:(int)weekyear;

/**
 @brief Add a number of weekyears to the date.
 @param weekyears the weekyears to add
 @throws IllegalArgumentException if the value is invalid
 */
- (void)addWeekyearsWithInt:(int)weekyears;

/**
 @brief Set the month of the year to the specified value.
 @param monthOfYear the month of the year
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setMonthOfYearWithInt:(int)monthOfYear;

/**
 @brief Add a number of months to the date.
 @param months the months to add
 @throws IllegalArgumentException if the value is invalid
 */
- (void)addMonthsWithInt:(int)months;

/**
 @brief Set the week of weekyear to the specified value.
 @param weekOfWeekyear the week of the weekyear
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setWeekOfWeekyearWithInt:(int)weekOfWeekyear;

/**
 @brief Add a number of weeks to the date.
 @param weeks the weeks to add
 @throws IllegalArgumentException if the value is invalid
 */
- (void)addWeeksWithInt:(int)weeks;

/**
 @brief Set the day of year to the specified value.
 @param dayOfYear the day of the year
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setDayOfYearWithInt:(int)dayOfYear;

/**
 @brief Set the day of the month to the specified value.
 @param dayOfMonth the day of the month
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setDayOfMonthWithInt:(int)dayOfMonth;

/**
 @brief Set the day of week to the specified value.
 @param dayOfWeek the day of the week
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setDayOfWeekWithInt:(int)dayOfWeek;

/**
 @brief Add a number of days to the date.
 @param days the days to add
 @throws IllegalArgumentException if the value is invalid
 */
- (void)addDaysWithInt:(int)days;

/**
 @brief Set the hour of the day to the specified value.
 @param hourOfDay the hour of day
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setHourOfDayWithInt:(int)hourOfDay;

/**
 @brief Add a number of hours to the date.
 @param hours the hours to add
 @throws IllegalArgumentException if the value is invalid
 */
- (void)addHoursWithInt:(int)hours;

/**
 @brief Set the minute of the day to the specified value.
 @param minuteOfDay the minute of day
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setMinuteOfDayWithInt:(int)minuteOfDay;

/**
 @brief Set the minute of the hour to the specified value.
 @param minuteOfHour the minute of hour
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setMinuteOfHourWithInt:(int)minuteOfHour;

/**
 @brief Add a number of minutes to the date.
 @param minutes the minutes to add
 @throws IllegalArgumentException if the value is invalid
 */
- (void)addMinutesWithInt:(int)minutes;

/**
 @brief Set the second of the day to the specified value.
 @param secondOfDay the second of day
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setSecondOfDayWithInt:(int)secondOfDay;

/**
 @brief Set the second of the minute to the specified value.
 @param secondOfMinute the second of minute
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setSecondOfMinuteWithInt:(int)secondOfMinute;

/**
 @brief Add a number of seconds to the date.
 @param seconds the seconds to add
 @throws IllegalArgumentException if the value is invalid
 */
- (void)addSecondsWithInt:(int)seconds;

/**
 @brief Set the millis of the day to the specified value.
 @param millisOfDay the millis of day
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setMillisOfDayWithInt:(int)millisOfDay;

/**
 @brief Set the millis of the second to the specified value.
 @param millisOfSecond the millis of second
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setMillisOfSecondWithInt:(int)millisOfSecond;

/**
 @brief Add a number of milliseconds to the date.
 The implementation of this method differs from the #add(long) method in that a DateTimeField performs the addition.
 @param millis the milliseconds to add
 @throws IllegalArgumentException if the value is invalid
 */
- (void)addMillisWithInt:(int)millis;

/**
 @brief Set the date from fields.
 The time part of this object will be unaffected.
 @param year the year
 @param monthOfYear the month of the year
 @param dayOfMonth the day of the month
 @throws IllegalArgumentException if any value is invalid
 */
- (void)setDateWithInt:(int)year
               withInt:(int)monthOfYear
               withInt:(int)dayOfMonth;

/**
 @brief Set the time from fields.
 The date part of this object will be unaffected.
 @param hour the hour
 @param minuteOfHour the minute of the hour
 @param secondOfMinute the second of the minute
 @param millisOfSecond the millisecond of the second
 @throws IllegalArgumentException if any value is invalid
 */
- (void)setTimeWithInt:(int)hour
               withInt:(int)minuteOfHour
               withInt:(int)secondOfMinute
               withInt:(int)millisOfSecond;

/**
 @brief Set the date and time from fields.
 @param year the year
 @param monthOfYear the month of the year
 @param dayOfMonth the day of the month
 @param hourOfDay the hour of the day
 @param minuteOfHour the minute of the hour
 @param secondOfMinute the second of the minute
 @param millisOfSecond the millisecond of the second
 @throws IllegalArgumentException if any value is invalid
 */
- (void)setDateTimeWithInt:(int)year
                   withInt:(int)monthOfYear
                   withInt:(int)dayOfMonth
                   withInt:(int)hourOfDay
                   withInt:(int)minuteOfHour
                   withInt:(int)secondOfMinute
                   withInt:(int)millisOfSecond;

@end

__attribute__((always_inline)) inline void OrgJodaTimeReadWritableDateTime_init() {}

#endif // _OrgJodaTimeReadWritableDateTime_H_
