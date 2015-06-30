//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/field/FieldUtils.java
//

#ifndef _OrgJodaTimeFieldFieldUtils_H_
#define _OrgJodaTimeFieldFieldUtils_H_

#include "J2ObjC_header.h"

@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeFieldType;

/**
 @brief General utilities that don't fit elsewhere.
 <p> FieldUtils is thread-safe and immutable.
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeFieldFieldUtils : NSObject

#pragma mark Public

/**
 @brief Compares two objects as equals handling null.
 @param object1 the first object
 @param object2 the second object
 @return true if equal
 @since 1.4
 */
+ (jboolean)equalsWithId:(id)object1
                  withId:(id)object2;

/**
 @brief Utility method that ensures the given value lies within the field's legal value range.
 @param value the value to fit into the wrapped value range
 @param minValue the wrap range minimum value.
 @param maxValue the wrap range maximum value.  This must be greater than minValue (checked by the method).
 @return the wrapped value
 @throws IllegalArgumentException if minValue is greater than or equal to maxValue
 */
+ (jint)getWrappedValueWithInt:(jint)value
                       withInt:(jint)minValue
                       withInt:(jint)maxValue;

/**
 @brief Utility method used by addWrapField implementations to ensure the new value lies within the field's legal value range.
 @param currentValue the current value of the data, which may lie outside the wrapped value range
 @param wrapValue the value to add to current value before wrapping.  This may be negative.
 @param minValue the wrap range minimum value.
 @param maxValue the wrap range maximum value.  This must be greater than minValue (checked by the method).
 @return the wrapped value
 @throws IllegalArgumentException if minValue is greater than or equal to maxValue
 */
+ (jint)getWrappedValueWithInt:(jint)currentValue
                       withInt:(jint)wrapValue
                       withInt:(jint)minValue
                       withInt:(jint)maxValue;

/**
 @brief Add two values throwing an exception if overflow occurs.
 @param val1 the first value
 @param val2 the second value
 @return the new total
 @throws ArithmeticException if the value is too big or too small
 */
+ (jint)safeAddWithInt:(jint)val1
               withInt:(jint)val2;

/**
 @brief Add two values throwing an exception if overflow occurs.
 @param val1 the first value
 @param val2 the second value
 @return the new total
 @throws ArithmeticException if the value is too big or too small
 */
+ (jlong)safeAddWithLong:(jlong)val1
                withLong:(jlong)val2;

/**
 @brief Divides the dividend by the divisor throwing an exception if overflow occurs or the divisor is zero.
 @param dividend the dividend
 @param divisor the divisor
 @return the new total
 @throws ArithmeticException if the operation overflows or the divisor is zero
 */
+ (jlong)safeDivideWithLong:(jlong)dividend
                   withLong:(jlong)divisor;

/**
 @brief Multiply two values throwing an exception if overflow occurs.
 @param val1 the first value
 @param val2 the second value
 @return the new total
 @throws ArithmeticException if the value is too big or too small
 @since 1.2
 */
+ (jint)safeMultiplyWithInt:(jint)val1
                    withInt:(jint)val2;

/**
 @brief Multiply two values throwing an exception if overflow occurs.
 @param val1 the first value
 @param val2 the second value
 @return the new total
 @throws ArithmeticException if the value is too big or too small
 @since 1.2
 */
+ (jlong)safeMultiplyWithLong:(jlong)val1
                      withInt:(jint)val2;

/**
 @brief Multiply two values throwing an exception if overflow occurs.
 @param val1 the first value
 @param val2 the second value
 @return the new total
 @throws ArithmeticException if the value is too big or too small
 */
+ (jlong)safeMultiplyWithLong:(jlong)val1
                     withLong:(jlong)val2;

/**
 @brief Multiply two values to return an int throwing an exception if overflow occurs.
 @param val1 the first value
 @param val2 the second value
 @return the new total
 @throws ArithmeticException if the value is too big or too small
 */
+ (jint)safeMultiplyToIntWithLong:(jlong)val1
                         withLong:(jlong)val2;

/**
 @brief Negates the input throwing an exception if it can't negate it.
 @param value the value to negate
 @return the negated value
 @throws ArithmeticException if the value is Integer.MIN_VALUE
 @since 1.1
 */
+ (jint)safeNegateWithInt:(jint)value;

/**
 @brief Subtracts two values throwing an exception if overflow occurs.
 @param val1 the first value, to be taken away from
 @param val2 the second value, the amount to take away
 @return the new total
 @throws ArithmeticException if the value is too big or too small
 */
