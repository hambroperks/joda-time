//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/MutableInterval.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeMutableInterval")
#ifdef RESTRICT_OrgJodaTimeMutableInterval
#define INCLUDE_ALL_OrgJodaTimeMutableInterval 0
#else
#define INCLUDE_ALL_OrgJodaTimeMutableInterval 1
#endif
#undef RESTRICT_OrgJodaTimeMutableInterval

#if !defined (OrgJodaTimeMutableInterval_) && (INCLUDE_ALL_OrgJodaTimeMutableInterval || defined(INCLUDE_OrgJodaTimeMutableInterval))
#define OrgJodaTimeMutableInterval_

#define RESTRICT_OrgJodaTimeBaseBaseInterval 1
#define INCLUDE_OrgJodaTimeBaseBaseInterval 1
#include "org/joda/time/base/BaseInterval.h"

#define RESTRICT_OrgJodaTimeReadWritableInterval 1
#define INCLUDE_OrgJodaTimeReadWritableInterval 1
#include "org/joda/time/ReadWritableInterval.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class OrgJodaTimeChronology;
@protocol OrgJodaTimeReadableDuration;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadableInterval;
@protocol OrgJodaTimeReadablePeriod;

/*!
 @brief MutableInterval is the standard implementation of a mutable time interval.
 <p>
  A time interval represents a period of time between two instants.
  Intervals are inclusive of the start instant and exclusive of the end.
  The end instant is always greater than or equal to the start instant. 
 <p>
  Intervals have a fixed millisecond duration.
  This is the difference between the start and end instants.
  The duration is represented separately by <code>ReadableDuration</code>.
  As a result, intervals are not comparable.
  To compare the length of two intervals, you should compare their durations. 
 <p>
  An interval can also be converted to a <code>ReadablePeriod</code>.
  This represents the difference between the start and end points in terms of fields
  such as years and days. 
 <p>
  If performing significant calculations on an interval, it may be faster to
  convert an Interval object to a MutableInterval one. 
 <p>
  MutableInterval is mutable and not thread-safe, unless concurrent threads
  are not invoking mutator methods.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeMutableInterval : OrgJodaTimeBaseBaseInterval < OrgJodaTimeReadWritableInterval, NSCopying, JavaIoSerializable >

#pragma mark Public

/*!
 @brief Constructs a zero length time interval from 1970-01-01 to 1970-01-01.
 */
- (instancetype)init;

/*!
 @brief Constructs an interval from a start and end instant with the ISO default chronology.
 @param startInstant start of this interval, as milliseconds from 1970-01-01T00:00:00Z.
 @param endInstant end of this interval, as milliseconds from 1970-01-01T00:00:00Z.
 @throw IllegalArgumentExceptionif the end is before the start
 */
- (instancetype)initWithLong:(jlong)startInstant
                    withLong:(jlong)endInstant;

/*!
 @brief Constructs an interval from a start and end instant with a chronology.
 @param chronology the chronology to use, null is ISO default
 @param startInstant start of this interval, as milliseconds from 1970-01-01T00:00:00Z.
 @param endInstant end of this interval, as milliseconds from 1970-01-01T00:00:00Z.
 @throw IllegalArgumentExceptionif the end is before the start
 */
- (instancetype)initWithLong:(jlong)startInstant
                    withLong:(jlong)endInstant
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/*!
 @brief Constructs a time interval by converting or copying from another object.
 <p>
  The recognised object types are defined in 
 <code>ConverterManager</code> and
  include ReadableInterval and String.
  The String formats are described by <code>ISODateTimeFormat.dateTimeParser()</code>
  and <code>ISOPeriodFormat.standard()</code>, and may be 'datetime/datetime',
  'datetime/period' or 'period/datetime'.
 @param interval the time interval to copy
 @throw IllegalArgumentExceptionif the interval is invalid
 */
- (instancetype)initWithId:(id)interval;

/*!
 @brief Constructs a time interval by converting or copying from another object,
  overriding the chronology.
 <p>
  The recognised object types are defined in 
 <code>ConverterManager</code> and
  include ReadableInterval and String.
  The String formats are described by <code>ISODateTimeFormat.dateTimeParser()</code>
  and <code>ISOPeriodFormat.standard()</code>, and may be 'datetime/datetime',
  'datetime/period' or 'period/datetime'.
 @param interval the time interval to copy
 @param chronology the chronology to use, null means ISO default
 @throw IllegalArgumentExceptionif the interval is invalid
 */
- (instancetype)initWithId:(id)interval
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/*!
 @brief Constructs an interval from a millisecond duration and an end instant.
 @param duration the duration of this interval, null means zero length
 @param end end of this interval, null means now
 @throw IllegalArgumentExceptionif the end is before the start
 @throw ArithmeticExceptionif the start instant exceeds the capacity of a long
 */
- (instancetype)initWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration
                     withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

