//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/base/AbstractDateTime.java
//

#ifndef _OrgJodaTimeBaseAbstractDateTime_H_
#define _OrgJodaTimeBaseAbstractDateTime_H_

#include "J2ObjC_header.h"
#include "org/joda/time/ReadableDateTime.h"
#include "org/joda/time/base/AbstractInstant.h"

@class JavaUtilCalendar;
@class JavaUtilGregorianCalendar;
@class JavaUtilLocale;
@class OrgJodaTimeDateTimeFieldType;

/**
 @brief AbstractDateTime provides the common behaviour for datetime classes.
 <p> This class should generally not be used directly by API users. The ReadableDateTime interface should be used when different kinds of date/time objects are to be referenced. <p> Whenever you want to implement <code>ReadableDateTime</code> you should extend this class. <p> AbstractDateTime subclasses may be mutable and not thread-safe.
 @author Brian S O'Neill
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeBaseAbstractDateTime : OrgJodaTimeBaseAbstractInstant < OrgJodaTimeReadableDateTime >

#pragma mark Public

/**
 @brief Get the value of one of the fields of a datetime.
 <p> This method uses the chronology of the datetime to obtain the value. It is essentially a generic way of calling one of the get methods.
 @param type a field type, usually obtained from DateTimeFieldType
 @return the value of that field
 @throws IllegalArgumentException if the field type is null
 */
- (jint)getWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type;

/**
 @brief Get the year of era field value.
 @return the year of era
 */
- (jint)getCenturyOfEra;

/**
 @brief Get the day of month field value.
 <p> The values for the day of month are defined in org.joda.time.DateTimeConstants .
 @return the day of month
 */
- (jint)getDayOfMonth;

/**
 @brief Get the day of week field value.
 <p> The values for the day of week are defined in org.joda.time.DateTimeConstants .
 @return the day of week
 */
- (jint)getDayOfWeek;

/**
 @brief Get the day of year field value.
 @return the day of year
 */
- (jint)getDayOfYear;

/**
 @brief Get the era field value.
 @return the era
 */
- (jint)getEra;

/**
 @brief Get the hour of day field value.
 @return the hour of day
 */
- (jint)getHourOfDay;

/**
 @brief Get the millis of day field value.
 @return the millis of day
 */
- (jint)getMillisOfDay;

/**
 @brief Get the millis of second field value.
 @return the millis of second
 */
- (jint)getMillisOfSecond;

/**
 @brief Get the minute of day field value.
 @return the minute of day
 */
- (jint)getMinuteOfDay;

/**
 @brief Get the minute of hour field value.
 @return the minute of hour
 */
- (jint)getMinuteOfHour;

/**
 @brief Get the month of year field value.
 @return the month of year
 */
- (jint)getMonthOfYear;

/**
 @brief Get the second of day field value.
 @return the second of day
 */
- (jint)getSecondOfDay;

/**
 @brief Get the second of minute field value.
 @return the second of minute
 */
- (jint)getSecondOfMinute;

/**
 @brief Get the week of weekyear field value.
 <p> This field is associated with the "weekyear" via #getWeekyear() . In the standard ISO8601 week algorithm, the first week of the year is that in which at least 4 days are in the year. As a result of this definition, day 1 of the first week may be in the previous year.
 @return the week of a week based year
 */
- (jint)getWeekOfWeekyear;

/**
 @brief Get the weekyear field value.
 <p> The weekyear is the year that matches with the weekOfWeekyear field. In the standard ISO8601 week algorithm, the first week of the year is that in which at least 4 days are in the year. As a result of this definition, day 1 of the first week may be in the previous year. The weekyear allows you to query the effective year for that day.
 @return the year of a week based year
 */
- (jint)getWeekyear;

/**
 @brief Get the year field value.
 @return the year
 */
- (jint)getYear;

/**
 @brief Get the year of century field value.
 @return the year of century
 */
- (jint)getYearOfCentury;

/**
 @brief Get the year of era field value.
 @return the year of era
 */
- (jint)getYearOfEra;

/**
 @brief Get the date time as a <code>java.util.Calendar</code>, assigning exactly the same millisecond instant.
 The locale is passed in, enabling Calendar to select the correct localized subclass. <p> The JDK and Joda-Time both have time zone implementations and these differ in accuracy. Joda-Time's implementation is generally more up to date and thus more accurate - for example JDK1.3 has no historical data. The effect of this is that the field values of the <code>Calendar</code> may differ from those of this object, even though the milliseond value is the same. Most of the time this just means that the JDK field values are wrong, as our time zone information is more up to date.
 @param locale the locale to get the Calendar for, or default if null
 @return a localized Calendar initialised with this datetime
 */
- (JavaUtilCalendar *)toCalendarWithJavaUtilLocale:(JavaUtilLocale *)locale;

/**
 @brief Get the date time as a <code>java.util.GregorianCalendar</code>, assigning exactly the same millisecond instant.
 <p> The JDK and Joda-Time both have time zone implementations and these differ in accuracy. Joda-Time's implementation is generally more up to date and thus more accurate - for example JDK1.3 has no historical data. The effect of this is that the field values of the <code>Calendar</code> may differ from those of this object, even though the milliseond value is the same. Most of the time this just means that the JDK field values are wrong, as our time zone information is more up to date.
 @return a GregorianCalendar initialised with this datetime
 */
- (JavaUtilGregorianCalendar *)toGregorianCalendar;

/**
 @brief Output the date time in ISO8601 format (yyyy-MM-ddTHH:mm:ss.SSSZZ).
 <p> Note that this method does not output the chronology or time-zone. This can be confusing, as the equals and hashCode methods use both chronology and time-zone. If two objects are not <code>equal</code> but have the same <code>toString</code> then either the chronology or time-zone differs.
 @return ISO8601 time formatted string, not null
 */
- (NSString *)description;

/**
 @brief Output the instant using the specified format pattern.
 @param pattern the pattern specification, null means use <code>toString</code>
 @return the formatted string, not null
 */
- (NSString *)toStringWithNSString:(NSString *)pattern;

/**
 @brief Output the instant using the specified format pattern.
 @param pattern the pattern specification, null means use <code>toString</code>
 @param locale Locale to use, null means default
 @return the formatted string, not null
 */
- (NSString *)toStringWithNSString:(NSString *)pattern
                withJavaUtilLocale:(JavaUtilLocale *)locale;

#pragma mark Protected

/**
 @brief Constructor.
 */
- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeBaseAbstractDateTime)

FOUNDATION_EXPORT void OrgJodaTimeBaseAbstractDateTime_init(OrgJodaTimeBaseAbstractDateTime *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeBaseAbstractDateTime)

#endif // _OrgJodaTimeBaseAbstractDateTime_H_
