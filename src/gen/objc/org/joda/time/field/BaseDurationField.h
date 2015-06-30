//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/field/BaseDurationField.java
//

#ifndef _OrgJodaTimeFieldBaseDurationField_H_
#define _OrgJodaTimeFieldBaseDurationField_H_

#include "J2ObjC_header.h"
#include "java/io/Serializable.h"
#include "org/joda/time/DurationField.h"

@class OrgJodaTimeDurationFieldType;

/**
 @brief BaseDurationField provides the common behaviour for DurationField implementations.
 <p> This class should generally not be used directly by API users. The DurationField class should be used when different kinds of DurationField objects are to be referenced. <p> BaseDurationField is thread-safe and immutable, and its subclasses must be as well.
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeFieldBaseDurationField : OrgJodaTimeDurationField < JavaIoSerializable >

#pragma mark Public

- (jint)compareToWithId:(OrgJodaTimeDurationField *)otherField;

- (jint)getDifferenceWithLong:(jlong)minuendInstant
                     withLong:(jlong)subtrahendInstant;

/**
 @brief Get the millisecond duration of this field from its value, which is approximate if this field is imprecise.
 @param value the value of the field, which may be negative
 @return the milliseconds that the field represents, which may be negative
 */
- (jlong)getMillisWithInt:(jint)value;

/**
 @brief Get the millisecond duration of this field from its value, which is approximate if this field is imprecise.
 @param value the value of the field, which may be negative
 @return the milliseconds that the field represents, which may be negative
 */
- (jlong)getMillisWithLong:(jlong)value;

- (NSString *)getName;

- (OrgJodaTimeDurationFieldType *)getType;

/**
 @brief Get the value of this field from the milliseconds, which is approximate if this field is imprecise.
 @param duration the milliseconds to query, which may be negative
 @return the value of the field, in the units of the field, which may be negative
 */
- (jint)getValueWithLong:(jlong)duration;

/**
 @brief Get the value of this field from the milliseconds relative to an instant.
 <p>If the milliseconds is positive, then the instant is treated as a "start instant". If negative, the instant is treated as an "end instant". <p>The default implementation returns <code>Utils.safeToInt(getAsLong(millisDuration, instant))</code>.
 @param duration the milliseconds to query, which may be negative
 @param instant the start instant to calculate relative to
 @return the value of the field, in the units of the field, which may be negative
 */
- (jint)getValueWithLong:(jlong)duration
                withLong:(jlong)instant;

/**
 @brief Get the value of this field from the milliseconds, which is approximate if this field is imprecise.
 @param duration the milliseconds to query, which may be negative
 @return the value of the field, in the units of the field, which may be negative
 */
- (jlong)getValueAsLongWithLong:(jlong)duration;

/**
 @return true always
 */
- (jboolean)isSupported;

/**
 @brief Get a suitable debug string.
 @return debug string
 */
- (NSString *)description;

#pragma mark Protected

- (instancetype)initWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFieldBaseDurationField)

FOUNDATION_EXPORT void OrgJodaTimeFieldBaseDurationField_initWithOrgJodaTimeDurationFieldType_(OrgJodaTimeFieldBaseDurationField *self, OrgJodaTimeDurationFieldType *type);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldBaseDurationField)

#endif // _OrgJodaTimeFieldBaseDurationField_H_