/*!
 @brief Constructs an interval from a start instant and a duration.
 @param start start of this interval, null means now
 @param duration the duration of this interval, null means zero length
 @throw IllegalArgumentExceptionif the end is before the start
 @throw ArithmeticExceptionif the end instant exceeds the capacity of a long
 */
- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                   withOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration;

/*!
 @brief Constructs an interval from a start and end instant.
 <p>
  The chronology used is that of the start instant.
 @param start start of this interval, null means now
 @param end end of this interval, null means now
 @throw IllegalArgumentExceptionif the end is before the start
 */
- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                    withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

/*!
 @brief Constructs an interval from a start instant and a time period.
 <p>
  When forming the interval, the chronology from the instant is used
  if present, otherwise the chronology of the period is used.
 @param start start of this interval, null means now
 @param period the period of this interval, null means zero length
 @throw IllegalArgumentExceptionif the end is before the start
 @throw ArithmeticExceptionif the end instant exceeds the capacity of a long
 */
- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                     withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/*!
 @brief Constructs an interval from a time period and an end instant.
 <p>
  When forming the interval, the chronology from the instant is used
  if present, otherwise the chronology of the period is used.
 @param period the period of this interval, null means zero length
 @param end end of this interval, null means now
 @throw IllegalArgumentExceptionif the end is before the start
 @throw ArithmeticExceptionif the start instant exceeds the capacity of a long
 */
- (instancetype)initWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                   withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

/*!
 @brief Clone this object.
 @return a clone of this object.
 */
- (id)java_clone;

/*!
 @brief Clone this object without having to cast the returned object.
 @return a clone of the this object.
 */
- (OrgJodaTimeMutableInterval *)copy__ OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Parses a <code>MutableInterval</code> from the specified string.
 <p>
  The String formats are described by <code>ISODateTimeFormat.dateTimeParser()</code>
  and <code>ISOPeriodFormat.standard()</code>, and may be 'datetime/datetime',
  'datetime/period' or 'period/datetime'.
 @param str the string to parse, not null
 @since 2.0
 */
+ (OrgJodaTimeMutableInterval *)parseWithNSString:(NSString *)str;

/*!
 @brief Sets the chronology of this time interval.
 @param chrono the chronology to use, null means ISO default
 */
- (void)setChronologyWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/*!
 @brief Sets the duration of this time interval, preserving the start instant.
 @param duration new duration for interval
 @throw IllegalArgumentExceptionif the end is before the start
 @throw ArithmeticExceptionif the end instant exceeds the capacity of a long
 */
- (void)setDurationAfterStartWithLong:(jlong)duration;

/*!
 @brief Sets the duration of this time interval, preserving the start instant.
 @param duration new duration for interval, null means zero length
 @throw IllegalArgumentExceptionif the end is before the start
 @throw ArithmeticExceptionif the end instant exceeds the capacity of a long
 */
- (void)setDurationAfterStartWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration;

/*!
 @brief Sets the duration of this time interval, preserving the end instant.
 @param duration new duration for interval
 @throw IllegalArgumentExceptionif the end is before the start
 @throw ArithmeticExceptionif the start instant exceeds the capacity of a long
 */
- (void)setDurationBeforeEndWithLong:(jlong)duration;

/*!
 @brief Sets the duration of this time interval, preserving the end instant.
 @param duration new duration for interval, null means zero length
 @throw IllegalArgumentExceptionif the end is before the start
 @throw ArithmeticExceptionif the start instant exceeds the capacity of a long
 */
- (void)setDurationBeforeEndWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration;

/*!
 @brief Sets the end of this time interval as an Instant.
 @param end the end of the time interval, null means now
 @throw IllegalArgumentExceptionif the end is before the start
 */
- (void)setEndWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

/*!
 @brief Sets the end of this time interval.
 @param endInstant the end of the time interval,   millisecond instant from 1970-01-01T00:00:00Z
 @throw IllegalArgumentExceptionif the end is before the start
 */
- (void)setEndMillisWithLong:(jlong)endInstant;

/*!
 @brief Sets this interval from two millisecond instants retaining the chronology.
 @param startInstant the start of the time interval
 @param endInstant the start of the time interval
 @throw IllegalArgumentExceptionif the end is before the start
 */
- (void)setIntervalWithLong:(jlong)startInstant
                   withLong:(jlong)endInstant;

/*!
 @brief Sets this interval from two instants, replacing the chronology with
  that from the start instant.
 @param start the start of the time interval
 @param end the start of the time interval
 @throw IllegalArgumentExceptionif the end is before the start
 */
- (void)setIntervalWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                   withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

/*!
 @brief Sets this interval to be the same as another.
 @param interval the interval to copy
 @throw IllegalArgumentExceptionif the interval is null
 */
- (void)setIntervalWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval;

/*!
 @brief Sets the period of this time interval, preserving the start instant
  and using the ISOChronology in the default zone for calculations.
 @param period new period for interval, null means zero length
 @throw IllegalArgumentExceptionif the end is before the start
 @throw ArithmeticExceptionif the end instant exceeds the capacity of a long
 */
