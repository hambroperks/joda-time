//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/chrono/IslamicChronology.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeChronoIslamicChronology")
#ifdef RESTRICT_OrgJodaTimeChronoIslamicChronology
#define INCLUDE_ALL_OrgJodaTimeChronoIslamicChronology 0
#else
#define INCLUDE_ALL_OrgJodaTimeChronoIslamicChronology 1
#endif
#undef RESTRICT_OrgJodaTimeChronoIslamicChronology

#if !defined (OrgJodaTimeChronoIslamicChronology_) && (INCLUDE_ALL_OrgJodaTimeChronoIslamicChronology || defined(INCLUDE_OrgJodaTimeChronoIslamicChronology))
#define OrgJodaTimeChronoIslamicChronology_

#define RESTRICT_OrgJodaTimeChronoBasicChronology 1
#define INCLUDE_OrgJodaTimeChronoBasicChronology 1
#include "org/joda/time/chrono/BasicChronology.h"

@class OrgJodaTimeChronoAssembledChronology_Fields;
@class OrgJodaTimeChronoIslamicChronology_LeapYearPatternType;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;

/*!
 @brief Implements the Islamic, or Hijri, calendar system using arithmetic rules.
 <p>
 This calendar is a lunar calendar with a shorter year than ISO.
 Year 1 in the Islamic calendar began on July 16, 622 CE (Julian), thus
 Islamic years do not begin at the same time as Julian years. This chronology
 is not proleptic, as it does not allow dates before the first Islamic year.
 <p>
 There are two basic forms of the Islamic calendar, the tabular and the
 observed. The observed form cannot easily be used by computers as it
 relies on human observation of the new moon.
 The tabular calendar, implemented here, is an arithmetical approximation
 of the observed form that follows relatively simple rules.
 <p>
 The tabular form of the calendar defines 12 months of alternately
 30 and 29 days. The last month is extended to 30 days in a leap year.
 Leap years occur according to a 30 year cycle. There are four recognised
 patterns of leap years in the 30 year cycle:
 @code

  Years 2, 5, 7, 10, 13, 15, 18, 21, 24, 26 & 29 - 15-based, used by Microsoft
  Years 2, 5, 7, 10, 13, 16, 18, 21, 24, 26 & 29 - 16-based, most commonly used
  Years 2, 5, 8, 10, 13, 16, 19, 21, 24, 27 & 29 - Indian
  Years 2, 5, 8, 11, 13, 16, 19, 21, 24, 27 & 30 - Habash al-Hasib
  
@endcode
 You can select which pattern to use via the factory methods, or use the
 default (16-based).
 <p>
 This implementation defines a day as midnight to midnight exactly as per
 the ISO chronology. This correct start of day is at sunset on the previous
 day, however this cannot readily be modelled and has been ignored.
 <p>
 IslamicChronology is thread-safe and immutable.
 - seealso: <a href="http://en.wikipedia.org/wiki/Islamic_calendar">Wikipedia</a>
 @author Stephen Colebourne
 @since 1.2
 */
@interface OrgJodaTimeChronoIslamicChronology : OrgJodaTimeChronoBasicChronology

#pragma mark Public

/*!
 @brief Checks if this chronology instance equals another.
 @param obj  the object to compare to
 @return true if equal
 @since 2.3
 */
- (jboolean)isEqual:(id)obj;

/*!
 @brief Gets an instance of the IslamicChronology in the default time zone.
 @return a chronology in the default time zone
 */
+ (OrgJodaTimeChronoIslamicChronology *)getInstance;

/*!
 @brief Gets an instance of the IslamicChronology in the given time zone.
 @param zone  the time zone to get the chronology in, null is default
 @return a chronology in the specified time zone
 */
+ (OrgJodaTimeChronoIslamicChronology *)getInstanceWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/*!
 @brief Gets an instance of the IslamicChronology in the given time zone.
 @param zone  the time zone to get the chronology in, null is default
 @param leapYears  the type defining the leap year pattern
 @return a chronology in the specified time zone
 */
