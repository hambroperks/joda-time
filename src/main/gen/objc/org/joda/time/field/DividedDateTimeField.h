//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/field/DividedDateTimeField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFieldDividedDateTimeField")
#ifdef RESTRICT_OrgJodaTimeFieldDividedDateTimeField
#define INCLUDE_ALL_OrgJodaTimeFieldDividedDateTimeField 0
#else
#define INCLUDE_ALL_OrgJodaTimeFieldDividedDateTimeField 1
#endif
#undef RESTRICT_OrgJodaTimeFieldDividedDateTimeField

#if !defined (OrgJodaTimeFieldDividedDateTimeField_) && (INCLUDE_ALL_OrgJodaTimeFieldDividedDateTimeField || defined(INCLUDE_OrgJodaTimeFieldDividedDateTimeField))
#define OrgJodaTimeFieldDividedDateTimeField_

#define RESTRICT_OrgJodaTimeFieldDecoratedDateTimeField 1
#define INCLUDE_OrgJodaTimeFieldDecoratedDateTimeField 1
#include "org/joda/time/field/DecoratedDateTimeField.h"

@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDurationField;
@class OrgJodaTimeFieldRemainderDateTimeField;

/*!
 @brief Divides a DateTimeField such that the retrieved values are reduced by a
 fixed divisor.
 The field's unit duration is scaled accordingly, but the
 range duration is unchanged.
 <p>
 DividedDateTimeField is thread-safe and immutable.
 - seealso: RemainderDateTimeField
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeFieldDividedDateTimeField : OrgJodaTimeFieldDecoratedDateTimeField {
 @public
  jint iDivisor_;
  OrgJodaTimeDurationField *iDurationField_;
  OrgJodaTimeDurationField *iRangeDurationField_;
}

#pragma mark Public

/*!
 @brief Constructor.
 @param field  the field to wrap, like "year()".
 @param type  the field type this field will actually use
 @param divisor  divisor, such as 100 years in a century
 @throws IllegalArgumentException if divisor is less than two
 */
- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type
                                         withInt:(jint)divisor;

/*!
 @brief Constructor.
 @param field  the field to wrap, like "year()".
 @param rangeField  the range field, null to derive
 @param type  the field type this field will actually use
 @param divisor  divisor, such as 100 years in a century
 @throws IllegalArgumentException if divisor is less than two
 */
- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                    withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)rangeField
                withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type
                                         withInt:(jint)divisor;

/*!
 @brief Construct a DividedDateTimeField that compliments the given
 RemainderDateTimeField.
 @param remainderField  complimentary remainder field, like "yearOfCentury()".
 @param type  the field type this field will actually use
 */
- (instancetype)initWithOrgJodaTimeFieldRemainderDateTimeField:(OrgJodaTimeFieldRemainderDateTimeField *)remainderField
                              withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type;

/*!
 @brief Construct a DividedDateTimeField that compliments the given
 RemainderDateTimeField.
 @param remainderField  complimentary remainder field, like "yearOfCentury()".
 @param rangeField  the range field, null to derive
 @param type  the field type this field will actually use
 */
- (instancetype)initWithOrgJodaTimeFieldRemainderDateTimeField:(OrgJodaTimeFieldRemainderDateTimeField *)remainderField
                                  withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)rangeField
                              withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type;

/*!
 @brief Add the specified amount of scaled units to the specified time
 instant.
 The amount added may be negative.
 @param instant  the time instant in millis to update.
 @param amount  the amount of scaled units to add (can be negative).
 @return the updated time instant.
 */
- (jlong)addWithLong:(jlong)instant
             withInt:(jint)amount;

/*!
 @brief Add the specified amount of scaled units to the specified time
 instant.
 The amount added may be negative.
 @param instant  the time instant in millis to update.
 @param amount  the amount of scaled units to add (can be negative).
 @return the updated time instant.
 */
- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)amount;

/*!
 @brief Add to the scaled component of the specified time instant,
 wrapping around within that component if necessary.
 @param instant  the time instant in millis to update.
 @param amount  the amount of scaled units to add (can be negative).
 @return the updated time instant.
 */
- (jlong)addWrapFieldWithLong:(jlong)instant
                      withInt:(jint)amount;

/*!
 @brief Get the amount of scaled units from the specified time instant.
 @param instant  the time instant in millis to query.
 @return the amount of scaled units extracted from the input.
 */
- (jint)getWithLong:(jlong)instant;

- (jint)getDifferenceWithLong:(jlong)minuendInstant
                     withLong:(jlong)subtrahendInstant;