- (void)setPeriodAfterStartWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/*!
 @brief Sets the period of this time interval, preserving the end instant
  and using the ISOChronology in the default zone for calculations.
 @param period new period for interval, null means zero length
 @throw IllegalArgumentExceptionif the end is before the start
 @throw ArithmeticExceptionif the start instant exceeds the capacity of a long
 */
- (void)setPeriodBeforeEndWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/*!
 @brief Sets the start of this time interval as an Instant.
 @param start the start of the time interval, null means now
 @throw IllegalArgumentExceptionif the end is before the start
 */
- (void)setStartWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start;

/*!
 @brief Sets the start of this time interval.
 @param startInstant the start of the time interval,   millisecond instant from 1970-01-01T00:00:00Z
 @throw IllegalArgumentExceptionif the end is before the start
 */
- (void)setStartMillisWithLong:(jlong)startInstant;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeMutableInterval)

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *OrgJodaTimeMutableInterval_parseWithNSString_(NSString *str);

FOUNDATION_EXPORT void OrgJodaTimeMutableInterval_init(OrgJodaTimeMutableInterval *self);

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *new_OrgJodaTimeMutableInterval_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *create_OrgJodaTimeMutableInterval_init(void);

FOUNDATION_EXPORT void OrgJodaTimeMutableInterval_initWithLong_withLong_(OrgJodaTimeMutableInterval *self, jlong startInstant, jlong endInstant);

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *new_OrgJodaTimeMutableInterval_initWithLong_withLong_(jlong startInstant, jlong endInstant) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *create_OrgJodaTimeMutableInterval_initWithLong_withLong_(jlong startInstant, jlong endInstant);

FOUNDATION_EXPORT void OrgJodaTimeMutableInterval_initWithLong_withLong_withOrgJodaTimeChronology_(OrgJodaTimeMutableInterval *self, jlong startInstant, jlong endInstant, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *new_OrgJodaTimeMutableInterval_initWithLong_withLong_withOrgJodaTimeChronology_(jlong startInstant, jlong endInstant, OrgJodaTimeChronology *chronology) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *create_OrgJodaTimeMutableInterval_initWithLong_withLong_withOrgJodaTimeChronology_(jlong startInstant, jlong endInstant, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT void OrgJodaTimeMutableInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(OrgJodaTimeMutableInterval *self, id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *new_OrgJodaTimeMutableInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *create_OrgJodaTimeMutableInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT void OrgJodaTimeMutableInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableDuration_(OrgJodaTimeMutableInterval *self, id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableDuration> duration);

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *new_OrgJodaTimeMutableInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableDuration_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableDuration> duration) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *create_OrgJodaTimeMutableInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableDuration_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableDuration> duration);

FOUNDATION_EXPORT void OrgJodaTimeMutableInterval_initWithOrgJodaTimeReadableDuration_withOrgJodaTimeReadableInstant_(OrgJodaTimeMutableInterval *self, id<OrgJodaTimeReadableDuration> duration, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *new_OrgJodaTimeMutableInterval_initWithOrgJodaTimeReadableDuration_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableDuration> duration, id<OrgJodaTimeReadableInstant> end) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *create_OrgJodaTimeMutableInterval_initWithOrgJodaTimeReadableDuration_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableDuration> duration, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT void OrgJodaTimeMutableInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadablePeriod_(OrgJodaTimeMutableInterval *self, id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadablePeriod> period);

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *new_OrgJodaTimeMutableInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadablePeriod_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadablePeriod> period) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *create_OrgJodaTimeMutableInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadablePeriod_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadablePeriod> period);

FOUNDATION_EXPORT void OrgJodaTimeMutableInterval_initWithOrgJodaTimeReadablePeriod_withOrgJodaTimeReadableInstant_(OrgJodaTimeMutableInterval *self, id<OrgJodaTimeReadablePeriod> period, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *new_OrgJodaTimeMutableInterval_initWithOrgJodaTimeReadablePeriod_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadablePeriod> period, id<OrgJodaTimeReadableInstant> end) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *create_OrgJodaTimeMutableInterval_initWithOrgJodaTimeReadablePeriod_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadablePeriod> period, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT void OrgJodaTimeMutableInterval_initWithId_(OrgJodaTimeMutableInterval *self, id interval);

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *new_OrgJodaTimeMutableInterval_initWithId_(id interval) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *create_OrgJodaTimeMutableInterval_initWithId_(id interval);

FOUNDATION_EXPORT void OrgJodaTimeMutableInterval_initWithId_withOrgJodaTimeChronology_(OrgJodaTimeMutableInterval *self, id interval, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *new_OrgJodaTimeMutableInterval_initWithId_withOrgJodaTimeChronology_(id interval, OrgJodaTimeChronology *chronology) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeMutableInterval *create_OrgJodaTimeMutableInterval_initWithId_withOrgJodaTimeChronology_(id interval, OrgJodaTimeChronology *chronology);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeMutableInterval)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeMutableInterval")
