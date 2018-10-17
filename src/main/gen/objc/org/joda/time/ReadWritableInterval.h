//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/ReadWritableInterval.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeReadWritableInterval")
#ifdef RESTRICT_OrgJodaTimeReadWritableInterval
#define INCLUDE_ALL_OrgJodaTimeReadWritableInterval 0
#else
#define INCLUDE_ALL_OrgJodaTimeReadWritableInterval 1
#endif
#undef RESTRICT_OrgJodaTimeReadWritableInterval

#if !defined (OrgJodaTimeReadWritableInterval_) && (INCLUDE_ALL_OrgJodaTimeReadWritableInterval || defined(INCLUDE_OrgJodaTimeReadWritableInterval))
#define OrgJodaTimeReadWritableInterval_

#define RESTRICT_OrgJodaTimeReadableInterval 1
#define INCLUDE_OrgJodaTimeReadableInterval 1
#include "org/joda/time/ReadableInterval.h"

@class OrgJodaTimeChronology;
@protocol OrgJodaTimeReadableDuration;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadablePeriod;

/*!
 @brief Writable interface for an interval.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@protocol OrgJodaTimeReadWritableInterval < OrgJodaTimeReadableInterval, JavaObject >

/*!
 @brief Sets this interval from two millisecond instants.
 @param startInstant  the start of the time interval
 @param endInstant  the start of the time interval
 @throws IllegalArgumentException if the end is before the start
 */
- (void)setIntervalWithLong:(jlong)startInstant
                   withLong:(jlong)endInstant;

/*!
 @brief Sets this interval to be the same as another.
 @param interval  the interval to copy
 @throws IllegalArgumentException if the end is before the start
 */
- (void)setIntervalWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval;

/*!
 @brief Sets this interval from two instants.
 @param startInstant  the start of the time interval
 @param endInstant  the start of the time interval
 @throws IllegalArgumentException if the end is before the start
 */
- (void)setIntervalWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)startInstant
                   withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)endInstant;

/*!
 @brief Sets the chronology of this time interval.
 @param chrono  the chronology to use, null means ISO default
 */
- (void)setChronologyWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/*!
 @brief Sets the start of this time interval.
 @param millisInstant  the start of the time interval,
 millisecond instant from 1970-01-01T00:00:00Z
 @throws IllegalArgumentException if the end is before the start
 */
- (void)setStartMillisWithLong:(jlong)millisInstant;

/*!
 @brief Sets the start of this time interval as an Instant.
 @param instant  the start of the time interval
 @throws IllegalArgumentException if the end is before the start
 */
- (void)setStartWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

/*!
 @brief Sets the end of this time interval.
 @param millisInstant  the end of the time interval,
 millisecond instant from 1970-01-01T00:00:00Z
 @throws IllegalArgumentException if the end is before the start
 */
- (void)setEndMillisWithLong:(jlong)millisInstant;

/*!
 @brief Sets the end of this time interval as an Instant.
 @param instant  the end of the time interval
 @throws IllegalArgumentException if the end is before the start
 */
- (void)setEndWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

/*!
 @brief Sets the duration of this time interval, preserving the start instant.
 @param duration  new duration for interval
 @throws IllegalArgumentException if the end is before the start
 @throws ArithmeticException if the end instant exceeds the capacity of a long
 */
- (void)setDurationAfterStartWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration;

/*!
 @brief Sets the duration of this time interval, preserving the end instant.
 @param duration  new duration for interval
 @throws IllegalArgumentException if the end is before the start
 @throws ArithmeticException if the start instant exceeds the capacity of a long
 */
- (void)setDurationBeforeEndWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration;

/*!
 @brief Sets the period of this time interval, preserving the start instant.
 @param period  new period for interval, null means zero length
 @throws IllegalArgumentException if the end is before the start
 @throws ArithmeticException if the end instant exceeds the capacity of a long
 */
- (void)setPeriodAfterStartWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/*!
 @brief Sets the period of this time interval, preserving the end instant.
 @param period  new period for interval, null means zero length
 @throws IllegalArgumentException if the end is before the start
 @throws ArithmeticException if the start instant exceeds the capacity of a long
 */
- (void)setPeriodBeforeEndWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeReadWritableInterval)

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeReadWritableInterval)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeReadWritableInterval")
