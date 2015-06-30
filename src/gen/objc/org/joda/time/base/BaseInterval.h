//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/base/BaseInterval.java
//

#ifndef _OrgJodaTimeBaseBaseInterval_H_
#define _OrgJodaTimeBaseBaseInterval_H_

#include "J2ObjC_header.h"
#include "java/io/Serializable.h"
#include "org/joda/time/ReadableInterval.h"
#include "org/joda/time/base/AbstractInterval.h"

@class OrgJodaTimeChronology;
@protocol OrgJodaTimeReadableDuration;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadablePeriod;

/**
 @brief BaseInterval is an abstract implementation of ReadableInterval that stores data in two <code>long</code> millisecond fields.
 <p> This class should generally not be used directly by API users. The ReadableInterval interface should be used when different kinds of interval objects are to be referenced. <p> BaseInterval subclasses may be mutable and not thread-safe.
 @author Brian S O'Neill
 @author Sean Geoghegan
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeBaseBaseInterval : OrgJodaTimeBaseAbstractInterval < OrgJodaTimeReadableInterval, JavaIoSerializable >

#pragma mark Public

/**
 @brief Gets the chronology of this interval.
 @return the chronology
 */
- (OrgJodaTimeChronology *)getChronology;

/**
 @brief Gets the end of this time interval which is exclusive.
 @return the end of the time interval, millisecond instant from 1970-01-01T00:00:00Z
 */
- (jlong)getEndMillis;

/**
 @brief Gets the start of this time interval which is inclusive.
 @return the start of the time interval, millisecond instant from 1970-01-01T00:00:00Z
 */
- (jlong)getStartMillis;

#pragma mark Protected

/**
 @brief Constructs an interval from a start and end instant.
 @param startInstant start of this interval, as milliseconds from 1970-01-01T00:00:00Z.
 @param endInstant end of this interval, as milliseconds from 1970-01-01T00:00:00Z.
 @param chrono the chronology to use, null is ISO default
 @throws IllegalArgumentException if the end is before the start
 */
- (instancetype)initWithLong:(jlong)startInstant
                    withLong:(jlong)endInstant
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/**
 @brief Constructs a time interval converting or copying from another object that describes an interval.
 @param interval the time interval to copy
 @param chrono the chronology to use, null means let converter decide
 @throws IllegalArgumentException if the interval is invalid
 */
- (instancetype)initWithId:(id)interval
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/**
 @brief Constructs an interval from a millisecond duration and an end instant.
 @param duration the duration of this interval, null means zero length
 @param end end of this interval, null means now
 @throws IllegalArgumentException if the end is before the start
 @throws ArithmeticException if the start instant exceeds the capacity of a long
 */
- (instancetype)initWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration
                     withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

/**
 @brief Constructs an interval from a start instant and a duration.
 @param start start of this interval, null means now
 @param duration the duration of this interval, null means zero length
 @throws IllegalArgumentException if the end is before the start
 @throws ArithmeticException if the end instant exceeds the capacity of a long
 */
- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                   withOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration;

/**
 @brief Constructs an interval from a start and end instant.
 @param start start of this interval, null means now
 @param end end of this interval, null means now
 @throws IllegalArgumentException if the end is before the start
 */
- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                    withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

/**
 @brief Constructs an interval from a start instant and a time period.
 <p> When forming the interval, the chronology from the instant is used if present, otherwise the chronology of the period is used.
 @param start start of this interval, null means now
 @param period the period of this interval, null means zero length
 @throws IllegalArgumentException if the end is before the start
 @throws ArithmeticException if the end instant exceeds the capacity of a long
 */
- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                     withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/**
 @brief Constructs an interval from a time period and an end instant.
 <p> When forming the interval, the chronology from the instant is used if present, otherwise the chronology of the period is used.
 @param period the period of this interval, null means zero length
 @param end end of this interval, null means now
 @throws IllegalArgumentException if the end is before the start
 @throws ArithmeticException if the start instant exceeds the capacity of a long
 */
- (instancetype)initWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                   withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

/**
 @brief Sets this interval from two millisecond instants and a chronology.
 @param startInstant the start of the time interval
 @param endInstant the start of the time interval
 @param chrono the chronology, not null
 @throws IllegalArgumentException if the end is before the start
 */
- (void)setIntervalWithLong:(jlong)startInstant
                   withLong:(jlong)endInstant
  withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeBaseBaseInterval)

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseInterval_initWithLong_withLong_withOrgJodaTimeChronology_(OrgJodaTimeBaseBaseInterval *self, jlong startInstant, jlong endInstant, OrgJodaTimeChronology *chrono);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(OrgJodaTimeBaseBaseInterval *self, id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableDuration_(OrgJodaTimeBaseBaseInterval *self, id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableDuration> duration);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadableDuration_withOrgJodaTimeReadableInstant_(OrgJodaTimeBaseBaseInterval *self, id<OrgJodaTimeReadableDuration> duration, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadablePeriod_(OrgJodaTimeBaseBaseInterval *self, id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadablePeriod> period);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadablePeriod_withOrgJodaTimeReadableInstant_(OrgJodaTimeBaseBaseInterval *self, id<OrgJodaTimeReadablePeriod> period, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseInterval_initWithId_withOrgJodaTimeChronology_(OrgJodaTimeBaseBaseInterval *self, id interval, OrgJodaTimeChronology *chrono);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeBaseBaseInterval)

#endif // _OrgJodaTimeBaseBaseInterval_H_
