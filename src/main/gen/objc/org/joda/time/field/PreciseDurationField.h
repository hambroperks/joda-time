//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/field/PreciseDurationField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFieldPreciseDurationField")
#ifdef RESTRICT_OrgJodaTimeFieldPreciseDurationField
#define INCLUDE_ALL_OrgJodaTimeFieldPreciseDurationField 0
#else
#define INCLUDE_ALL_OrgJodaTimeFieldPreciseDurationField 1
#endif
#undef RESTRICT_OrgJodaTimeFieldPreciseDurationField

#if !defined (OrgJodaTimeFieldPreciseDurationField_) && (INCLUDE_ALL_OrgJodaTimeFieldPreciseDurationField || defined(INCLUDE_OrgJodaTimeFieldPreciseDurationField))
#define OrgJodaTimeFieldPreciseDurationField_

#define RESTRICT_OrgJodaTimeFieldBaseDurationField 1
#define INCLUDE_OrgJodaTimeFieldBaseDurationField 1
#include "org/joda/time/field/BaseDurationField.h"

@class OrgJodaTimeDurationFieldType;

/*!
 @brief Duration field class representing a field with a fixed unit length.
 <p>
 PreciseDurationField is thread-safe and immutable.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeFieldPreciseDurationField : OrgJodaTimeFieldBaseDurationField

#pragma mark Public

/*!
 @brief Constructor.
 @param type  the field type
 @param unitMillis  the unit milliseconds
 */
- (instancetype)initWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type
                                            withLong:(jlong)unitMillis;

- (jlong)addWithLong:(jlong)instant
             withInt:(jint)value;

- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)value;

/*!
 @brief Compares this duration field to another.
 Two fields are equal if of the same type and duration.
 @param obj  the object to compare to
 @return if equal
 */
- (jboolean)isEqual:(id)obj;

- (jlong)getDifferenceAsLongWithLong:(jlong)minuendInstant
                            withLong:(jlong)subtrahendInstant;

/*!
 @brief Get the millisecond duration of this field from its value.
 @param value  the value of the field, which may be negative
 @param instant  ignored
 @return the milliseconds that the field represents, which may be
 negative
 */
- (jlong)getMillisWithInt:(jint)value
                 withLong:(jlong)instant;

/*!
 @brief Get the millisecond duration of this field from its value.
 @param value  the value of the field, which may be negative
 @param instant  ignored
 @return the milliseconds that the field represents, which may be
 negative
 */
- (jlong)getMillisWithLong:(jlong)value
                  withLong:(jlong)instant;

/*!
 @brief Returns the amount of milliseconds per unit value of this field.
 @return the unit size of this field, in milliseconds
 */
- (jlong)getUnitMillis;

/*!
 @brief Get the value of this field from the milliseconds.
 @param duration  the milliseconds to query, which may be negative
 @param instant  ignored
 @return the value of the field, in the units of the field, which may be
 negative
 */
- (jlong)getValueAsLongWithLong:(jlong)duration
                       withLong:(jlong)instant;

/*!
 @brief Gets a hash code for this instance.
 @return a suitable hashcode
 */
- (NSUInteger)hash;

/*!
 @brief This field is precise.
 @return true always
 */
- (jboolean)isPrecise;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFieldPreciseDurationField)

FOUNDATION_EXPORT void OrgJodaTimeFieldPreciseDurationField_initWithOrgJodaTimeDurationFieldType_withLong_(OrgJodaTimeFieldPreciseDurationField *self, OrgJodaTimeDurationFieldType *type, jlong unitMillis);

FOUNDATION_EXPORT OrgJodaTimeFieldPreciseDurationField *new_OrgJodaTimeFieldPreciseDurationField_initWithOrgJodaTimeDurationFieldType_withLong_(OrgJodaTimeDurationFieldType *type, jlong unitMillis) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFieldPreciseDurationField *create_OrgJodaTimeFieldPreciseDurationField_initWithOrgJodaTimeDurationFieldType_withLong_(OrgJodaTimeDurationFieldType *type, jlong unitMillis);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldPreciseDurationField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFieldPreciseDurationField")
