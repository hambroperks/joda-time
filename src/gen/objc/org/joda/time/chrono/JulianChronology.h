//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/chrono/JulianChronology.java
//

#ifndef _OrgJodaTimeChronoJulianChronology_H_
#define _OrgJodaTimeChronoJulianChronology_H_

#include "J2ObjC_header.h"
#include "org/joda/time/chrono/BasicGJChronology.h"

@class OrgJodaTimeChronoAssembledChronology_Fields;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;

/**
 @brief Implements a pure proleptic Julian calendar system, which defines every fourth year as leap.
 This implementation follows the leap year rule strictly, even for dates before 8 CE, where leap years were actually irregular. In the Julian calendar, year zero does not exist: 1 BCE is followed by 1 CE. <p> Although the Julian calendar did not exist before 45 BCE, this chronology assumes it did, thus it is proleptic. This implementation also fixes the start of the year at January 1. <p> JulianChronology is thread-safe and immutable.
 @author Guy Allard
 @author Brian S O'Neill
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeChronoJulianChronology : OrgJodaTimeChronoBasicGJChronology

#pragma mark Public

/**
 @brief Gets an instance of the JulianChronology in the default time zone.
 @return a chronology in the default time zone
 */
+ (OrgJodaTimeChronoJulianChronology *)getInstance;

/**
 @brief Gets an instance of the JulianChronology in the given time zone.
 @param zone the time zone to get the chronology in, null is default
 @return a chronology in the specified time zone
 */
+ (OrgJodaTimeChronoJulianChronology *)getInstanceWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/**
 @brief Gets an instance of the JulianChronology in the given time zone.
 @param zone the time zone to get the chronology in, null is default
 @param minDaysInFirstWeek minimum number of days in first week of the year; default is 4
 @return a chronology in the specified time zone
 */
+ (OrgJodaTimeChronoJulianChronology *)getInstanceWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone
                                                                      withInt:(jint)minDaysInFirstWeek;

/**
 @brief Gets an instance of the JulianChronology.
 The time zone of the returned instance is UTC.
 @return a singleton UTC instance of the chronology
 */
+ (OrgJodaTimeChronoJulianChronology *)getInstanceUTC;

/**
 @brief Gets the Chronology in the UTC time zone.
 @return the chronology in UTC
 */
- (OrgJodaTimeChronology *)withUTC;

/**
 @brief Gets the Chronology in a specific time zone.
 @param zone the zone to get the chronology in, null is default
 @return the chronology
 */
- (OrgJodaTimeChronology *)withZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

#pragma mark Protected

- (void)assembleWithOrgJodaTimeChronoAssembledChronology_Fields:(OrgJodaTimeChronoAssembledChronology_Fields *)fields;

#pragma mark Package-Private

/**
 @brief Restricted constructor
 */
- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base
                                       withId:(id)param
                                      withInt:(jint)minDaysInFirstWeek;

+ (jint)adjustYearForSetWithInt:(jint)year;

- (jlong)calculateFirstDayOfYearMillisWithInt:(jint)year;

- (jlong)getApproxMillisAtEpochDividedByTwo;

- (jlong)getAverageMillisPerMonth;

- (jlong)getAverageMillisPerYear;

- (jlong)getAverageMillisPerYearDividedByTwo;

- (jlong)getDateMidnightMillisWithInt:(jint)year
                              withInt:(jint)monthOfYear
                              withInt:(jint)dayOfMonth;

- (jint)getMaxYear;

- (jint)getMinYear;

- (jboolean)isLeapYearWithInt:(jint)year;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeChronoJulianChronology)

FOUNDATION_EXPORT jint OrgJodaTimeChronoJulianChronology_adjustYearForSetWithInt_(jint year);

FOUNDATION_EXPORT OrgJodaTimeChronoJulianChronology *OrgJodaTimeChronoJulianChronology_getInstanceUTC();

FOUNDATION_EXPORT OrgJodaTimeChronoJulianChronology *OrgJodaTimeChronoJulianChronology_getInstance();

FOUNDATION_EXPORT OrgJodaTimeChronoJulianChronology *OrgJodaTimeChronoJulianChronology_getInstanceWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone);

FOUNDATION_EXPORT OrgJodaTimeChronoJulianChronology *OrgJodaTimeChronoJulianChronology_getInstanceWithOrgJodaTimeDateTimeZone_withInt_(OrgJodaTimeDateTimeZone *zone, jint minDaysInFirstWeek);

FOUNDATION_EXPORT void OrgJodaTimeChronoJulianChronology_initWithOrgJodaTimeChronology_withId_withInt_(OrgJodaTimeChronoJulianChronology *self, OrgJodaTimeChronology *base, id param, jint minDaysInFirstWeek);

FOUNDATION_EXPORT OrgJodaTimeChronoJulianChronology *new_OrgJodaTimeChronoJulianChronology_initWithOrgJodaTimeChronology_withId_withInt_(OrgJodaTimeChronology *base, id param, jint minDaysInFirstWeek) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoJulianChronology)

#endif // _OrgJodaTimeChronoJulianChronology_H_
