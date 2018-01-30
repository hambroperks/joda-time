//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/chrono/LimitChronology.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeChronoLimitChronology")
#ifdef RESTRICT_OrgJodaTimeChronoLimitChronology
#define INCLUDE_ALL_OrgJodaTimeChronoLimitChronology 0
#else
#define INCLUDE_ALL_OrgJodaTimeChronoLimitChronology 1
#endif
#undef RESTRICT_OrgJodaTimeChronoLimitChronology

#if !defined (OrgJodaTimeChronoLimitChronology_) && (INCLUDE_ALL_OrgJodaTimeChronoLimitChronology || defined(INCLUDE_OrgJodaTimeChronoLimitChronology))
#define OrgJodaTimeChronoLimitChronology_

#define RESTRICT_OrgJodaTimeChronoAssembledChronology 1
#define INCLUDE_OrgJodaTimeChronoAssembledChronology 1
#include "org/joda/time/chrono/AssembledChronology.h"

@class OrgJodaTimeChronoAssembledChronology_Fields;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTime;
@class OrgJodaTimeDateTimeZone;
@protocol OrgJodaTimeReadableDateTime;

/*!
 @brief Wraps another Chronology to impose limits on the range of instants that
  the fields within a Chronology may support.The limits are applied to both
  DateTimeFields and DurationFields.
 <p>
  Methods in DateTimeField and DurationField throw an IllegalArgumentException
  whenever given an input instant that is outside the limits or when an
  attempt is made to move an instant outside the limits. 
 <p>
  LimitChronology is thread-safe and immutable.
 @author Brian S O'Neill
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeChronoLimitChronology : OrgJodaTimeChronoAssembledChronology {
 @public
  OrgJodaTimeDateTime *iLowerLimit_;
  OrgJodaTimeDateTime *iUpperLimit_;
}

#pragma mark Public

/*!
 @brief A limit chronology is only equal to a limit chronology with the
  same base chronology and limits.
 @param obj the object to compare to
 @return true if equal
 @since 1.4
 */
- (jboolean)isEqual:(id)obj;

- (jlong)getDateTimeMillisWithInt:(jint)year
                          withInt:(jint)monthOfYear
                          withInt:(jint)dayOfMonth
                          withInt:(jint)millisOfDay;

- (jlong)getDateTimeMillisWithInt:(jint)year
                          withInt:(jint)monthOfYear
                          withInt:(jint)dayOfMonth
                          withInt:(jint)hourOfDay
                          withInt:(jint)minuteOfHour
                          withInt:(jint)secondOfMinute
                          withInt:(jint)millisOfSecond;

- (jlong)getDateTimeMillisWithLong:(jlong)instant
                           withInt:(jint)hourOfDay
                           withInt:(jint)minuteOfHour
                           withInt:(jint)secondOfMinute
                           withInt:(jint)millisOfSecond;

/*!
 @brief Wraps another chronology, with datetime limits.When withUTC or
  withZone is called, the returned LimitChronology instance has
  the same limits, except they are time zone adjusted.
 @param base base chronology to wrap
 @param lowerLimit inclusive lower limit, or null if none
 @param upperLimit exclusive upper limit, or null if none
 @throw IllegalArgumentExceptionif chronology is null or limits are invalid
 */
+ (OrgJodaTimeChronoLimitChronology *)getInstanceWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base
                                           withOrgJodaTimeReadableDateTime:(id<OrgJodaTimeReadableDateTime>)lowerLimit
                                           withOrgJodaTimeReadableDateTime:(id<OrgJodaTimeReadableDateTime>)upperLimit;

/*!
 @brief Returns the inclusive lower limit instant.
 @return lower limit
 */
- (OrgJodaTimeDateTime *)getLowerLimit;

/*!
 @brief Returns the inclusive upper limit instant.
 @return upper limit
 */
- (OrgJodaTimeDateTime *)getUpperLimit;

/*!
 @brief A suitable hashcode for the chronology.
 @return the hashcode
 @since 1.4
 */
- (NSUInteger)hash;

/*!
 @brief A debugging string for the chronology.
 @return the debugging string
 */
- (NSString *)description;

/*!
 @brief If this LimitChronology is already UTC, then this is
  returned.Otherwise, a new instance is returned, with the limits
  adjusted to the new time zone.
 */
- (OrgJodaTimeChronology *)withUTC;

/*!
 @brief If this LimitChronology has the same time zone as the one given, then
  this is returned.Otherwise, a new instance is returned, with the limits
  adjusted to the new time zone.
 */
- (OrgJodaTimeChronology *)withZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

#pragma mark Protected

- (void)assembleWithOrgJodaTimeChronoAssembledChronology_Fields:(OrgJodaTimeChronoAssembledChronology_Fields *)fields;

#pragma mark Package-Private

- (void)checkLimitsWithLong:(jlong)instant
               withNSString:(NSString *)desc;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)arg0
                                       withId:(id)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeChronoLimitChronology)

J2OBJC_FIELD_SETTER(OrgJodaTimeChronoLimitChronology, iLowerLimit_, OrgJodaTimeDateTime *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoLimitChronology, iUpperLimit_, OrgJodaTimeDateTime *)

FOUNDATION_EXPORT OrgJodaTimeChronoLimitChronology *OrgJodaTimeChronoLimitChronology_getInstanceWithOrgJodaTimeChronology_withOrgJodaTimeReadableDateTime_withOrgJodaTimeReadableDateTime_(OrgJodaTimeChronology *base, id<OrgJodaTimeReadableDateTime> lowerLimit, id<OrgJodaTimeReadableDateTime> upperLimit);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoLimitChronology)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeChronoLimitChronology")
