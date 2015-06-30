//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/Chronology.java
//

#ifndef _OrgJodaTimeChronology_H_
#define _OrgJodaTimeChronology_H_

#include "J2ObjC_header.h"

@class IOSIntArray;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeZone;
@class OrgJodaTimeDurationField;
@protocol OrgJodaTimeReadablePartial;
@protocol OrgJodaTimeReadablePeriod;

/**
 @brief Chronology provides access to the individual date time fields for a chronological calendar system.
 <p> Various chronologies are supported by subclasses including ISO and GregorianJulian. To construct a Chronology you should use the factory methods on the chronology subclass in the chrono package. <p> For example, to obtain the current time in the coptic calendar system: <pre> DateTime dt = new DateTime(CopticChronology.getInstance()); </pre> <p> The provided chronology implementations are: <ul> <li>ISO - Based on the ISO8601 standard and suitable for use after about 1600 <li>GJ - Historically accurate calendar with Julian followed by Gregorian <li>Gregorian - The Gregorian calendar system used for all time (proleptic) <li>Julian - The Julian calendar system used for all time (proleptic) <li>Buddhist - The Buddhist calendar system which is an offset in years from GJ <li>Coptic - The Coptic calendar system which defines 30 day months <li>Ethiopic - The Ethiopic calendar system which defines 30 day months </ul> Hopefully future releases will contain more chronologies. <p> This class defines a number of fields with names from the ISO8601 standard. It does not 'strongly' define these fields however, thus implementations are free to interpret the field names as they wish. For example, a week could be defined as 10 days and a month as 40 days in a special WeirdChronology implementation. Clearly the GJ and ISO implementations provided use the field names as you would expect.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeChronology : NSObject

#pragma mark Public

- (instancetype)init;

/**
 @brief Adds the duration to the instant, specifying the number of times to add.
 @param instant the instant to add to
 @param duration the duration to add
 @param scalar the number of times to add
 @return the updated instant
 */
- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)duration
             withInt:(jint)scalar;

/**
 @brief Adds the period to the instant, specifying the number of times to add.
 @param period the period to add, null means add nothing
 @param instant the instant to add to
 @param scalar the number of times to add
 @return the updated instant
 */
- (jlong)addWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                 withLong:(jlong)instant
                                  withInt:(jint)scalar;

/**
 @brief Get the centuries duration field for this chronology.
 @return DurationField or UnsupportedDurationField if unsupported
 */
- (OrgJodaTimeDurationField *)centuries;

/**
 @brief Get the century of era field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)centuryOfEra;

/**
 @brief Get the hour of day (offset to 1-24) field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)clockhourOfDay;

/**
 @brief Get the hour of am/pm (offset to 1-12) field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)clockhourOfHalfday;

/**
 @brief Get the day of month field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)dayOfMonth;

/**
 @brief Get the day of week field for this chronology.
 <p>DayOfWeek values are defined in DateTimeConstants . They use the ISO definitions, where 1 is Monday and 7 is Sunday.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)dayOfWeek;

/**
 @brief Get the day of year field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)dayOfYear;

/**
 @brief Get the days duration field for this chronology.
 @return DurationField or UnsupportedDurationField if unsupported
 */
- (OrgJodaTimeDurationField *)days;

/**
 @brief Get the era field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)era;

/**
 @brief Get the eras duration field for this chronology.
 @return DurationField or UnsupportedDurationField if unsupported
 */
- (OrgJodaTimeDurationField *)eras;

/**
 @brief Gets the values of a partial from an instant.
 @param partial the partial instant to use
 @param instant the instant to query
 @return the values of this partial extracted from the instant
 */
- (IOSIntArray *)getWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                                          withLong:(jlong)instant;

/**
 @brief Gets the values of a period from an interval.
 @param period the period instant to use
 @param duration the duration to query
 @return the values of the period extracted from the duration
 */
- (IOSIntArray *)getWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                         withLong:(jlong)duration;

/**
 @brief Gets the values of a period from an interval.
 @param period the period instant to use
 @param startInstant the start instant of an interval to query
 @param endInstant the start instant of an interval to query
 @return the values of the period extracted from the interval
 */
- (IOSIntArray *)getWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                         withLong:(jlong)startInstant
                                         withLong:(jlong)endInstant;

/**
 @brief Returns a datetime millisecond instant, formed from the given year, month, day, and millisecond values.
 The set of given values must refer to a valid datetime, or else an IllegalArgumentException is thrown. <p> The default implementation calls upon separate DateTimeFields to determine the result. Subclasses are encouraged to provide a more efficient implementation.
 @param year year to use
 @param monthOfYear month to use
 @param dayOfMonth day of month to use
 @param millisOfDay millisecond to use
 @return millisecond instant from 1970-01-01T00:00:00Z
 @throws IllegalArgumentException if the values are invalid
 */
- (jlong)getDateTimeMillisWithInt:(jint)year
                          withInt:(jint)monthOfYear
                          withInt:(jint)dayOfMonth
                          withInt:(jint)millisOfDay;

/**
 @brief Returns a datetime millisecond instant, formed from the given year, month, day, hour, minute, second, and millisecond values.
 The set of given values must refer to a valid datetime, or else an IllegalArgumentException is thrown. <p> The default implementation calls upon separate DateTimeFields to determine the result. Subclasses are encouraged to provide a more efficient implementation.
 @param year year to use
 @param monthOfYear month to use
 @param dayOfMonth day of month to use
 @param hourOfDay hour to use
 @param minuteOfHour minute to use
 @param secondOfMinute second to use
 @param millisOfSecond millisecond to use
 @return millisecond instant from 1970-01-01T00:00:00Z
 @throws IllegalArgumentException if the values are invalid
 */
- (jlong)getDateTimeMillisWithInt:(jint)year
                          withInt:(jint)monthOfYear
                          withInt:(jint)dayOfMonth
                          withInt:(jint)hourOfDay
                          withInt:(jint)minuteOfHour
                          withInt:(jint)secondOfMinute
                          withInt:(jint)millisOfSecond;

/**
 @brief Returns a datetime millisecond instant, from from the given instant, hour, minute, second, and millisecond values.
 The set of given values must refer to a valid datetime, or else an IllegalArgumentException is thrown. <p> The default implementation calls upon separate DateTimeFields to determine the result. Subclasses are encouraged to provide a more efficient implementation.
 @param instant instant to start from
 @param hourOfDay hour to use
 @param minuteOfHour minute to use
 @param secondOfMinute second to use
 @param millisOfSecond millisecond to use
 @return millisecond instant from 1970-01-01T00:00:00Z
 @throws IllegalArgumentException if the values are invalid
 */
- (jlong)getDateTimeMillisWithLong:(jlong)instant
                           withInt:(jint)hourOfDay
                           withInt:(jint)minuteOfHour
                           withInt:(jint)secondOfMinute
                           withInt:(jint)millisOfSecond;

/**
 @brief Returns the DateTimeZone that this Chronology operates in, or null if unspecified.
 @return the DateTimeZone, null if unspecified
 */
- (OrgJodaTimeDateTimeZone *)getZone;

/**
 @brief Get the AM(0) PM(1) field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)halfdayOfDay;

/**
 @brief Get the halfdays duration field for this chronology.
 @return DurationField or UnsupportedDurationField if unsupported
 */
- (OrgJodaTimeDurationField *)halfdays;

/**
 @brief Get the hour of day (0-23) field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)hourOfDay;

/**
 @brief Get the hour of am/pm (0-11) field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)hourOfHalfday;

/**
 @brief Get the hours duration field for this chronology.
 @return DurationField or UnsupportedDurationField if unsupported
 */
- (OrgJodaTimeDurationField *)hours;

/**
 @brief Get the millis duration field for this chronology.
 @return DurationField or UnsupportedDurationField if unsupported
 */
- (OrgJodaTimeDurationField *)millis;

/**
 @brief Get the millis of day field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)millisOfDay;

/**
 @brief Get the millis of second field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)millisOfSecond;

/**
 @brief Get the minute of day field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)minuteOfDay;

/**
 @brief Get the minute of hour field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)minuteOfHour;

/**
 @brief Get the minutes duration field for this chronology.
 @return DurationField or UnsupportedDurationField if unsupported
 */
- (OrgJodaTimeDurationField *)minutes;

/**
 @brief Get the month of year field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)monthOfYear;

/**
 @brief Get the months duration field for this chronology.
 @return DurationField or UnsupportedDurationField if unsupported
 */
- (OrgJodaTimeDurationField *)months;

/**
 @brief Get the second of day field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)secondOfDay;

/**
 @brief Get the second of minute field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)secondOfMinute;

/**
 @brief Get the seconds duration field for this chronology.
 @return DurationField or UnsupportedDurationField if unsupported
 */
- (OrgJodaTimeDurationField *)seconds;

/**
 @brief Sets the partial into the instant.
 @param partial the partial instant to use
 @param instant the instant to update
 @return the updated instant
 */
- (jlong)setWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                                  withLong:(jlong)instant;

/**
 @brief Gets a debugging toString.
 @return a debugging string
 */
- (NSString *)description;

/**
 @brief Validates whether the values are valid for the fields of a partial instant.
 @param partial the partial instant to validate
 @param values the values to validate, not null, match fields in partial
 @throws IllegalArgumentException if the instant is invalid
 */
- (void)validateWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                                  withIntArray:(IOSIntArray *)values;

/**
 @brief Get the week of a week based year field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)weekOfWeekyear;

/**
 @brief Get the weeks duration field for this chronology.
 @return DurationField or UnsupportedDurationField if unsupported
 */
- (OrgJodaTimeDurationField *)weeks;

/**
 @brief Get the year of a week based year field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)weekyear;

/**
 @brief Get the year of a week based year in a century field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)weekyearOfCentury;

/**
 @brief Get the weekyears duration field for this chronology.
 @return DurationField or UnsupportedDurationField if unsupported
 */
- (OrgJodaTimeDurationField *)weekyears;

/**
 @brief Returns an instance of this Chronology that operates in the UTC time zone.
 Chronologies that do not operate in a time zone or are already UTC must return themself.
 @return a version of this chronology that ignores time zones
 */
- (OrgJodaTimeChronology *)withUTC;

/**
 @brief Returns an instance of this Chronology that operates in any time zone.
 @return a version of this chronology with a specific time zone
 @param zone to use, or default if null
 */
- (OrgJodaTimeChronology *)withZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/**
 @brief Get the year field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)year;

/**
 @brief Get the year of century field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)yearOfCentury;

/**
 @brief Get the year of era field for this chronology.
 @return DateTimeField or UnsupportedDateTimeField if unsupported
 */
- (OrgJodaTimeDateTimeField *)yearOfEra;

/**
 @brief Get the years duration field for this chronology.
 @return DurationField or UnsupportedDurationField if unsupported
 */
- (OrgJodaTimeDurationField *)years;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeChronology)

FOUNDATION_EXPORT void OrgJodaTimeChronology_init(OrgJodaTimeChronology *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronology)

#endif // _OrgJodaTimeChronology_H_
