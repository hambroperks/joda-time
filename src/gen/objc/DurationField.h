//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/DurationField.java
//

#ifndef _OrgJodaTimeDurationField_H_
#define _OrgJodaTimeDurationField_H_

@class OrgJodaTimeDurationFieldType;

#import "JreEmulation.h"
#include "java/lang/Comparable.h"

/**
 @brief Defines the calculation engine for duration fields.
 The interface defines a set of methods that manipulate a millisecond duration with regards to a single field, such as months or seconds. <p> This design is extensible so, if you wish, you can extract a different field from the millisecond duration. A number of standard implementations are provided to assist.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeDurationField : NSObject < JavaLangComparable > {
}

/**
 @brief Get the type of the field.
 @return field type
 */
- (OrgJodaTimeDurationFieldType *)getType;

/**
 @brief Get the name of the field.
 <p> By convention, names are plural.
 @return field name
 */
- (NSString *)getName;

/**
 @brief Returns true if this field is supported.
 @return true if this field is supported
 */
- (BOOL)isSupported;

/**
 @brief Is this field precise.
 A precise field can calculate its value from milliseconds without needing a reference date. Put another way, a precise field's unit size is not variable.
 @return true if precise
 */
- (BOOL)isPrecise;

/**
 @brief Returns the amount of milliseconds per unit value of this field.
 For example, if this field represents "seconds", then this returns the milliseconds in one second. <p> For imprecise fields, the unit size is variable, and so this method returns a suitable average value.
 @return the unit size of this field, in milliseconds
 */
- (long long int)getUnitMillis;

/**
 @brief Get the value of this field from the milliseconds, which is approximate if this field is imprecise.
 @param duration the milliseconds to query, which may be negative
 @return the value of the field, in the units of the field, which may be negative
 @throws ArithmeticException if the value is too large for an int
 */
- (int)getValueWithLong:(long long int)duration;

/**
 @brief Get the value of this field from the milliseconds, which is approximate if this field is imprecise.
 @param duration the milliseconds to query, which may be negative
 @return the value of the field, in the units of the field, which may be negative
 */
- (long long int)getValueAsLongWithLong:(long long int)duration;

/**
 @brief Get the value of this field from the milliseconds relative to an instant.
 For precise fields this method produces the same result as for the single argument get method. <p> If the millisecond duration is positive, then the instant is treated as a "start instant". If negative, the instant is treated as an "end instant".
 @param duration the milliseconds to query, which may be negative
 @param instant the start instant to calculate relative to
 @return the value of the field, in the units of the field, which may be negative
 @throws ArithmeticException if the value is too large for an int
 */
- (int)getValueWithLong:(long long int)duration
               withLong:(long long int)instant;

/**
 @brief Get the value of this field from the milliseconds relative to an instant.
 For precise fields this method produces the same result as for the single argument get method. <p> If the millisecond duration is positive, then the instant is treated as a "start instant". If negative, the instant is treated as an "end instant".
 @param duration the milliseconds to query, which may be negative
 @param instant the start instant to calculate relative to
 @return the value of the field, in the units of the field, which may be negative
 */
- (long long int)getValueAsLongWithLong:(long long int)duration
                               withLong:(long long int)instant;

/**
 @brief Get the millisecond duration of this field from its value, which is approximate if this field is imprecise.
 @param value the value of the field, which may be negative
 @return the milliseconds that the field represents, which may be negative
 */
- (long long int)getMillisWithInt:(int)value;

/**
 @brief Get the millisecond duration of this field from its value, which is approximate if this field is imprecise.
 @param value the value of the field, which may be negative
 @return the milliseconds that the field represents, which may be negative
 */
- (long long int)getMillisWithLong:(long long int)value;

/**
 @brief Get the millisecond duration of this field from its value relative to an instant.
 For precise fields this method produces the same result as for the single argument getMillis method. <p> If the value is positive, then the instant is treated as a "start instant". If negative, the instant is treated as an "end instant".
 @param value the value of the field, which may be negative
 @param instant the instant to calculate relative to
 @return the millisecond duration that the field represents, which may be negative
 */
- (long long int)getMillisWithInt:(int)value
                         withLong:(long long int)instant;

/**
 @brief Get the millisecond duration of this field from its value relative to an instant.
 For precise fields this method produces the same result as for the single argument getMillis method. <p> If the value is positive, then the instant is treated as a "start instant". If negative, the instant is treated as an "end instant".
 @param value the value of the field, which may be negative
 @param instant the instant to calculate relative to
 @return the millisecond duration that the field represents, which may be negative
 */
- (long long int)getMillisWithLong:(long long int)value
                          withLong:(long long int)instant;

/**
 @brief Adds a duration value (which may be negative) to the instant.
 @param instant the milliseconds from 1970-01-01T00:00:00Z to add to
 @param value the value to add, in the units of the field
 @return the updated milliseconds
 */
- (long long int)addWithLong:(long long int)instant
                     withInt:(int)value;

/**
 @brief Adds a duration value (which may be negative) to the instant.
 @param instant the milliseconds from 1970-01-01T00:00:00Z to add to
 @param value the value to add, in the units of the field
 @return the updated milliseconds
 */
- (long long int)addWithLong:(long long int)instant
                    withLong:(long long int)value;

/**
 @brief Subtracts a duration value (which may be negative) from the instant.
 @param instant the milliseconds from 1970-01-01T00:00:00Z to subtract from
 @param value the value to subtract, in the units of the field
 @return the updated milliseconds
 @since 1.1
 */
- (long long int)subtractWithLong:(long long int)instant
                          withInt:(int)value;

/**
 @brief Subtracts a duration value (which may be negative) from the instant.
 @param instant the milliseconds from 1970-01-01T00:00:00Z to subtract from
 @param value the value to subtract, in the units of the field
 @return the updated milliseconds
 @since 1.1
 */
- (long long int)subtractWithLong:(long long int)instant
                         withLong:(long long int)value;

/**
 @brief Computes the difference between two instants, as measured in the units of this field.
 Any fractional units are dropped from the result. Calling getDifference reverses the effect of calling add. In the following code: <pre> long instant = ... int v = ... int age = getDifference(add(instant, v), instant); </pre> The value 'age' is the same as the value 'v'.
 @param minuendInstant the milliseconds from 1970-01-01T00:00:00Z to subtract from
 @param subtrahendInstant the milliseconds from 1970-01-01T00:00:00Z to subtract off the minuend
 @return the difference in the units of this field
 */
- (int)getDifferenceWithLong:(long long int)minuendInstant
                    withLong:(long long int)subtrahendInstant;

/**
 @brief Computes the difference between two instants, as measured in the units of this field.
 Any fractional units are dropped from the result. Calling getDifference reverses the effect of calling add. In the following code: <pre> long instant = ... long v = ... long age = getDifferenceAsLong(add(instant, v), instant); </pre> The value 'age' is the same as the value 'v'.
 @param minuendInstant the milliseconds from 1970-01-01T00:00:00Z to subtract from
 @param subtrahendInstant the milliseconds from 1970-01-01T00:00:00Z to subtract off the minuend
 @return the difference in the units of this field
 */
- (long long int)getDifferenceAsLongWithLong:(long long int)minuendInstant
                                    withLong:(long long int)subtrahendInstant;

/**
 @brief Get a suitable debug string.
 @return debug string
 */
- (NSString *)description;

- (int)compareToWithId:(OrgJodaTimeDurationField *)param0;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void OrgJodaTimeDurationField_init() {}

#endif // _OrgJodaTimeDurationField_H_
