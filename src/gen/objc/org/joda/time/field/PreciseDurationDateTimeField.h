//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/field/PreciseDurationDateTimeField.java
//

#ifndef _OrgJodaTimeFieldPreciseDurationDateTimeField_H_
#define _OrgJodaTimeFieldPreciseDurationDateTimeField_H_

#include "J2ObjC_header.h"
#include "org/joda/time/field/BaseDateTimeField.h"

@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDurationField;

/*!
 @brief Precise datetime field, which has a precise unit duration field.
 <p>
 PreciseDurationDateTimeField is thread-safe and immutable, and its
 subclasses must be as well.
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeFieldPreciseDurationDateTimeField : OrgJodaTimeFieldBaseDateTimeField {
 @public
  /*!
   @brief The fractional unit in millis
   */
  jlong iUnitMillis_;
}

#pragma mark Public

/*!
 @brief Constructor.
 @param type  the field type
 @param unit  precise unit duration, like "days()".
 @throws IllegalArgumentException if duration field is imprecise
 @throws IllegalArgumentException if unit milliseconds is less than one
 */
- (instancetype)initWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type
                        withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)unit;

/*!
 @brief Returns the duration per unit value of this field.
 For example, if this
 field represents "minute of hour", then the duration field is minutes.
 @return the duration of this field, or UnsupportedDurationField if field
 has no duration
 */
- (OrgJodaTimeDurationField *)getDurationField;

/*!
 @brief Get the minimum value for the field.
 @return the minimum value
 */
- (jint)getMinimumValue;

- (jlong)getUnitMillis;

/*!
 @brief Returns false by default.
 */
- (jboolean)isLenient;

/*!
 @brief This method assumes that this field is properly rounded on
 1970-01-01T00:00:00.
 If the rounding alignment differs, override this
 method as follows:
 @code

  return super.remainder(instant + ALIGNMENT_MILLIS);
  
@endcode
 */
- (jlong)remainderWithLong:(jlong)instant;

/*!
 @brief This method assumes that this field is properly rounded on
 1970-01-01T00:00:00.
 If the rounding alignment differs, override this
 method as follows:
 @code

  return super.roundCeiling(instant + ALIGNMENT_MILLIS) - ALIGNMENT_MILLIS;
  
@endcode
 */
- (jlong)roundCeilingWithLong:(jlong)instant;

/*!
 @brief This method assumes that this field is properly rounded on
 1970-01-01T00:00:00.
 If the rounding alignment differs, override this
 method as follows:
 @code

  return super.roundFloor(instant + ALIGNMENT_MILLIS) - ALIGNMENT_MILLIS;
  
@endcode
 */
- (jlong)roundFloorWithLong:(jlong)instant;

/*!
 @brief Set the specified amount of units to the specified time instant.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to set in
 @param value  value of units to set.
 @return the updated time instant.
 @throws IllegalArgumentException if value is too large or too small.
 */
- (jlong)setWithLong:(jlong)instant
             withInt:(jint)value;

#pragma mark Protected

/*!
 @brief Called by the set method to get the maximum allowed value.
 By default,
 returns getMaximumValue(instant). Override to provide a faster
 implementation.
 */
- (jint)getMaximumValueForSetWithLong:(jlong)instant
                              withInt:(jint)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFieldPreciseDurationDateTimeField)

FOUNDATION_EXPORT void OrgJodaTimeFieldPreciseDurationDateTimeField_initWithOrgJodaTimeDateTimeFieldType_withOrgJodaTimeDurationField_(OrgJodaTimeFieldPreciseDurationDateTimeField *self, OrgJodaTimeDateTimeFieldType *type, OrgJodaTimeDurationField *unit);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldPreciseDurationDateTimeField)

#endif // _OrgJodaTimeFieldPreciseDurationDateTimeField_H_
