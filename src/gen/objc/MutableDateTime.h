//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/MutableDateTime.java
//

#ifndef _OrgJodaTimeMutableDateTime_H_
#define _OrgJodaTimeMutableDateTime_H_

@class JavaIoObjectInputStream;
@class JavaIoObjectOutputStream;
@class JavaUtilLocale;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDateTimeZone;
@class OrgJodaTimeDurationFieldType;
@class OrgJodaTimeFormatDateTimeFormatter;
@class OrgJodaTimeMutableDateTime_Property;
@protocol OrgJodaTimeReadableDuration;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadablePeriod;

#import "JreEmulation.h"
#include "AbstractReadableInstantFieldProperty.h"
#include "BaseDateTime.h"
#include "ReadWritableDateTime.h"
#include "java/io/Serializable.h"

#define OrgJodaTimeMutableDateTime_ROUND_CEILING 2
#define OrgJodaTimeMutableDateTime_ROUND_FLOOR 1
#define OrgJodaTimeMutableDateTime_ROUND_HALF_CEILING 4
#define OrgJodaTimeMutableDateTime_ROUND_HALF_EVEN 5
#define OrgJodaTimeMutableDateTime_ROUND_HALF_FLOOR 3
#define OrgJodaTimeMutableDateTime_ROUND_NONE 0
#define OrgJodaTimeMutableDateTime_serialVersionUID 2852608688135209575LL

/**
 @brief MutableDateTime is the standard implementation of a modifiable datetime class.
 It holds the datetime as milliseconds from the Java epoch of 1970-01-01T00:00:00Z. <p> This class uses a Chronology internally. The Chronology determines how the millisecond instant value is converted into the date time fields. The default Chronology is <code>ISOChronology</code> which is the agreed international standard and compatible with the modern Gregorian calendar. <p> Each individual field can be accessed in two ways: <ul> <li><code>getHourOfDay()</code> <li><code>hourOfDay().get()</code> </ul> The second technique also provides access to other useful methods on the field: <ul> <li>get numeric value <li>set numeric value <li>add to numeric value <li>add to numeric value wrapping with the field <li>get text value <li>get short text value <li>set text value <li>field maximum value <li>field minimum value </ul> <p> MutableDateTime is mutable and not thread-safe, unless concurrent threads are not invoking mutator methods.
 @author Guy Allard
 @author Brian S O'Neill
 @author Stephen Colebourne
 @author Mike Schrag
 @since 1.0
 */
@interface OrgJodaTimeMutableDateTime : OrgJodaTimeBaseBaseDateTime < OrgJodaTimeReadWritableDateTime, NSCopying, JavaIoSerializable > {
 @public
  /**
   @brief The field to round on
   */
  OrgJodaTimeDateTimeField *iRoundingField_;
  /**
   @brief The mode of rounding
   */
  int iRoundingMode_;
}

/**
 @brief Obtains a <code>MutableDateTime</code> set to the current system millisecond time using <code>ISOChronology</code> in the default time zone.
 @return the current date-time, not null
 @since 2.0
 */
+ (OrgJodaTimeMutableDateTime *)now;

/**
 @brief Obtains a <code>MutableDateTime</code> set to the current system millisecond time using <code>ISOChronology</code> in the specified time zone.
 @param zone the time zone, not null
 @return the current date-time, not null
 @since 2.0
 */
+ (OrgJodaTimeMutableDateTime *)nowWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/**
 @brief Obtains a <code>MutableDateTime</code> set to the current system millisecond time using the specified chronology.
 @param chronology the chronology, not null
 @return the current date-time, not null
 @since 2.0
 */
+ (OrgJodaTimeMutableDateTime *)nowWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Parses a <code>MutableDateTime</code> from the specified string.
 <p> This uses ISODateTimeFormat#dateTimeParser() .
 @param str the string to parse, not null
 @since 2.0
 */
+ (OrgJodaTimeMutableDateTime *)parseWithNSString:(NSString *)str;

/**
 @brief Parses a <code>MutableDateTime</code> from the specified string using a formatter.
 @param str the string to parse, not null
 @param formatter the formatter to use, not null
 @since 2.0
 */
+ (OrgJodaTimeMutableDateTime *)parseWithNSString:(NSString *)str
           withOrgJodaTimeFormatDateTimeFormatter:(OrgJodaTimeFormatDateTimeFormatter *)formatter;