+ (jlong)safeSubtractWithLong:(jlong)val1
                     withLong:(jlong)val2;

/**
 @brief Casts to an int throwing an exception if overflow occurs.
 @param value the value
 @return the value as an int
 @throws ArithmeticException if the value is too big or too small
 */
+ (jint)safeToIntWithLong:(jlong)value;

/**
 @brief Verify that input values are within specified bounds.
 @param value the value to check
 @param lowerBound the lower bound allowed for value
 @param upperBound the upper bound allowed for value
 @throws IllegalFieldValueException if value is not in the specified bounds
 */
+ (void)verifyValueBoundsWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                                              withInt:(jint)value
                                              withInt:(jint)lowerBound
                                              withInt:(jint)upperBound;

/**
 @brief Verify that input values are within specified bounds.
 @param value the value to check
 @param lowerBound the lower bound allowed for value
 @param upperBound the upper bound allowed for value
 @throws IllegalFieldValueException if value is not in the specified bounds
 @since 1.1
 */
+ (void)verifyValueBoundsWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)fieldType
                                                  withInt:(jint)value
                                                  withInt:(jint)lowerBound
                                                  withInt:(jint)upperBound;

/**
 @brief Verify that input values are within specified bounds.
 @param value the value to check
 @param lowerBound the lower bound allowed for value
 @param upperBound the upper bound allowed for value
 @throws IllegalFieldValueException if value is not in the specified bounds
 */
+ (void)verifyValueBoundsWithNSString:(NSString *)fieldName
                              withInt:(jint)value
                              withInt:(jint)lowerBound
                              withInt:(jint)upperBound;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFieldFieldUtils)

FOUNDATION_EXPORT jint OrgJodaTimeFieldFieldUtils_safeNegateWithInt_(jint value);

FOUNDATION_EXPORT jint OrgJodaTimeFieldFieldUtils_safeAddWithInt_withInt_(jint val1, jint val2);

FOUNDATION_EXPORT jlong OrgJodaTimeFieldFieldUtils_safeAddWithLong_withLong_(jlong val1, jlong val2);

FOUNDATION_EXPORT jlong OrgJodaTimeFieldFieldUtils_safeSubtractWithLong_withLong_(jlong val1, jlong val2);

FOUNDATION_EXPORT jint OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_(jint val1, jint val2);

FOUNDATION_EXPORT jlong OrgJodaTimeFieldFieldUtils_safeMultiplyWithLong_withInt_(jlong val1, jint val2);

FOUNDATION_EXPORT jlong OrgJodaTimeFieldFieldUtils_safeMultiplyWithLong_withLong_(jlong val1, jlong val2);

FOUNDATION_EXPORT jlong OrgJodaTimeFieldFieldUtils_safeDivideWithLong_withLong_(jlong dividend, jlong divisor);

FOUNDATION_EXPORT jint OrgJodaTimeFieldFieldUtils_safeToIntWithLong_(jlong value);

FOUNDATION_EXPORT jint OrgJodaTimeFieldFieldUtils_safeMultiplyToIntWithLong_withLong_(jlong val1, jlong val2);

FOUNDATION_EXPORT void OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithOrgJodaTimeDateTimeField_withInt_withInt_withInt_(OrgJodaTimeDateTimeField *field, jint value, jint lowerBound, jint upperBound);

FOUNDATION_EXPORT void OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithOrgJodaTimeDateTimeFieldType_withInt_withInt_withInt_(OrgJodaTimeDateTimeFieldType *fieldType, jint value, jint lowerBound, jint upperBound);

FOUNDATION_EXPORT void OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithNSString_withInt_withInt_withInt_(NSString *fieldName, jint value, jint lowerBound, jint upperBound);

FOUNDATION_EXPORT jint OrgJodaTimeFieldFieldUtils_getWrappedValueWithInt_withInt_withInt_withInt_(jint currentValue, jint wrapValue, jint minValue, jint maxValue);

FOUNDATION_EXPORT jint OrgJodaTimeFieldFieldUtils_getWrappedValueWithInt_withInt_withInt_(jint value, jint minValue, jint maxValue);

FOUNDATION_EXPORT jboolean OrgJodaTimeFieldFieldUtils_equalsWithId_withId_(id object1, id object2);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldFieldUtils)

#endif // _OrgJodaTimeFieldFieldUtils_H_