- (jlong)getDifferenceAsLongWithLong:(jlong)minuendInstant
                            withLong:(jlong)subtrahendInstant;

/*!
 @brief Returns the divisor applied, in the field's units.
 @return the divisor
 */
- (jint)getDivisor;

/*!
 @brief Returns a scaled version of the wrapped field's unit duration field.
 */
- (OrgJodaTimeDurationField *)getDurationField;

/*!
 @brief Get the maximum value for the field.
 @return the maximum value
 */
- (jint)getMaximumValue;

/*!
 @brief Get the minimum value for the field.
 @return the minimum value
 */
- (jint)getMinimumValue;

- (OrgJodaTimeDurationField *)getRangeDurationField;

- (jlong)remainderWithLong:(jlong)instant;

- (jlong)roundFloorWithLong:(jlong)instant;

/*!
 @brief Set the specified amount of scaled units to the specified time instant.
 @param instant  the time instant in millis to update.
 @param value  value of scaled units to set.
 @return the updated time instant.
 @throws IllegalArgumentException if value is too large or too small.
 */
- (jlong)setWithLong:(jlong)instant
             withInt:(jint)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFieldDividedDateTimeField)

J2OBJC_FIELD_SETTER(OrgJodaTimeFieldDividedDateTimeField, iDurationField_, OrgJodaTimeDurationField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFieldDividedDateTimeField, iRangeDurationField_, OrgJodaTimeDurationField *)

FOUNDATION_EXPORT void OrgJodaTimeFieldDividedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeFieldDividedDateTimeField *self, OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type, jint divisor);

FOUNDATION_EXPORT OrgJodaTimeFieldDividedDateTimeField *new_OrgJodaTimeFieldDividedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type, jint divisor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFieldDividedDateTimeField *create_OrgJodaTimeFieldDividedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type, jint divisor);

FOUNDATION_EXPORT void OrgJodaTimeFieldDividedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeFieldDividedDateTimeField *self, OrgJodaTimeDateTimeField *field, OrgJodaTimeDurationField *rangeField, OrgJodaTimeDateTimeFieldType *type, jint divisor);

FOUNDATION_EXPORT OrgJodaTimeFieldDividedDateTimeField *new_OrgJodaTimeFieldDividedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeDateTimeField *field, OrgJodaTimeDurationField *rangeField, OrgJodaTimeDateTimeFieldType *type, jint divisor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFieldDividedDateTimeField *create_OrgJodaTimeFieldDividedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeDateTimeField *field, OrgJodaTimeDurationField *rangeField, OrgJodaTimeDateTimeFieldType *type, jint divisor);

FOUNDATION_EXPORT void OrgJodaTimeFieldDividedDateTimeField_initWithOrgJodaTimeFieldRemainderDateTimeField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeFieldDividedDateTimeField *self, OrgJodaTimeFieldRemainderDateTimeField *remainderField, OrgJodaTimeDateTimeFieldType *type);

FOUNDATION_EXPORT OrgJodaTimeFieldDividedDateTimeField *new_OrgJodaTimeFieldDividedDateTimeField_initWithOrgJodaTimeFieldRemainderDateTimeField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeFieldRemainderDateTimeField *remainderField, OrgJodaTimeDateTimeFieldType *type) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFieldDividedDateTimeField *create_OrgJodaTimeFieldDividedDateTimeField_initWithOrgJodaTimeFieldRemainderDateTimeField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeFieldRemainderDateTimeField *remainderField, OrgJodaTimeDateTimeFieldType *type);

FOUNDATION_EXPORT void OrgJodaTimeFieldDividedDateTimeField_initWithOrgJodaTimeFieldRemainderDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeFieldDividedDateTimeField *self, OrgJodaTimeFieldRemainderDateTimeField *remainderField, OrgJodaTimeDurationField *rangeField, OrgJodaTimeDateTimeFieldType *type);

FOUNDATION_EXPORT OrgJodaTimeFieldDividedDateTimeField *new_OrgJodaTimeFieldDividedDateTimeField_initWithOrgJodaTimeFieldRemainderDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeFieldRemainderDateTimeField *remainderField, OrgJodaTimeDurationField *rangeField, OrgJodaTimeDateTimeFieldType *type) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFieldDividedDateTimeField *create_OrgJodaTimeFieldDividedDateTimeField_initWithOrgJodaTimeFieldRemainderDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeFieldRemainderDateTimeField *remainderField, OrgJodaTimeDurationField *rangeField, OrgJodaTimeDateTimeFieldType *type);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldDividedDateTimeField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFieldDividedDateTimeField")