/**
 @brief Constructs an instance set to the current system millisecond time using <code>ISOChronology</code> in the default time zone.
 */
- (instancetype)init;

/**
 @brief Constructs an instance set to the current system millisecond time using <code>ISOChronology</code> in the specified time zone.
 <p> If the specified time zone is null, the default zone is used.
 @param zone the time zone, null means default zone
 */
- (instancetype)initWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/**
 @brief Constructs an instance set to the current system millisecond time using the specified chronology.
 <p> If the chronology is null, <code>ISOChronology</code> in the default time zone is used.
 @param chronology the chronology, null means ISOChronology in default zone
 */
- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Constructs an instance set to the milliseconds from 1970-01-01T00:00:00Z using <code>ISOChronology</code> in the default time zone.
 @param instant the milliseconds from 1970-01-01T00:00:00Z
 */
- (instancetype)initWithLong:(long long int)instant;

/**
 @brief Constructs an instance set to the milliseconds from 1970-01-01T00:00:00Z using <code>ISOChronology</code> in the specified time zone.
 <p> If the specified time zone is null, the default zone is used.
 @param instant the milliseconds from 1970-01-01T00:00:00Z
 @param zone the time zone, null means default zone
 */
- (instancetype)initWithLong:(long long int)instant
 withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/**
 @brief Constructs an instance set to the milliseconds from 1970-01-01T00:00:00Z using the specified chronology.
 <p> If the chronology is null, <code>ISOChronology</code> in the default time zone is used.
 @param instant the milliseconds from 1970-01-01T00:00:00Z
 @param chronology the chronology, null means ISOChronology in default zone
 */
- (instancetype)initWithLong:(long long int)instant
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Constructs an instance from an Object that represents a datetime.
 <p> If the object implies a chronology (such as GregorianCalendar does), then that chronology will be used. Otherwise, ISO default is used. Thus if a GregorianCalendar is passed in, the chronology used will be GJ, but if a Date is passed in the chronology will be ISO. <p> The recognised object types are defined in org.joda.time.convert.ConverterManager ConverterManager and include ReadableInstant, String, Calendar and Date.
 @param instant the datetime object, null means now
 @throws IllegalArgumentException if the instant is invalid
 */
- (instancetype)initWithId:(id)instant;

/**
 @brief Constructs an instance from an Object that represents a datetime, forcing the time zone to that specified.
 <p> If the object implies a chronology (such as GregorianCalendar does), then that chronology will be used, but with the time zone adjusted. Otherwise, ISO is used in the specified time zone. If the specified time zone is null, the default zone is used. Thus if a GregorianCalendar is passed in, the chronology used will be GJ, but if a Date is passed in the chronology will be ISO. <p> The recognised object types are defined in org.joda.time.convert.ConverterManager ConverterManager and include ReadableInstant, String, Calendar and Date.
 @param instant the datetime object, null means now
 @param zone the time zone, null means default time zone
 @throws IllegalArgumentException if the instant is invalid
 */
- (instancetype)initWithId:(id)instant
withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/**
 @brief Constructs an instance from an Object that represents a datetime, using the specified chronology.
 <p> If the chronology is null, ISO in the default time zone is used. Any chronology implied by the object (such as GregorianCalendar does) is ignored. <p> The recognised object types are defined in org.joda.time.convert.ConverterManager ConverterManager and include ReadableInstant, String, Calendar and Date.
 @param instant the datetime object, null means now
 @param chronology the chronology, null means ISOChronology in default zone
 @throws IllegalArgumentException if the instant is invalid
 */
- (instancetype)initWithId:(id)instant
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Constructs an instance from datetime field values using <code>ISOChronology</code> in the default time zone.
 @param year the year
 @param monthOfYear the month of the year
 @param dayOfMonth the day of the month
 @param hourOfDay the hour of the day
 @param minuteOfHour the minute of the hour
 @param secondOfMinute the second of the minute
 @param millisOfSecond the millisecond of the second
 */
- (instancetype)initWithInt:(int)year
                    withInt:(int)monthOfYear
                    withInt:(int)dayOfMonth
                    withInt:(int)hourOfDay
                    withInt:(int)minuteOfHour
                    withInt:(int)secondOfMinute
                    withInt:(int)millisOfSecond;

