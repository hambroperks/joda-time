//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/Hours.java
//

#ifndef _OrgJodaTimeHours_H_
#define _OrgJodaTimeHours_H_

@class OrgJodaTimeDays;
@class OrgJodaTimeDuration;
@class OrgJodaTimeDurationFieldType;
@class OrgJodaTimeFormatPeriodFormatter;
@class OrgJodaTimeMinutes;
@class OrgJodaTimePeriodType;
@class OrgJodaTimeSeconds;
@class OrgJodaTimeWeeks;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadableInterval;
@protocol OrgJodaTimeReadablePartial;
@protocol OrgJodaTimeReadablePeriod;

#import "JreEmulation.h"
#include "BaseSingleFieldPeriod.h"

#define OrgJodaTimeHours_serialVersionUID 87525275727380864LL

/**
 @brief An immutable time period representing a number of hours.
 <p> <code>Hours</code> is an immutable period that can only store hours. It does not store years, months or minutes for example. As such it is a type-safe way of representing a number of hours in an application. <p> The number of hours is set in the constructor, and may be queried using <code>getHours()</code>. Basic mathematical operations are provided - <code>plus()</code>, <code>minus()</code>, <code>multipliedBy()</code> and <code>dividedBy()</code>. <p> <code>Hours</code> is thread-safe and immutable.
 @author Stephen Colebourne
 @since 1.4
 */
@interface OrgJodaTimeHours : OrgJodaTimeBaseBaseSingleFieldPeriod {
}

/**
 @brief Obtains an instance of <code>Hours</code> that may be cached.
 <code>Hours</code> is immutable, so instances can be cached and shared. This factory method provides access to shared instances.
 @param hours the number of hours to obtain an instance for
 @return the instance of Hours
 */
+ (OrgJodaTimeHours *)hoursWithInt:(int)hours;

/**
 @brief Creates a <code>Hours</code> representing the number of whole hours between the two specified datetimes.
 @param start the start instant, must not be null
 @param end the end instant, must not be null
 @return the period in hours
 @throws IllegalArgumentException if the instants are null or invalid
 */
+ (OrgJodaTimeHours *)hoursBetweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                                  withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

/**
 @brief Creates a <code>Hours</code> representing the number of whole hours between the two specified partial datetimes.
 <p> The two partials must contain the same fields, for example you can specify two <code>LocalTime</code> objects.
 @param start the start partial date, must not be null
 @param end the end partial date, must not be null
 @return the period in hours
 @throws IllegalArgumentException if the partials are null or invalid
 */
+ (OrgJodaTimeHours *)hoursBetweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                                  withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end;

/**
 @brief Creates a <code>Hours</code> representing the number of whole hours in the specified interval.
 @param interval the interval to extract hours from, null returns zero
 @return the period in hours
 @throws IllegalArgumentException if the partials are null or invalid
 */
+ (OrgJodaTimeHours *)hoursInWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval;

/**
 @brief Creates a new <code>Hours</code> representing the number of complete standard length hours in the specified period.
 <p> This factory method converts all fields from the period to hours using standardised durations for each field. Only those fields which have a precise duration in the ISO UTC chronology can be converted. <ul> <li>One week consists of 7 days. <li>One day consists of 24 hours. <li>One hour consists of 60 minutes. <li>One minute consists of 60 seconds. <li>One second consists of 1000 milliseconds. </ul> Months and Years are imprecise and periods containing these values cannot be converted.
 @param period the period to get the number of hours from, null returns zero
 @return the period in hours
 @throws IllegalArgumentException if the period contains imprecise duration values
 */
+ (OrgJodaTimeHours *)standardHoursInWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/**
 @brief Creates a new <code>Hours</code> by parsing a string in the ISO8601 format 'PTnH'.
 <p> The parse will accept the full ISO syntax of PnYnMnWnDTnHnMnS however only the hours component may be non-zero. If any other component is non-zero, an exception will be thrown.
 @param periodStr the period string, null returns zero
 @return the period in hours
 @throws IllegalArgumentException if the string format is invalid
 */
+ (OrgJodaTimeHours *)parseHoursWithNSString:(NSString *)periodStr;

/**
 @brief Creates a new instance representing a number of hours.
 You should consider using the factory method #hours(int) instead of the constructor.
 @param hours the number of hours to represent
 */
- (instancetype)initWithInt:(int)hours;

/**
 @brief Resolves singletons.
 @return the singleton instance
 */
- (id)readResolve;

/**
 @brief Gets the duration field type, which is <code>hours</code>.
 @return the period type
 */
- (OrgJodaTimeDurationFieldType *)getFieldType;

/**
 @brief Gets the period type, which is <code>hours</code>.
 @return the period type
 */
- (OrgJodaTimePeriodType *)getPeriodType;

/**
 @brief Converts this period in hours to a period in weeks assuming a 7 day week and 24 hour day.
 <p> This method allows you to convert between different types of period. However to achieve this it makes the assumption that all weeks are 7 days long and all days are 24 hours long. This is not true when daylight savings time is considered, and may also not be true for some unusual chronologies. However, it is included as it is a useful operation for many applications and business rules.
 @return a period representing the number of whole weeks for this number of hours
 */
- (OrgJodaTimeWeeks *)toStandardWeeks;

/**
 @brief Converts this period in hours to a period in days assuming a 24 hour day.
 <p> This method allows you to convert between different types of period. However to achieve this it makes the assumption that all days are 24 hours long. This is not true when daylight savings time is considered, and may also not be true for some unusual chronologies. However, it is included as it is a useful operation for many applications and business rules.
 @return a period representing the number of whole days for this number of hours
 */
- (OrgJodaTimeDays *)toStandardDays;

