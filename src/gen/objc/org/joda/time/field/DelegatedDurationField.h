//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/field/DelegatedDurationField.java
//

#ifndef _OrgJodaTimeFieldDelegatedDurationField_H_
#define _OrgJodaTimeFieldDelegatedDurationField_H_

#include "J2ObjC_header.h"
#include "java/io/Serializable.h"
#include "org/joda/time/DurationField.h"

@class OrgJodaTimeDurationFieldType;

/*!
 @brief <code>DelegatedDurationField</code> delegates each method call to the
 duration field it wraps.
 <p>
 DelegatedDurationField is thread-safe and immutable, and its subclasses must
 be as well.
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeFieldDelegatedDurationField : OrgJodaTimeDurationField < JavaIoSerializable >

#pragma mark Public

- (jlong)addWithLong:(jlong)instant
             withInt:(jint)value;

- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)value;

- (jint)compareToWithId:(OrgJodaTimeDurationField *)durationField;

- (jboolean)isEqual:(id)obj;

- (jint)getDifferenceWithLong:(jlong)minuendInstant
                     withLong:(jlong)subtrahendInstant;

- (jlong)getDifferenceAsLongWithLong:(jlong)minuendInstant
                            withLong:(jlong)subtrahendInstant;

- (jlong)getMillisWithInt:(jint)value;

- (jlong)getMillisWithInt:(jint)value
                 withLong:(jlong)instant;

- (jlong)getMillisWithLong:(jlong)value;

- (jlong)getMillisWithLong:(jlong)value
                  withLong:(jlong)instant;

- (NSString *)getName;

- (OrgJodaTimeDurationFieldType *)getType;

- (jlong)getUnitMillis;

- (jint)getValueWithLong:(jlong)duration;

- (jint)getValueWithLong:(jlong)duration
                withLong:(jlong)instant;

- (jlong)getValueAsLongWithLong:(jlong)duration;

- (jlong)getValueAsLongWithLong:(jlong)duration
                       withLong:(jlong)instant;

/*!
 @brief Gets the wrapped duration field.
 @return the wrapped DurationField
 */
- (OrgJodaTimeDurationField *)getWrappedField;

- (NSUInteger)hash;

- (jboolean)isPrecise;

/*!
 @brief Returns true if this field is supported.
 */
- (jboolean)isSupported;

- (NSString *)description;

#pragma mark Protected

/*!
 @brief Constructor.
 @param field  the base field
 */
- (instancetype)initWithOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)field;

/*!
 @brief Constructor.
 @param field  the base field
 @param type  the field type to use
 */
- (instancetype)initWithOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)field
                withOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFieldDelegatedDurationField)

FOUNDATION_EXPORT void OrgJodaTimeFieldDelegatedDurationField_initWithOrgJodaTimeDurationField_(OrgJodaTimeFieldDelegatedDurationField *self, OrgJodaTimeDurationField *field);

FOUNDATION_EXPORT OrgJodaTimeFieldDelegatedDurationField *new_OrgJodaTimeFieldDelegatedDurationField_initWithOrgJodaTimeDurationField_(OrgJodaTimeDurationField *field) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgJodaTimeFieldDelegatedDurationField_initWithOrgJodaTimeDurationField_withOrgJodaTimeDurationFieldType_(OrgJodaTimeFieldDelegatedDurationField *self, OrgJodaTimeDurationField *field, OrgJodaTimeDurationFieldType *type);

FOUNDATION_EXPORT OrgJodaTimeFieldDelegatedDurationField *new_OrgJodaTimeFieldDelegatedDurationField_initWithOrgJodaTimeDurationField_withOrgJodaTimeDurationFieldType_(OrgJodaTimeDurationField *field, OrgJodaTimeDurationFieldType *type) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldDelegatedDurationField)

#endif // _OrgJodaTimeFieldDelegatedDurationField_H_
