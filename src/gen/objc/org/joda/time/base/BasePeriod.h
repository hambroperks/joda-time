//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/base/BasePeriod.java
//

#ifndef _OrgJodaTimeBaseBasePeriod_H_
#define _OrgJodaTimeBaseBasePeriod_H_

#include "J2ObjC_header.h"
#include "java/io/Serializable.h"
#include "org/joda/time/ReadablePeriod.h"
#include "org/joda/time/base/AbstractPeriod.h"

@class IOSIntArray;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDuration;
@class OrgJodaTimeDurationFieldType;
@class OrgJodaTimePeriodType;
@protocol OrgJodaTimeReadableDuration;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadablePartial;

/**
 @brief BasePeriod is an abstract implementation of ReadablePeriod that stores data in a <code>PeriodType</code> and an <code>int[]</code>.
 <p> This class should generally not be used directly by API users. The ReadablePeriod interface should be used when different kinds of period objects are to be referenced. <p> BasePeriod subclasses may be mutable and not thread-safe.
 @author Brian S O'Neill
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeBaseBasePeriod : OrgJodaTimeBaseAbstractPeriod < OrgJodaTimeReadablePeriod, JavaIoSerializable >

#pragma mark Public

/**
 @brief Gets the period type.
 @return the period type
 */
- (OrgJodaTimePeriodType *)getPeriodType;

/**
 @brief Gets the value at the specified index.
 @param index the index to retrieve
 @return the value of the field at the specified index
 @throws IndexOutOfBoundsException if the index is invalid
 */
- (jint)getValueWithInt:(jint)index;

/**
 @brief Gets the total millisecond duration of this period relative to a start instant.
 <p> This method adds the period to the specified instant in order to calculate the duration. <p> An instant must be supplied as the duration of a period varies. For example, a period of 1 month could vary between the equivalent of 28 and 31 days in milliseconds due to different length months. Similarly, a day can vary at Daylight Savings cutover, typically between 23 and 25 hours.
 @param startInstant the instant to add the period to, thus obtaining the duration
 @return the total length of the period as a duration relative to the start instant
 @throws ArithmeticException if the millis exceeds the capacity of the duration
 */
- (OrgJodaTimeDuration *)toDurationFromWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)startInstant;

/**
 @brief Gets the total millisecond duration of this period relative to an end instant.
 <p> This method subtracts the period from the specified instant in order to calculate the duration. <p> An instant must be supplied as the duration of a period varies. For example, a period of 1 month could vary between the equivalent of 28 and 31 days in milliseconds due to different length months. Similarly, a day can vary at Daylight Savings cutover, typically between 23 and 25 hours.
 @param endInstant the instant to subtract the period from, thus obtaining the duration
 @return the total length of the period as a duration relative to the end instant
 @throws ArithmeticException if the millis exceeds the capacity of the duration
 */
- (OrgJodaTimeDuration *)toDurationToWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)endInstant;

#pragma mark Protected

/**
 @brief Creates a period from a set of field values.
 @param years amount of years in this period, which must be zero if unsupported
 @param months amount of months in this period, which must be zero if unsupported
 @param weeks amount of weeks in this period, which must be zero if unsupported
 @param days amount of days in this period, which must be zero if unsupported
 @param hours amount of hours in this period, which must be zero if unsupported
 @param minutes amount of minutes in this period, which must be zero if unsupported
 @param seconds amount of seconds in this period, which must be zero if unsupported
 @param millis amount of milliseconds in this period, which must be zero if unsupported
 @param type which set of fields this period supports
 @throws IllegalArgumentException if period type is invalid
 @throws IllegalArgumentException if an unsupported field's value is non-zero
 */
- (instancetype)initWithInt:(jint)years
                    withInt:(jint)months
                    withInt:(jint)weeks
                    withInt:(jint)days
                    withInt:(jint)hours
                    withInt:(jint)minutes
                    withInt:(jint)seconds
                    withInt:(jint)millis
  withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type;

/**
 @brief Constructor used when we trust ourselves.
 Do not expose publically.
 @param values the values to use, not null, not cloned
 @param type which set of fields this period supports, not null
 */
- (instancetype)initWithIntArray:(IOSIntArray *)values
       withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type;

/**
 @brief Creates a period from the given millisecond duration with the standard period type and ISO rules, ensuring that the calculation is performed with the time-only period type.
 <p> The calculation uses the hour, minute, second and millisecond fields.
 @param duration the duration, in milliseconds
 */
- (instancetype)initWithLong:(jlong)duration;

/**
 @brief Creates a period from the given interval endpoints.
 @param startInstant interval start, in milliseconds
 @param endInstant interval end, in milliseconds
 @param type which set of fields this period supports, null means standard
 @param chrono the chronology to use, null means ISO default
 @throws IllegalArgumentException if period type is invalid
 */
- (instancetype)initWithLong:(jlong)startInstant
                    withLong:(jlong)endInstant
   withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/**
 @brief Creates a period from the given millisecond duration, which is only really suitable for durations less than one day.
 <p> Only fields that are precise will be used. Thus the largest precise field may have a large value.
 @param duration the duration, in milliseconds
 @param type which set of fields this period supports, null means standard
 @param chrono the chronology to use, null means ISO default
 @throws IllegalArgumentException if period type is invalid
 */
- (instancetype)initWithLong:(jlong)duration
   withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/**
 @brief Creates a new period based on another using the ConverterManager .
 @param period the period to convert
 @param type which set of fields this period supports, null means use type from object
 @param chrono the chronology to use, null means ISO default
 @throws IllegalArgumentException if period is invalid
 @throws IllegalArgumentException if an unsupported field's value is non-zero
 */
- (instancetype)initWithId:(id)period
 withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/**
 @brief Creates a period from the given duration and end point.
 @param duration the duration of the interval, null means zero-length
 @param endInstant the interval end, null means now
 @param type which set of fields this period supports, null means standard
 */
- (instancetype)initWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration
                     withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)endInstant
                          withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type;

/**
 @brief Creates a period from the given start point and duration.
 @param startInstant the interval start, null means now
 @param duration the duration of the interval, null means zero-length
 @param type which set of fields this period supports, null means standard
 */
- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)startInstant
                   withOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration
                         withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type;

/**
 @brief Creates a period from the given interval endpoints.
 @param startInstant interval start, null means now
 @param endInstant interval end, null means now
 @param type which set of fields this period supports, null means standard
 @throws IllegalArgumentException if period type is invalid
 */
- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)startInstant
                    withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)endInstant
                         withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type;

/**
 @brief Creates a period from the given duration and end point.
 <p> The two partials must contain the same fields, thus you can specify two <code>LocalDate</code> objects, or two <code>LocalTime</code> objects, but not one of each. As these are Partial objects, time zones have no effect on the result. <p> The two partials must also both be contiguous - see DateTimeUtils#isContiguous(ReadablePartial) for a definition. Both <code>LocalDate</code> and <code>LocalTime</code> are contiguous.
 @param start the start of the period, must not be null
 @param end the end of the period, must not be null
 @param type which set of fields this period supports, null means standard
 @throws IllegalArgumentException if the partials are null or invalid
 @since 1.1
 */
- (instancetype)initWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                    withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end
                         withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type;

/**
 @brief Adds the value of a field in this period.
 @param field the field to set
 @param value the value to set
 @throws IllegalArgumentException if field is is null or not supported.
 */
- (void)addFieldWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)field
                                         withInt:(jint)value;

/**
 @brief Adds the value of a field in this period.
 @param values the array of values to update
 @param field the field to set
 @param value the value to set
 @throws IllegalArgumentException if field is is null or not supported.
 */
- (void)addFieldIntoWithIntArray:(IOSIntArray *)values
withOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)field
                         withInt:(jint)value;

/**
 @brief Adds the fields from another period.
 @param period the period to add from, not null
 @throws IllegalArgumentException if an unsupported field's value is non-zero
 */
- (void)addPeriodWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/**
 @brief Adds the fields from another period.
 @param values the array of values to update
 @param period the period to add from, not null
 @return the updated values
 @throws IllegalArgumentException if an unsupported field's value is non-zero
 */
- (IOSIntArray *)addPeriodIntoWithIntArray:(IOSIntArray *)values
             withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/**
 @brief Validates a period type, converting nulls to a default value and checking the type is suitable for this instance.
 @param type the type to check, may be null
 @return the validated type to use, not null
 @throws IllegalArgumentException if the period type is invalid
 */
- (OrgJodaTimePeriodType *)checkPeriodTypeWithOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type;

/**
 @brief Merges the fields from another period.
 @param period the period to add from, not null
 @throws IllegalArgumentException if an unsupported field's value is non-zero
 */
- (void)mergePeriodWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/**
 @brief Merges the fields from another period.
 @param values the array of values to update
 @param period the period to add from, not null
 @return the updated values
 @throws IllegalArgumentException if an unsupported field's value is non-zero
 */
- (IOSIntArray *)mergePeriodIntoWithIntArray:(IOSIntArray *)values
               withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/**
 @brief Sets the value of a field in this period.
 @param field the field to set
 @param value the value to set
 @throws IllegalArgumentException if field is is null or not supported.
 */
- (void)setFieldWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)field
                                         withInt:(jint)value;

/**
 @brief Sets the value of a field in this period.
 @param values the array of values to update
 @param field the field to set
 @param value the value to set
 @throws IllegalArgumentException if field is null or not supported.
 */
- (void)setFieldIntoWithIntArray:(IOSIntArray *)values
withOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)field
                         withInt:(jint)value;

