//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/Joda-Time/src/main/java/org/joda/time/chrono/BasicFixedMonthChronology.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeChronoBasicFixedMonthChronology")
#ifdef RESTRICT_OrgJodaTimeChronoBasicFixedMonthChronology
#define INCLUDE_ALL_OrgJodaTimeChronoBasicFixedMonthChronology 0
#else
#define INCLUDE_ALL_OrgJodaTimeChronoBasicFixedMonthChronology 1
#endif
#undef RESTRICT_OrgJodaTimeChronoBasicFixedMonthChronology

#if !defined (OrgJodaTimeChronoBasicFixedMonthChronology_) && (INCLUDE_ALL_OrgJodaTimeChronoBasicFixedMonthChronology || defined(INCLUDE_OrgJodaTimeChronoBasicFixedMonthChronology))
#define OrgJodaTimeChronoBasicFixedMonthChronology_

#define RESTRICT_OrgJodaTimeChronoBasicChronology 1
#define INCLUDE_OrgJodaTimeChronoBasicChronology 1
#include "org/joda/time/chrono/BasicChronology.h"

@class OrgJodaTimeChronology;

/*!
 @brief Abstract implementation of a calendar system based around fixed length months.
 <p>
 As the month length is fixed various calculations can be optimised.
 This implementation assumes any additional days after twelve
 months fall into a thirteenth month.
 <p>
 BasicFixedMonthChronology is thread-safe and immutable, and all
 subclasses must be as well.
 @author Brian S O'Neill
 @author Stephen Colebourne
 @since 1.2, refactored from CopticChronology
 */
@interface OrgJodaTimeChronoBasicFixedMonthChronology : OrgJodaTimeChronoBasicChronology

#pragma mark Package-Private

/*!
 @brief Restricted constructor.
 @param base  the base chronology
 @param param  the init parameter
 @param minDaysInFirstWeek  the minimum days in the first week
 */
- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base
                                       withId:(id)param
                                      withInt:(jint)minDaysInFirstWeek;

- (jlong)getAverageMillisPerMonth;

- (jlong)getAverageMillisPerYear;

- (jlong)getAverageMillisPerYearDividedByTwo;

- (jint)getDayOfMonthWithLong:(jlong)millis;

- (jint)getDaysInMonthMax;

- (jint)getDaysInMonthMaxWithInt:(jint)month;

- (jint)getDaysInYearMonthWithInt:(jint)year
                          withInt:(jint)month;

- (jint)getMaxMonth;

- (jint)getMonthOfYearWithLong:(jlong)millis;

- (jint)getMonthOfYearWithLong:(jlong)millis
                       withInt:(jint)year;

- (jlong)getTotalMillisByYearMonthWithInt:(jint)year
                                  withInt:(jint)month;

- (jlong)getYearDifferenceWithLong:(jlong)minuendInstant
                          withLong:(jlong)subtrahendInstant;

- (jboolean)isLeapYearWithInt:(jint)year;

- (jlong)setYearWithLong:(jlong)instant
                 withInt:(jint)year;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeChronoBasicFixedMonthChronology)

/*!
 @brief The length of the month.
 */
inline jint OrgJodaTimeChronoBasicFixedMonthChronology_get_MONTH_LENGTH();
#define OrgJodaTimeChronoBasicFixedMonthChronology_MONTH_LENGTH 30
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeChronoBasicFixedMonthChronology, MONTH_LENGTH, jint)

/*!
 @brief The typical millis per year.
 */
inline jlong OrgJodaTimeChronoBasicFixedMonthChronology_get_MILLIS_PER_YEAR();
#define OrgJodaTimeChronoBasicFixedMonthChronology_MILLIS_PER_YEAR 31557600000LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeChronoBasicFixedMonthChronology, MILLIS_PER_YEAR, jlong)

/*!
 @brief The length of the month in millis.
 */
inline jlong OrgJodaTimeChronoBasicFixedMonthChronology_get_MILLIS_PER_MONTH();
#define OrgJodaTimeChronoBasicFixedMonthChronology_MILLIS_PER_MONTH 2592000000LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeChronoBasicFixedMonthChronology, MILLIS_PER_MONTH, jlong)

FOUNDATION_EXPORT void OrgJodaTimeChronoBasicFixedMonthChronology_initWithOrgJodaTimeChronology_withId_withInt_(OrgJodaTimeChronoBasicFixedMonthChronology *self, OrgJodaTimeChronology *base, id param, jint minDaysInFirstWeek);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoBasicFixedMonthChronology)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeChronoBasicFixedMonthChronology")
