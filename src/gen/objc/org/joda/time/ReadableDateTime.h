//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/ReadableDateTime.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeReadableDateTime")
#ifdef RESTRICT_OrgJodaTimeReadableDateTime
#define INCLUDE_ALL_OrgJodaTimeReadableDateTime 0
#else
#define INCLUDE_ALL_OrgJodaTimeReadableDateTime 1
#endif
#undef RESTRICT_OrgJodaTimeReadableDateTime

#if !defined (OrgJodaTimeReadableDateTime_) && (INCLUDE_ALL_OrgJodaTimeReadableDateTime || defined(INCLUDE_OrgJodaTimeReadableDateTime))
#define OrgJodaTimeReadableDateTime_

#define RESTRICT_OrgJodaTimeReadableInstant 1
#define INCLUDE_OrgJodaTimeReadableInstant 1
#include "org/joda/time/ReadableInstant.h"

@class JavaUtilLocale;
@class OrgJodaTimeDateTime;
@class OrgJodaTimeMutableDateTime;

/*!
 @brief Defines an instant in time that can be queried using datetime fields.
 <p>
  The implementation of this interface may be mutable or immutable.
  This interface only gives access to retrieve data, never to change it. 
 <p>
  Methods in your application should be defined using <code>ReadableDateTime</code>
  as a parameter if the method only wants to read the datetime, and not perform
  any advanced manipulations.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@protocol OrgJodaTimeReadableDateTime < OrgJodaTimeReadableInstant, JavaObject >

/*!
 @brief Get the day of week field value.
 <p>
  The values for the day of week are defined in <code>DateTimeConstants</code>.
 @return the day of week
 */
- (jint)getDayOfWeek;

/*!
 @brief Get the day of month field value.
 @return the day of month
 */
- (jint)getDayOfMonth;

/*!
 @brief Get the day of year field value.
 @return the day of year
 */
- (jint)getDayOfYear;

/*!
 @brief Get the week of weekyear field value.
 <p>
  This field is associated with the "weekyear" via <code>getWeekyear()</code>.
  In the standard ISO8601 week algorithm, the first week of the year
  is that in which at least 4 days are in the year. As a result of this
  definition, day 1 of the first week may be in the previous year.
 @return the week of a week based year
 */
- (jint)getWeekOfWeekyear;

/*!
 @brief Get the weekyear field value.
 <p>
  The weekyear is the year that matches with the weekOfWeekyear field.
  In the standard ISO8601 week algorithm, the first week of the year
  is that in which at least 4 days are in the year. As a result of this
  definition, day 1 of the first week may be in the previous year.
  The weekyear allows you to query the effective year for that day.
 @return the year of a week based year
 */
- (jint)getWeekyear;

/*!
 @brief Get the month of year field value.
 @return the month of year
 */
- (jint)getMonthOfYear;

/*!
 @brief Get the year field value.
 @return the year
 */
- (jint)getYear;

/*!
 @brief Get the year of era field value.
 @return the year of era
 */
- (jint)getYearOfEra;

/*!
 @brief Get the year of century field value.
 @return the year of century
 */
- (jint)getYearOfCentury;

/*!
 @brief Get the year of era field value.
 @return the year of era
 */
- (jint)getCenturyOfEra;

/*!
 @brief Get the era field value.
 @return the era
 */
- (jint)getEra;

/*!
 @brief Get the millis of second field value.
 @return the millis of second
 */
- (jint)getMillisOfSecond;

/*!
 @brief Get the millis of day field value.
 @return the millis of day
 */
- (jint)getMillisOfDay;

/*!
 @brief Get the second of minute field value.
 @return the second of minute
 */
- (jint)getSecondOfMinute;

/*!
 @brief Get the second of day field value.
 @return the second of day
 */
- (jint)getSecondOfDay;

/*!
 @brief Get the minute of hour field value.
 @return the minute of hour
 */
- (jint)getMinuteOfHour;

/*!
 @brief Get the minute of day field value.
 @return the minute of day
 */
- (jint)getMinuteOfDay;

/*!
 @brief Get the hour of day field value.
 @return the hour of day
 */
- (jint)getHourOfDay;

/*!
 @brief Get this object as a DateTime.
 <p>
  If the implementation of the interface is a DateTime, it is returned directly.
 @return a DateTime using the same millis
 */
- (OrgJodaTimeDateTime *)toDateTime;

/*!
 @brief Get this object as a MutableDateTime, always returning a new instance.
 @return a MutableDateTime using the same millis
 */
- (OrgJodaTimeMutableDateTime *)toMutableDateTime;

/*!
 @brief Output the instant using the specified format pattern.
 @param pattern pattern specification
 @throw IllegalArgumentExceptionif pattern is invalid
 - seealso: org.joda.time.format.DateTimeFormat
 */
- (NSString *)toStringWithNSString:(NSString *)pattern;

/*!
 @brief Output the instant using the specified format pattern.
 @param pattern pattern specification
 @param locale Locale to use, or null for default
 @throw IllegalArgumentExceptionif pattern is invalid
 - seealso: org.joda.time.format.DateTimeFormat
 */
- (NSString *)toStringWithNSString:(NSString *)pattern
                withJavaUtilLocale:(JavaUtilLocale *)locale;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeReadableDateTime)

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeReadableDateTime)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeReadableDateTime")