/**
 @brief Constructs an instance from datetime field values using <code>ISOChronology</code> in the specified time zone.
 <p> If the specified time zone is null, the default zone is used.
 @param year the year
 @param monthOfYear the month of the year
 @param dayOfMonth the day of the month
 @param hourOfDay the hour of the day
 @param minuteOfHour the minute of the hour
 @param secondOfMinute the second of the minute
 @param millisOfSecond the millisecond of the second
 @param zone the time zone, null means default time zone
 */
- (instancetype)initWithInt:(int)year
                    withInt:(int)monthOfYear
                    withInt:(int)dayOfMonth
                    withInt:(int)hourOfDay
                    withInt:(int)minuteOfHour
                    withInt:(int)secondOfMinute
                    withInt:(int)millisOfSecond
withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/**
 @brief Constructs an instance from datetime field values using the specified chronology.
 <p> If the chronology is null, <code>ISOChronology</code> in the default time zone is used.
 @param year the year
 @param monthOfYear the month of the year
 @param dayOfMonth the day of the month
 @param hourOfDay the hour of the day
 @param minuteOfHour the minute of the hour
 @param secondOfMinute the second of the minute
 @param millisOfSecond the millisecond of the second
 @param chronology the chronology, null means ISOChronology in default zone
 */
- (instancetype)initWithInt:(int)year
                    withInt:(int)monthOfYear
                    withInt:(int)dayOfMonth
                    withInt:(int)hourOfDay
                    withInt:(int)minuteOfHour
                    withInt:(int)secondOfMinute
                    withInt:(int)millisOfSecond
  withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Gets the field used for rounding this instant, returning null if rounding is not enabled.
 @return the rounding field
 */
- (OrgJodaTimeDateTimeField *)getRoundingField;

/**
 @brief Gets the rounding mode for this instant, returning ROUND_NONE if rounding is not enabled.
 @return the rounding mode constant
 */
- (int)getRoundingMode;

/**
 @brief Sets the status of rounding to use the specified field and ROUND_FLOOR mode.
 A null field will disable rounding. Once set, the instant is then rounded using the new field and mode. <p> Enabling rounding will cause all subsequent calls to #setMillis(long) to be rounded. This can be used to control the precision of the instant, for example by setting a rounding field of minuteOfDay, the seconds and milliseconds will always be zero.
 @param field rounding field or null to disable
 */
- (void)setRoundingWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field;

/**
 @brief Sets the status of rounding to use the specified field and mode.
 A null field or mode of ROUND_NONE will disable rounding. Once set, the instant is then rounded using the new field and mode. <p> Enabling rounding will cause all subsequent calls to #setMillis(long) to be rounded. This can be used to control the precision of the instant, for example by setting a rounding field of minuteOfDay, the seconds and milliseconds will always be zero.
 @param field rounding field or null to disable
 @param mode rounding mode or ROUND_NONE to disable
 @throws IllegalArgumentException if mode is unknown, no exception if field is null
 */
- (void)setRoundingWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                                        withInt:(int)mode;

/**
 @brief Set the milliseconds of the datetime.
 <p> All changes to the millisecond field occurs via this method.
 @param instant the milliseconds since 1970-01-01T00:00:00Z to set the datetime to
 */
- (void)setMillisWithLong:(long long int)instant;

/**
 @brief Sets the millisecond instant of this instant from another.
 <p> This method does not change the chronology of this instant, just the millisecond instant.
 @param instant the instant to use, null means now
 */
- (void)setMillisWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

/**
 @brief Add an amount of time to the datetime.
 @param duration the millis to add
 @throws ArithmeticException if the result exceeds the capacity of the instant
 */
- (void)addWithLong:(long long int)duration;

/**
 @brief Adds a duration to this instant.
 <p> This will typically change the value of most fields.
 @param duration the duration to add, null means add zero
 @throws ArithmeticException if the result exceeds the capacity of the instant
 */
- (void)addWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration;

/**
 @brief Adds a duration to this instant specifying how many times to add.
 <p> This will typically change the value of most fields.
 @param duration the duration to add, null means add zero
 @param scalar direction and amount to add, which may be negative
 @throws ArithmeticException if the result exceeds the capacity of the instant
 */
- (void)addWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration
                                   withInt:(int)scalar;

/**
 @brief Adds a period to this instant.
 <p> This will typically change the value of most fields.
 @param period the period to add, null means add zero
 @throws ArithmeticException if the result exceeds the capacity of the instant
 */
- (void)addWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/**
 @brief Adds a period to this instant specifying how many times to add.
 <p> This will typically change the value of most fields.
 @param period the period to add, null means add zero
 @param scalar direction and amount to add, which may be negative
 @throws ArithmeticException if the result exceeds the capacity of the instant
 */