+ (OrgJodaTimeChronoIslamicChronology *)getInstanceWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone
                    withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType:(OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *)leapYears;

/*!
 @brief Gets an instance of the IslamicChronology.
 The time zone of the returned instance is UTC.
 @return a singleton UTC instance of the chronology
 */
+ (OrgJodaTimeChronoIslamicChronology *)getInstanceUTC;

/*!
 @brief Gets the leap year pattern type.
 @return the pattern type
 */
- (OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *)getLeapYearPatternType;

/*!
 @brief A suitable hash code for the chronology.
 @return the hash code
 @since 1.6
 */
- (NSUInteger)hash;

/*!
 @brief Gets the Chronology in the UTC time zone.
 @return the chronology in UTC
 */
- (OrgJodaTimeChronology *)withUTC;

/*!
 @brief Gets the Chronology in a specific time zone.
 @param zone  the zone to get the chronology in, null is default
 @return the chronology
 */
- (OrgJodaTimeChronology *)withZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

#pragma mark Protected

- (void)assembleWithOrgJodaTimeChronoAssembledChronology_Fields:(OrgJodaTimeChronoAssembledChronology_Fields *)fields;

#pragma mark Package-Private

/*!
 @brief Restricted constructor.
 */
- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base
                                       withId:(id)param
withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType:(OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *)leapYears;

- (jlong)calculateFirstDayOfYearMillisWithInt:(jint)year;

- (jlong)getApproxMillisAtEpochDividedByTwo;

- (jlong)getAverageMillisPerMonth;

- (jlong)getAverageMillisPerYear;

- (jlong)getAverageMillisPerYearDividedByTwo;

- (jint)getDayOfMonthWithLong:(jlong)millis;

- (jint)getDaysInMonthMax;

- (jint)getDaysInMonthMaxWithInt:(jint)month;

- (jint)getDaysInYearWithInt:(jint)year;

- (jint)getDaysInYearMax;

- (jint)getDaysInYearMonthWithInt:(jint)year
                          withInt:(jint)month;

- (jint)getMaxYear;

- (jint)getMinYear;

- (jint)getMonthOfYearWithLong:(jlong)millis
                       withInt:(jint)year;

- (jlong)getTotalMillisByYearMonthWithInt:(jint)year
                                  withInt:(jint)month;

- (jint)getYearWithLong:(jlong)instant;

- (jlong)getYearDifferenceWithLong:(jlong)minuendInstant
                          withLong:(jlong)subtrahendInstant;

- (jboolean)isLeapYearWithInt:(jint)year;

- (jlong)setYearWithLong:(jlong)instant
                 withInt:(jint)year;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeChronoIslamicChronology)

/*!
 @brief Constant value for 'Anno Hegirae', equivalent
 to the value returned for AD/CE.
 */
inline jint OrgJodaTimeChronoIslamicChronology_get_AH();
#define OrgJodaTimeChronoIslamicChronology_AH 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeChronoIslamicChronology, AH, jint)

/*!
 @brief Leap year 15-based pattern.
 */
inline OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *OrgJodaTimeChronoIslamicChronology_get_LEAP_YEAR_15_BASED();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_15_BASED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeChronoIslamicChronology, LEAP_YEAR_15_BASED, OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *)

/*!
 @brief Leap year 16-based pattern.
 */
inline OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *OrgJodaTimeChronoIslamicChronology_get_LEAP_YEAR_16_BASED();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_16_BASED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeChronoIslamicChronology, LEAP_YEAR_16_BASED, OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *)

/*!
 @brief Leap year Indian pattern.
 */
inline OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *OrgJodaTimeChronoIslamicChronology_get_LEAP_YEAR_INDIAN();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_INDIAN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeChronoIslamicChronology, LEAP_YEAR_INDIAN, OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *)

