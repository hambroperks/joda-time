//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/field/ScaledDurationField.java
//

#ifndef _OrgJodaTimeFieldScaledDurationField_H_
#define _OrgJodaTimeFieldScaledDurationField_H_

@class OrgJodaTimeDurationField;
@class OrgJodaTimeDurationFieldType;

#import "JreEmulation.h"
#include "DecoratedDurationField.h"

#define OrgJodaTimeFieldScaledDurationField_serialVersionUID -3205227092378684157LL

/**
 @brief Scales a DurationField such that it's unit millis becomes larger in magnitude.
 <p> ScaledDurationField is thread-safe and immutable.
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeFieldScaledDurationField : OrgJodaTimeFieldDecoratedDurationField {
 @public
  int iScalar_;
}

/**
 @brief Constructor
 @param field the field to wrap, like "year()".
 @param type the type this field will actually use
 @param scalar scalar, such as 100 years in a century
 @throws IllegalArgumentException if scalar is zero or one.
 */
- (instancetype)initWithOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)field
                withOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type
                                         withInt:(int)scalar;

- (int)getValueWithLong:(long long int)duration;

- (long long int)getValueAsLongWithLong:(long long int)duration;

- (int)getValueWithLong:(long long int)duration
               withLong:(long long int)instant;

- (long long int)getValueAsLongWithLong:(long long int)duration
                               withLong:(long long int)instant;

- (long long int)getMillisWithInt:(int)value;

- (long long int)getMillisWithLong:(long long int)value;

- (long long int)getMillisWithInt:(int)value
                         withLong:(long long int)instant;

- (long long int)getMillisWithLong:(long long int)value
                          withLong:(long long int)instant;

- (long long int)addWithLong:(long long int)instant
                     withInt:(int)value;

- (long long int)addWithLong:(long long int)instant
                    withLong:(long long int)value;

- (int)getDifferenceWithLong:(long long int)minuendInstant
                    withLong:(long long int)subtrahendInstant;

- (long long int)getDifferenceAsLongWithLong:(long long int)minuendInstant
                                    withLong:(long long int)subtrahendInstant;

- (long long int)getUnitMillis;

/**
 @brief Returns the scalar applied, in the field's units.
 @return the scalar
 */
- (int)getScalar;

/**
 @brief Compares this duration field to another.
 Two fields are equal if of the same type and duration.
 @param obj the object to compare to
 @return if equal
 */
- (BOOL)isEqual:(id)obj;

/**
 @brief Gets a hash code for this instance.
 @return a suitable hashcode
 */
- (NSUInteger)hash;

- (void)copyAllFieldsTo:(OrgJodaTimeFieldScaledDurationField *)other;

@end

__attribute__((always_inline)) inline void OrgJodaTimeFieldScaledDurationField_init() {}

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeFieldScaledDurationField, serialVersionUID, long long int)

#endif // _OrgJodaTimeFieldScaledDurationField_H_