- (void)addWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                 withInt:(int)scalar;

/**
 @brief Set the chronology of the datetime.
 <p> All changes to the chronology occur via this method.
 @param chronology the chronology to use, null means ISOChronology in default zone
 */
- (void)setChronologyWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Sets the time zone of the datetime, changing the chronology and field values.
 <p> Changing the zone using this method retains the millisecond instant. The millisecond instant is adjusted in the new zone to compensate. chronology. Setting the time zone does not affect the millisecond value of this instant. <p> If the chronology already has this time zone, no change occurs.
 @param newZone the time zone to use, null means default zone
 */
- (void)setZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)newZone;

/**
 @brief Sets the time zone of the datetime, changing the chronology and millisecond.
 <p> Changing the zone using this method retains the field values. The millisecond instant is adjusted in the new zone to compensate. <p> If the chronology already has this time zone, no change occurs.
 @param newZone the time zone to use, null means default zone
 */
- (void)setZoneRetainFieldsWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)newZone;

/**
 @brief Sets the value of one of the fields of the instant, such as hourOfDay.
 @param type a field type, usually obtained from DateTimeFieldType, not null
 @param value the value to set the field to
 @throws IllegalArgumentException if the value is null or invalid
 */
- (void)setWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type
                                    withInt:(int)value;

/**
 @brief Adds to the instant specifying the duration and multiple to add.
 @param type a field type, usually obtained from DateTimeFieldType, not null
 @param amount the amount to add of this duration
 @throws IllegalArgumentException if the value is null or invalid
 @throws ArithmeticException if the result exceeds the capacity of the instant
 */
- (void)addWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type
                                    withInt:(int)amount;

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
 @brief Set the date from milliseconds.
 The time part of this object will be unaffected.
 @param instant an instant to copy the date from, time part ignored
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setDateWithLong:(long long int)instant;

/**
 @brief Set the date from another instant.
 The time part of this object will be unaffected. <p> If the input is a <code>ReadableDateTime</code> then it is converted to the same time-zone as this object before using the instant millis.
 @param instant an instant to copy the date from, time part ignored
 @throws IllegalArgumentException if the object is invalid
 */
- (void)setDateWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

/**
 @brief Set the date from fields.
 The time part of this object will be unaffected.
 @param year the year
 @param monthOfYear the month of the year
 @param dayOfMonth the day of the month
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setDateWithInt:(int)year
               withInt:(int)monthOfYear
               withInt:(int)dayOfMonth;

/**
 @brief Set the time from milliseconds.
 The date part of this object will be unaffected.
 @param millis an instant to copy the time from, date part ignored
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setTimeWithLong:(long long int)millis;

/**
 @brief Set the time from another instant.
 The date part of this object will be unaffected.
 @param instant an instant to copy the time from, date part ignored
 @throws IllegalArgumentException if the object is invalid
 */
- (void)setTimeWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

/**
 @brief Set the time from fields.
 The date part of this object will be unaffected.
 @param hour the hour
 @param minuteOfHour the minute of the hour
 @param secondOfMinute the second of the minute
 @param millisOfSecond the millisecond of the second
 @throws IllegalArgumentException if the value is invalid
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
 @throws IllegalArgumentException if the value is invalid
 */
- (void)setDateTimeWithInt:(int)year
                   withInt:(int)monthOfYear
                   withInt:(int)dayOfMonth
                   withInt:(int)hourOfDay
                   withInt:(int)minuteOfHour
                   withInt:(int)secondOfMinute
                   withInt:(int)millisOfSecond;

/**
 @brief Gets the property object for the specified type, which contains many useful methods.
 @param type the field type to get the chronology for
 @return the property object
 @throws IllegalArgumentException if the field is null or unsupported
 @since 1.2
 */
- (OrgJodaTimeMutableDateTime_Property *)propertyWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type;

/**
 @brief Get the era property.
 @return the era property
 */
- (OrgJodaTimeMutableDateTime_Property *)era;

/**
 @brief Get the century of era property.
 @return the year of era property
 */
- (OrgJodaTimeMutableDateTime_Property *)centuryOfEra;

/**
 @brief Get the year of century property.
 @return the year of era property
 */
- (OrgJodaTimeMutableDateTime_Property *)yearOfCentury;

/**
 @brief Get the year of era property.
 @return the year of era property
 */
