//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/field/ZeroIsMaxDateTimeField.java
//

#ifndef _OrgJodaTimeFieldZeroIsMaxDateTimeField_H_
#define _OrgJodaTimeFieldZeroIsMaxDateTimeField_H_

@class IOSIntArray;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDurationField;
@protocol OrgJodaTimeReadablePartial;

#import "JreEmulation.h"
#include "DecoratedDateTimeField.h"

#define OrgJodaTimeFieldZeroIsMaxDateTimeField_serialVersionUID 961749798233026866LL

/**
 @brief Wraps another field such that zero values are replaced with one more than it's maximum.
 This is particularly useful for implementing an clockhourOfDay field, where the midnight value of 0 is replaced with 24. <p> ZeroIsMaxDateTimeField is thread-safe and immutable.
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeFieldZeroIsMaxDateTimeField : OrgJodaTimeFieldDecoratedDateTimeField {
}

/**
 @brief Constructor.
 @param field the base field
 @param type the field type this field will actually use
 @throws IllegalArgumentException if wrapped field's minimum value is not zero
 */
- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type;

- (int)getWithLong:(long long int)instant;

- (long long int)addWithLong:(long long int)instant
                     withInt:(int)value;

- (long long int)addWithLong:(long long int)instant
                    withLong:(long long int)value;

- (long long int)addWrapFieldWithLong:(long long int)instant
                              withInt:(int)value;

- (IOSIntArray *)addWrapFieldWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant
                                                    withInt:(int)fieldIndex
                                               withIntArray:(IOSIntArray *)values
                                                    withInt:(int)valueToAdd;

- (int)getDifferenceWithLong:(long long int)minuendInstant
                    withLong:(long long int)subtrahendInstant;

- (long long int)getDifferenceAsLongWithLong:(long long int)minuendInstant
                                    withLong:(long long int)subtrahendInstant;

- (long long int)setWithLong:(long long int)instant
                     withInt:(int)value;

- (BOOL)isLeapWithLong:(long long int)instant;

- (int)getLeapAmountWithLong:(long long int)instant;

- (OrgJodaTimeDurationField *)getLeapDurationField;

/**
 @brief Always returns 1.
 @return the minimum value of 1
 */
- (int)getMinimumValue;

/**
 @brief Always returns 1.
 @return the minimum value of 1
 */
- (int)getMinimumValueWithLong:(long long int)instant;

/**
 @brief Always returns 1.
 @return the minimum value of 1
 */
- (int)getMinimumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant;

/**
 @brief Always returns 1.
 @return the minimum value of 1
 */
- (int)getMinimumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant
                                        withIntArray:(IOSIntArray *)values;

/**
 @brief Get the maximum value for the field, which is one more than the wrapped field's maximum value.
 @return the maximum value
 */
- (int)getMaximumValue;

/**
 @brief Get the maximum value for the field, which is one more than the wrapped field's maximum value.
 @return the maximum value
 */
- (int)getMaximumValueWithLong:(long long int)instant;

/**
 @brief Get the maximum value for the field, which is one more than the wrapped field's maximum value.
 @return the maximum value
 */
- (int)getMaximumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant;

/**
 @brief Get the maximum value for the field, which is one more than the wrapped field's maximum value.
 @return the maximum value
 */
- (int)getMaximumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant
                                        withIntArray:(IOSIntArray *)values;

- (long long int)roundFloorWithLong:(long long int)instant;

- (long long int)roundCeilingWithLong:(long long int)instant;

- (long long int)roundHalfFloorWithLong:(long long int)instant;

- (long long int)roundHalfCeilingWithLong:(long long int)instant;

- (long long int)roundHalfEvenWithLong:(long long int)instant;

- (long long int)remainderWithLong:(long long int)instant;

@end

__attribute__((always_inline)) inline void OrgJodaTimeFieldZeroIsMaxDateTimeField_init() {}

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeFieldZeroIsMaxDateTimeField, serialVersionUID, long long int)

#endif // _OrgJodaTimeFieldZeroIsMaxDateTimeField_H_