/**
 @brief Sets the eight standard the fields in one go.
 @param years amount of years in this period, which must be zero if unsupported
 @param months amount of months in this period, which must be zero if unsupported
 @param weeks amount of weeks in this period, which must be zero if unsupported
 @param days amount of days in this period, which must be zero if unsupported
 @param hours amount of hours in this period, which must be zero if unsupported
 @param minutes amount of minutes in this period, which must be zero if unsupported
 @param seconds amount of seconds in this period, which must be zero if unsupported
 @param millis amount of milliseconds in this period, which must be zero if unsupported
 @throws IllegalArgumentException if an unsupported field's value is non-zero
 */
- (void)setPeriodWithInt:(jint)years
                 withInt:(jint)months
                 withInt:(jint)weeks
                 withInt:(jint)days
                 withInt:(jint)hours
                 withInt:(jint)minutes
                 withInt:(jint)seconds
                 withInt:(jint)millis;

/**
 @brief Sets all the fields of this period from another.
 @param period the period to copy from, not null
 @throws IllegalArgumentException if an unsupported field's value is non-zero
 */
- (void)setPeriodWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/**
 @brief Sets the value of the field at the specified index.
 @param index the index
 @param value the value to set
 @throws IndexOutOfBoundsException if the index is invalid
 */
- (void)setValueWithInt:(jint)index
                withInt:(jint)value;

/**
 @brief Sets the values of all fields.
 <p> In version 2.0 and later, this method copies the array into the original. This is because the instance variable has been changed to be final to satisfy the Java Memory Model. This only impacts subclasses that are mutable.
 @param values the array of values
 */
- (void)setValuesWithIntArray:(IOSIntArray *)values;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeBaseBasePeriod)

FOUNDATION_EXPORT void OrgJodaTimeBaseBasePeriod_initWithInt_withInt_withInt_withInt_withInt_withInt_withInt_withInt_withOrgJodaTimePeriodType_(OrgJodaTimeBaseBasePeriod *self, jint years, jint months, jint weeks, jint days, jint hours, jint minutes, jint seconds, jint millis, OrgJodaTimePeriodType *type);

FOUNDATION_EXPORT void OrgJodaTimeBaseBasePeriod_initWithLong_withLong_withOrgJodaTimePeriodType_withOrgJodaTimeChronology_(OrgJodaTimeBaseBasePeriod *self, jlong startInstant, jlong endInstant, OrgJodaTimePeriodType *type, OrgJodaTimeChronology *chrono);

FOUNDATION_EXPORT void OrgJodaTimeBaseBasePeriod_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimePeriodType_(OrgJodaTimeBaseBasePeriod *self, id<OrgJodaTimeReadableInstant> startInstant, id<OrgJodaTimeReadableInstant> endInstant, OrgJodaTimePeriodType *type);

FOUNDATION_EXPORT void OrgJodaTimeBaseBasePeriod_initWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_withOrgJodaTimePeriodType_(OrgJodaTimeBaseBasePeriod *self, id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end, OrgJodaTimePeriodType *type);

FOUNDATION_EXPORT void OrgJodaTimeBaseBasePeriod_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableDuration_withOrgJodaTimePeriodType_(OrgJodaTimeBaseBasePeriod *self, id<OrgJodaTimeReadableInstant> startInstant, id<OrgJodaTimeReadableDuration> duration, OrgJodaTimePeriodType *type);

FOUNDATION_EXPORT void OrgJodaTimeBaseBasePeriod_initWithOrgJodaTimeReadableDuration_withOrgJodaTimeReadableInstant_withOrgJodaTimePeriodType_(OrgJodaTimeBaseBasePeriod *self, id<OrgJodaTimeReadableDuration> duration, id<OrgJodaTimeReadableInstant> endInstant, OrgJodaTimePeriodType *type);

FOUNDATION_EXPORT void OrgJodaTimeBaseBasePeriod_initWithLong_(OrgJodaTimeBaseBasePeriod *self, jlong duration);

FOUNDATION_EXPORT void OrgJodaTimeBaseBasePeriod_initWithLong_withOrgJodaTimePeriodType_withOrgJodaTimeChronology_(OrgJodaTimeBaseBasePeriod *self, jlong duration, OrgJodaTimePeriodType *type, OrgJodaTimeChronology *chrono);

FOUNDATION_EXPORT void OrgJodaTimeBaseBasePeriod_initWithId_withOrgJodaTimePeriodType_withOrgJodaTimeChronology_(OrgJodaTimeBaseBasePeriod *self, id period, OrgJodaTimePeriodType *type, OrgJodaTimeChronology *chrono);

FOUNDATION_EXPORT void OrgJodaTimeBaseBasePeriod_initWithIntArray_withOrgJodaTimePeriodType_(OrgJodaTimeBaseBasePeriod *self, IOSIntArray *values, OrgJodaTimePeriodType *type);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeBaseBasePeriod)

#endif // _OrgJodaTimeBaseBasePeriod_H_