- (OrgJodaTimeMutableDateTime_Property *)yearOfEra;

/**
 @brief Get the year property.
 @return the year property
 */
- (OrgJodaTimeMutableDateTime_Property *)year;

/**
 @brief Get the year of a week based year property.
 @return the year of a week based year property
 */
- (OrgJodaTimeMutableDateTime_Property *)weekyear;

/**
 @brief Get the month of year property.
 @return the month of year property
 */
- (OrgJodaTimeMutableDateTime_Property *)monthOfYear;

/**
 @brief Get the week of a week based year property.
 @return the week of a week based year property
 */
- (OrgJodaTimeMutableDateTime_Property *)weekOfWeekyear;

/**
 @brief Get the day of year property.
 @return the day of year property
 */
- (OrgJodaTimeMutableDateTime_Property *)dayOfYear;

/**
 @brief Get the day of month property.
 <p> The values for day of month are defined in DateTimeConstants .
 @return the day of month property
 */
- (OrgJodaTimeMutableDateTime_Property *)dayOfMonth;

/**
 @brief Get the day of week property.
 <p> The values for day of week are defined in DateTimeConstants .
 @return the day of week property
 */
- (OrgJodaTimeMutableDateTime_Property *)dayOfWeek;

/**
 @brief Get the hour of day field property
 @return the hour of day property
 */
- (OrgJodaTimeMutableDateTime_Property *)hourOfDay;

/**
 @brief Get the minute of day property
 @return the minute of day property
 */
- (OrgJodaTimeMutableDateTime_Property *)minuteOfDay;

/**
 @brief Get the minute of hour field property
 @return the minute of hour property
 */
- (OrgJodaTimeMutableDateTime_Property *)minuteOfHour;

/**
 @brief Get the second of day property
 @return the second of day property
 */
- (OrgJodaTimeMutableDateTime_Property *)secondOfDay;

/**
 @brief Get the second of minute field property
 @return the second of minute property
 */
- (OrgJodaTimeMutableDateTime_Property *)secondOfMinute;

/**
 @brief Get the millis of day property
 @return the millis of day property
 */
- (OrgJodaTimeMutableDateTime_Property *)millisOfDay;

/**
 @brief Get the millis of second property
 @return the millis of second property
 */
- (OrgJodaTimeMutableDateTime_Property *)millisOfSecond;

/**
 @brief Clone this object without having to cast the returned object.
 @return a clone of the this object.
 */
- (OrgJodaTimeMutableDateTime *)copy__ OBJC_METHOD_FAMILY_NONE;

/**
 @brief Clone this object.
 @return a clone of this object.
 */
- (id)clone;

- (id)copyWithZone:(NSZone *)zone;

- (void)copyAllFieldsTo:(OrgJodaTimeMutableDateTime *)other;

@end

__attribute__((always_inline)) inline void OrgJodaTimeMutableDateTime_init() {}

J2OBJC_FIELD_SETTER(OrgJodaTimeMutableDateTime, iRoundingField_, OrgJodaTimeDateTimeField *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMutableDateTime, serialVersionUID, long long int)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMutableDateTime, ROUND_NONE, int)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMutableDateTime, ROUND_FLOOR, int)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMutableDateTime, ROUND_CEILING, int)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMutableDateTime, ROUND_HALF_FLOOR, int)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMutableDateTime, ROUND_HALF_CEILING, int)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMutableDateTime, ROUND_HALF_EVEN, int)

#define OrgJodaTimeMutableDateTime_Property_serialVersionUID -4481126543819298617LL

/**
 @brief MutableDateTime.Property binds a MutableDateTime to a DateTimeField allowing powerful datetime functionality to be easily accessed.
 <p> The example below shows how to use the property to change the value of a MutableDateTime object. <pre> MutableDateTime dt = new MutableDateTime(1972, 12, 3, 13, 32, 19, 123); dt.year().add(20); dt.second().roundFloor().minute().set(10); </pre> <p> MutableDateTime.Propery itself is thread-safe and immutable, but the MutableDateTime being operated on is not.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeMutableDateTime_Property : OrgJodaTimeFieldAbstractReadableInstantFieldProperty {
 @public
  /**
   @brief The instant this property is working against
   */
  OrgJodaTimeMutableDateTime *iInstant_;
  /**
   @brief The field this property is working against
   */
  OrgJodaTimeDateTimeField *iField_;
}