/**
 @brief Converts this period in hours to a period in minutes assuming a 60 minute hour.
 <p> This method allows you to convert between different types of period. However to achieve this it makes the assumption that all hours are 60 minutes long. This may not be true for some unusual chronologies. However, it is included as it is a useful operation for many applications and business rules.
 @return a period representing the number of minutes for this number of hours
 @throws ArithmeticException if the number of minutes is too large to be represented
 */
- (OrgJodaTimeMinutes *)toStandardMinutes;

/**
 @brief Converts this period in hours to a period in seconds assuming a 60 minute hour and 60 second minute.
 <p> This method allows you to convert between different types of period. However to achieve this it makes the assumption that all hours are 60 minutes long and all minutes are 60 seconds long. This may not be true for some unusual chronologies. However, it is included as it is a useful operation for many applications and business rules.
 @return a period representing the number of seconds for this number of hours
 @throws ArithmeticException if the number of seconds is too large to be represented
 */
- (OrgJodaTimeSeconds *)toStandardSeconds;

/**
 @brief Converts this period in hours to a duration in milliseconds assuming a 60 minute hour and 60 second minute.
 <p> This method allows you to convert from a period to a duration. However to achieve this it makes the assumption that all hours are 60 minutes and all minutes are 60 seconds. This might not be true for an unusual chronology, for example one that takes leap seconds into account. However, the method is included as it is a useful operation for many applications and business rules.
 @return a duration equivalent to this number of hours
 */
- (OrgJodaTimeDuration *)toStandardDuration;

/**
 @brief Gets the number of hours that this period represents.
 @return the number of hours in the period
 */
- (int)getHours;

/**
 @brief Returns a new instance with the specified number of hours added.
 <p> This instance is immutable and unaffected by this method call.
 @param hours the amount of hours to add, may be negative
 @return the new period plus the specified number of hours
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeHours *)plusWithInt:(int)hours;

/**
 @brief Returns a new instance with the specified number of hours added.
 <p> This instance is immutable and unaffected by this method call.
 @param hours the amount of hours to add, may be negative, null means zero
 @return the new period plus the specified number of hours
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeHours *)plusWithOrgJodaTimeHours:(OrgJodaTimeHours *)hours;

/**
 @brief Returns a new instance with the specified number of hours taken away.
 <p> This instance is immutable and unaffected by this method call.
 @param hours the amount of hours to take away, may be negative
 @return the new period minus the specified number of hours
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeHours *)minusWithInt:(int)hours;

/**
 @brief Returns a new instance with the specified number of hours taken away.
 <p> This instance is immutable and unaffected by this method call.
 @param hours the amount of hours to take away, may be negative, null means zero
 @return the new period minus the specified number of hours
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeHours *)minusWithOrgJodaTimeHours:(OrgJodaTimeHours *)hours;

/**
 @brief Returns a new instance with the hours multiplied by the specified scalar.
 <p> This instance is immutable and unaffected by this method call.
 @param scalar the amount to multiply by, may be negative
 @return the new period multiplied by the specified scalar
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeHours *)multipliedByWithInt:(int)scalar;

/**
 @brief Returns a new instance with the hours divided by the specified divisor.
 The calculation uses integer division, thus 3 divided by 2 is 1. <p> This instance is immutable and unaffected by this method call.
 @param divisor the amount to divide by, may be negative
 @return the new period divided by the specified divisor
 @throws ArithmeticException if the divisor is zero
 */
- (OrgJodaTimeHours *)dividedByWithInt:(int)divisor;

/**
 @brief Returns a new instance with the hours value negated.
 @return the new period with a negated value
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeHours *)negated;

/**
 @brief Is this hours instance greater than the specified number of hours.
 @param other the other period, null means zero
 @return true if this hours instance is greater than the specified one
 */
- (BOOL)isGreaterThanWithOrgJodaTimeHours:(OrgJodaTimeHours *)other;

/**
 @brief Is this hours instance less than the specified number of hours.
 @param other the other period, null means zero
 @return true if this hours instance is less than the specified one
 */
- (BOOL)isLessThanWithOrgJodaTimeHours:(OrgJodaTimeHours *)other;

/**
 @brief Gets this instance as a String in the ISO8601 duration format.
 <p> For example, "PT4H" represents 4 hours.
 @return the value as an ISO8601 string
 */
- (NSString *)description;

@end

FOUNDATION_EXPORT BOOL OrgJodaTimeHours_initialized;
J2OBJC_STATIC_INIT(OrgJodaTimeHours)

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_ZERO_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeHours, ZERO_, OrgJodaTimeHours *)

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_ONE_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeHours, ONE_, OrgJodaTimeHours *)

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_TWO_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeHours, TWO_, OrgJodaTimeHours *)

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_THREE_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeHours, THREE_, OrgJodaTimeHours *)

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_FOUR_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeHours, FOUR_, OrgJodaTimeHours *)

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_FIVE_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeHours, FIVE_, OrgJodaTimeHours *)

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_SIX_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeHours, SIX_, OrgJodaTimeHours *)

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_SEVEN_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeHours, SEVEN_, OrgJodaTimeHours *)

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_EIGHT_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeHours, EIGHT_, OrgJodaTimeHours *)

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_MAX_VALUE_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeHours, MAX_VALUE_, OrgJodaTimeHours *)

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_MIN_VALUE_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeHours, MIN_VALUE_, OrgJodaTimeHours *)

FOUNDATION_EXPORT OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeHours_PARSER_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeHours, PARSER_, OrgJodaTimeFormatPeriodFormatter *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeHours, serialVersionUID, long long int)

#endif // _OrgJodaTimeHours_H_