/*!
 @brief Leap year Habash al-Hasib pattern.
 */
inline OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *OrgJodaTimeChronoIslamicChronology_get_LEAP_YEAR_HABASH_AL_HASIB();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_HABASH_AL_HASIB;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeChronoIslamicChronology, LEAP_YEAR_HABASH_AL_HASIB, OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *)

FOUNDATION_EXPORT OrgJodaTimeChronoIslamicChronology *OrgJodaTimeChronoIslamicChronology_getInstanceUTC();

FOUNDATION_EXPORT OrgJodaTimeChronoIslamicChronology *OrgJodaTimeChronoIslamicChronology_getInstance();

FOUNDATION_EXPORT OrgJodaTimeChronoIslamicChronology *OrgJodaTimeChronoIslamicChronology_getInstanceWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone);

FOUNDATION_EXPORT OrgJodaTimeChronoIslamicChronology *OrgJodaTimeChronoIslamicChronology_getInstanceWithOrgJodaTimeDateTimeZone_withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType_(OrgJodaTimeDateTimeZone *zone, OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *leapYears);

FOUNDATION_EXPORT void OrgJodaTimeChronoIslamicChronology_initWithOrgJodaTimeChronology_withId_withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType_(OrgJodaTimeChronoIslamicChronology *self, OrgJodaTimeChronology *base, id param, OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *leapYears);

FOUNDATION_EXPORT OrgJodaTimeChronoIslamicChronology *new_OrgJodaTimeChronoIslamicChronology_initWithOrgJodaTimeChronology_withId_withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType_(OrgJodaTimeChronology *base, id param, OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *leapYears) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeChronoIslamicChronology *create_OrgJodaTimeChronoIslamicChronology_initWithOrgJodaTimeChronology_withId_withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType_(OrgJodaTimeChronology *base, id param, OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *leapYears);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoIslamicChronology)

#endif

#if !defined (OrgJodaTimeChronoIslamicChronology_LeapYearPatternType_) && (INCLUDE_ALL_OrgJodaTimeChronoIslamicChronology || defined(INCLUDE_OrgJodaTimeChronoIslamicChronology_LeapYearPatternType))
#define OrgJodaTimeChronoIslamicChronology_LeapYearPatternType_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

/*!
 @brief Opaque object describing a leap year pattern for the Islamic Chronology.
 @since 1.2
 */
@interface OrgJodaTimeChronoIslamicChronology_LeapYearPatternType : NSObject < JavaIoSerializable > {
 @public
  /*!
   @brief The index.
   */
  jbyte index_;
  /*!
   @brief The leap year pattern, a bit-based 1=true pattern.
   */
  jint pattern_;
}

#pragma mark Public

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

#pragma mark Package-Private

/*!
 @brief Constructor.
 This constructor takes a bit pattern where bits 0-29 correspond
 to years 0-29 in the 30 year Islamic cycle of years. This allows
 a highly efficient lookup by bit-matching.
 @param index  the index
 @param pattern  the bit pattern
 */
- (instancetype)initWithInt:(jint)index
                    withInt:(jint)pattern;

/*!
 @brief Is the year a leap year.
 @param year  the year to query
 @return true if leap
 */
- (jboolean)isLeapYearWithInt:(jint)year;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeChronoIslamicChronology_LeapYearPatternType)

FOUNDATION_EXPORT void OrgJodaTimeChronoIslamicChronology_LeapYearPatternType_initWithInt_withInt_(OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *self, jint index, jint pattern);

FOUNDATION_EXPORT OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *new_OrgJodaTimeChronoIslamicChronology_LeapYearPatternType_initWithInt_withInt_(jint index, jint pattern) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *create_OrgJodaTimeChronoIslamicChronology_LeapYearPatternType_initWithInt_withInt_(jint index, jint pattern);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoIslamicChronology_LeapYearPatternType)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeChronoIslamicChronology")
