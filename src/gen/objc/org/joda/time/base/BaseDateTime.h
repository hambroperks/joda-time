//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/base/BaseDateTime.java
//

#ifndef _OrgJodaTimeBaseBaseDateTime_H_
#define _OrgJodaTimeBaseBaseDateTime_H_

#include "J2ObjC_header.h"
#include "java/io/Serializable.h"
#include "org/joda/time/ReadableDateTime.h"
#include "org/joda/time/base/AbstractDateTime.h"

@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;

/**
 @brief BaseDateTime is an abstract implementation of ReadableDateTime that stores data in <code>long</code> and <code>Chronology</code> fields.
 <p> This class should generally not be used directly by API users. The ReadableDateTime interface should be used when different kinds of date/time objects are to be referenced. <p> BaseDateTime subclasses may be mutable and not thread-safe.
 @author Stephen Colebourne
 @author Kandarp Shah
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeBaseBaseDateTime : OrgJodaTimeBaseAbstractDateTime < OrgJodaTimeReadableDateTime, JavaIoSerializable >

#pragma mark Public

/**
 @brief Constructs an instance set to the current system millisecond time using <code>ISOChronology</code> in the default time zone.
 */
- (instancetype)init;

/**
 @brief Constructs an instance set to the current system millisecond time using the specified chronology.
 <p> If the chronology is null, <code>ISOChronology</code> in the default time zone is used.
 @param chronology the chronology, null means ISOChronology in default zone
 */
- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Constructs an instance set to the current system millisecond time using <code>ISOChronology</code> in the specified time zone.
 <p> If the specified time zone is null, the default zone is used.
 @param zone the time zone, null means default zone
 */
- (instancetype)initWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

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
- (instancetype)initWithInt:(jint)year
                    withInt:(jint)monthOfYear
                    withInt:(jint)dayOfMonth
                    withInt:(jint)hourOfDay
                    withInt:(jint)minuteOfHour
                    withInt:(jint)secondOfMinute
                    withInt:(jint)millisOfSecond;

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
- (instancetype)initWithInt:(jint)year
                    withInt:(jint)monthOfYear
                    withInt:(jint)dayOfMonth
                    withInt:(jint)hourOfDay
                    withInt:(jint)minuteOfHour
                    withInt:(jint)secondOfMinute
                    withInt:(jint)millisOfSecond
  withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

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
- (instancetype)initWithInt:(jint)year
                    withInt:(jint)monthOfYear
                    withInt:(jint)dayOfMonth
                    withInt:(jint)hourOfDay
                    withInt:(jint)minuteOfHour
                    withInt:(jint)secondOfMinute
                    withInt:(jint)millisOfSecond
withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/**
 @brief Constructs an instance set to the milliseconds from 1970-01-01T00:00:00Z using <code>ISOChronology</code> in the default time zone.
 @param instant the milliseconds from 1970-01-01T00:00:00Z
 */
- (instancetype)initWithLong:(jlong)instant;

/**
 @brief Constructs an instance set to the milliseconds from 1970-01-01T00:00:00Z using the specified chronology.
 <p> If the chronology is null, <code>ISOChronology</code> in the default time zone is used.
 @param instant the milliseconds from 1970-01-01T00:00:00Z
 @param chronology the chronology, null means ISOChronology in default zone
 */
- (instancetype)initWithLong:(jlong)instant
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Constructs an instance set to the milliseconds from 1970-01-01T00:00:00Z using <code>ISOChronology</code> in the specified time zone.
 <p> If the specified time zone is null, the default zone is used.
 @param instant the milliseconds from 1970-01-01T00:00:00Z
 @param zone the time zone, null means default zone
 */
- (instancetype)initWithLong:(jlong)instant
 withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/**
 @brief Constructs an instance from an Object that represents a datetime, using the specified chronology.
 <p> If the chronology is null, ISO in the default time zone is used. <p> The recognised object types are defined in org.joda.time.convert.ConverterManager ConverterManager and include ReadableInstant, String, Calendar and Date.
 @param instant the datetime object
 @param chronology the chronology
 @throws IllegalArgumentException if the instant is invalid
 */
- (instancetype)initWithId:(id)instant
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Constructs an instance from an Object that represents a datetime, forcing the time zone to that specified.
 <p> If the object contains no chronology, <code>ISOChronology</code> is used. If the specified time zone is null, the default zone is used. <p> The recognised object types are defined in org.joda.time.convert.ConverterManager ConverterManager and include ReadableInstant, String, Calendar and Date.
 @param instant the datetime object
 @param zone the time zone
 @throws IllegalArgumentException if the instant is invalid
 */
- (instancetype)initWithId:(id)instant
withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/**
 @brief Gets the chronology of the datetime.
 @return the Chronology that the datetime is using
 */
- (OrgJodaTimeChronology *)getChronology;

/**
 @brief Gets the milliseconds of the datetime instant from the Java epoch of 1970-01-01T00:00:00Z.
 @return the number of milliseconds since 1970-01-01T00:00:00Z
 */
- (jlong)getMillis;

#pragma mark Protected

/**
 @brief Checks the specified chronology before storing it, potentially altering it.
 This method must not access any instance variables. <p> This implementation converts nulls to ISOChronology in the default zone.
 @param chronology the chronology to use, may be null
 @return the chronology to store in this datetime, not null
 */
- (OrgJodaTimeChronology *)checkChronologyWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Checks the specified instant before storing it, potentially altering it.
 This method must not access any instance variables. <p> This implementation simply returns the instant.
 @param instant the milliseconds from 1970-01-01T00:00:00Z to round
 @param chronology the chronology to use, not null
 @return the instant to store in this datetime
 */
- (jlong)checkInstantWithLong:(jlong)instant
    withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Sets the chronology of the datetime.
 <p> All changes to the chronology field occurs via this method. Override and block this method to make a subclass immutable.
 @param chronology the chronology to set
 */
- (void)setChronologyWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Sets the milliseconds of the datetime.
 <p> All changes to the millisecond field occurs via this method. Override and block this method to make a subclass immutable.
 @param instant the milliseconds since 1970-01-01T00:00:00Z to set the datetime to
 */
- (void)setMillisWithLong:(jlong)instant;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeBaseBaseDateTime)

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_init(OrgJodaTimeBaseBaseDateTime *self);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeBaseBaseDateTime *self, OrgJodaTimeDateTimeZone *zone);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithOrgJodaTimeChronology_(OrgJodaTimeBaseBaseDateTime *self, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithLong_(OrgJodaTimeBaseBaseDateTime *self, jlong instant);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithLong_withOrgJodaTimeDateTimeZone_(OrgJodaTimeBaseBaseDateTime *self, jlong instant, OrgJodaTimeDateTimeZone *zone);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithLong_withOrgJodaTimeChronology_(OrgJodaTimeBaseBaseDateTime *self, jlong instant, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithId_withOrgJodaTimeDateTimeZone_(OrgJodaTimeBaseBaseDateTime *self, id instant, OrgJodaTimeDateTimeZone *zone);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithId_withOrgJodaTimeChronology_(OrgJodaTimeBaseBaseDateTime *self, id instant, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithInt_withInt_withInt_withInt_withInt_withInt_withInt_(OrgJodaTimeBaseBaseDateTime *self, jint year, jint monthOfYear, jint dayOfMonth, jint hourOfDay, jint minuteOfHour, jint secondOfMinute, jint millisOfSecond);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithInt_withInt_withInt_withInt_withInt_withInt_withInt_withOrgJodaTimeDateTimeZone_(OrgJodaTimeBaseBaseDateTime *self, jint year, jint monthOfYear, jint dayOfMonth, jint hourOfDay, jint minuteOfHour, jint secondOfMinute, jint millisOfSecond, OrgJodaTimeDateTimeZone *zone);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithInt_withInt_withInt_withInt_withInt_withInt_withInt_withOrgJodaTimeChronology_(OrgJodaTimeBaseBaseDateTime *self, jint year, jint monthOfYear, jint dayOfMonth, jint hourOfDay, jint minuteOfHour, jint secondOfMinute, jint millisOfSecond, OrgJodaTimeChronology *chronology);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeBaseBaseDateTime)

#endif // _OrgJodaTimeBaseBaseDateTime_H_