/**
 @brief Constructor.
 @param instant the instant to set
 @param field the field to use
 */
- (instancetype)initWithOrgJodaTimeMutableDateTime:(OrgJodaTimeMutableDateTime *)instant
                      withOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field;

/**
 @brief Writes the property in a safe serialization format.
 */
- (void)writeObjectWithJavaIoObjectOutputStream:(JavaIoObjectOutputStream *)oos;

/**
 @brief Reads the property from a safe serialization format.
 */
- (void)readObjectWithJavaIoObjectInputStream:(JavaIoObjectInputStream *)oos;

/**
 @brief Gets the field being used.
 @return the field
 */
- (OrgJodaTimeDateTimeField *)getField;

/**
 @brief Gets the milliseconds of the datetime that this property is linked to.
 @return the milliseconds
 */
- (long long int)getMillis;

/**
 @brief Gets the chronology of the datetime that this property is linked to.
 @return the chronology
 @since 1.4
 */
- (OrgJodaTimeChronology *)getChronology;

/**
 @brief Gets the mutable datetime being used.
 @return the mutable datetime
 */
- (OrgJodaTimeMutableDateTime *)getMutableDateTime;

/**
 @brief Adds a value to the millis value.
 @param value the value to add
 @return the mutable datetime being used, so calls can be chained
 */
- (OrgJodaTimeMutableDateTime *)addWithInt:(int)value;

/**
 @brief Adds a value to the millis value.
 @param value the value to add
 @return the mutable datetime being used, so calls can be chained
 */
- (OrgJodaTimeMutableDateTime *)addWithLong:(long long int)value;

/**
 @brief Adds a value, possibly wrapped, to the millis value.
 @param value the value to add
 @return the mutable datetime being used, so calls can be chained
 */
- (OrgJodaTimeMutableDateTime *)addWrapFieldWithInt:(int)value;

/**
 @brief Sets a value.
 @param value the value to set.
 @return the mutable datetime being used, so calls can be chained
 */
- (OrgJodaTimeMutableDateTime *)setWithInt:(int)value;

/**
 @brief Sets a text value.
 @param text the text value to set
 @param locale optional locale to use for selecting a text symbol
 @return the mutable datetime being used, so calls can be chained
 @throws IllegalArgumentException if the text value isn't valid
 */
- (OrgJodaTimeMutableDateTime *)setWithNSString:(NSString *)text
                             withJavaUtilLocale:(JavaUtilLocale *)locale;

/**
 @brief Sets a text value.
 @param text the text value to set
 @return the mutable datetime being used, so calls can be chained
 @throws IllegalArgumentException if the text value isn't valid
 */
- (OrgJodaTimeMutableDateTime *)setWithNSString:(NSString *)text;

/**
 @brief Round to the lowest whole unit of this field.
 @return the mutable datetime being used, so calls can be chained
 */
- (OrgJodaTimeMutableDateTime *)roundFloor;

/**
 @brief Round to the highest whole unit of this field.
 @return the mutable datetime being used, so calls can be chained
 */
- (OrgJodaTimeMutableDateTime *)roundCeiling;

/**
 @brief Round to the nearest whole unit of this field, favoring the floor if halfway.
 @return the mutable datetime being used, so calls can be chained
 */
- (OrgJodaTimeMutableDateTime *)roundHalfFloor;

/**
 @brief Round to the nearest whole unit of this field, favoring the ceiling if halfway.
 @return the mutable datetime being used, so calls can be chained
 */
- (OrgJodaTimeMutableDateTime *)roundHalfCeiling;

/**
 @brief Round to the nearest whole unit of this field.
 If halfway, the ceiling is favored over the floor only if it makes this field's value even.
 @return the mutable datetime being used, so calls can be chained
 */
- (OrgJodaTimeMutableDateTime *)roundHalfEven;

- (void)copyAllFieldsTo:(OrgJodaTimeMutableDateTime_Property *)other;

@end

__attribute__((always_inline)) inline void OrgJodaTimeMutableDateTime_Property_init() {}

J2OBJC_FIELD_SETTER(OrgJodaTimeMutableDateTime_Property, iInstant_, OrgJodaTimeMutableDateTime *)
J2OBJC_FIELD_SETTER(OrgJodaTimeMutableDateTime_Property, iField_, OrgJodaTimeDateTimeField *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMutableDateTime_Property, serialVersionUID, long long int)

#endif // _OrgJodaTimeMutableDateTime_H_
