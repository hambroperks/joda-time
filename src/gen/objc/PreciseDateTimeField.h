//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/field/PreciseDateTimeField.java
//

#ifndef _OrgJodaTimeFieldPreciseDateTimeField_H_
#define _OrgJodaTimeFieldPreciseDateTimeField_H_

@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDurationField;

#import "JreEmulation.h"
#include "PreciseDurationDateTimeField.h"

#define OrgJodaTimeFieldPreciseDateTimeField_serialVersionUID -5586801265774496376LL

/**
 @brief Precise datetime field, composed of two precise duration fields.
 <p> This DateTimeField is useful for defining DateTimeFields that are composed of precise durations, like time of day fields. If either duration field is imprecise, then an ImpreciseDateTimeField may be used instead. <p> PreciseDateTimeField is thread-safe and immutable.
 @author Brian S O'Neill
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeFieldPreciseDateTimeField : OrgJodaTimeFieldPreciseDurationDateTimeField {
 @public
  /**
   @brief The maximum range in the correct units
   */
  int iRange_;
  OrgJodaTimeDurationField *iRangeField_;
}

/**
 @brief Constructor.
 @param type the field type this field uses
 @param unit precise unit duration, like "seconds()".
 @param range precise range duration, preferably a multiple of the unit, like "minutes()".
 @throws IllegalArgumentException if either duration field is imprecise
 @throws IllegalArgumentException if unit milliseconds is less than one or effective value range is less than two.
 */
- (instancetype)initWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type
                        withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)unit
                        withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)range;

/**
 @brief Get the amount of fractional units from the specified time instant.
 @param instant the milliseconds from 1970-01-01T00:00:00Z to query
 @return the amount of fractional units extracted from the input.
 */
- (int)getWithLong:(long long int)instant;

/**
 @brief Add to the component of the specified time instant, wrapping around within that component if necessary.
 @param instant the milliseconds from 1970-01-01T00:00:00Z to add to
 @param amount the amount of units to add (can be negative).
 @return the updated time instant.
 */
- (long long int)addWrapFieldWithLong:(long long int)instant
                              withInt:(int)amount;

/**
 @brief Set the specified amount of units to the specified time instant.
 @param instant the milliseconds from 1970-01-01T00:00:00Z to set in
 @param value value of units to set.
 @return the updated time instant.
 @throws IllegalArgumentException if value is too large or too small.
 */
- (long long int)setWithLong:(long long int)instant
                     withInt:(int)value;

/**
 @brief Returns the range duration of this field.
 For example, if this field represents "minute of hour", then the range duration field is an hours.
 @return the range duration of this field, or null if field has no range
 */
- (OrgJodaTimeDurationField *)getRangeDurationField;

/**
 @brief Get the maximum value for the field.
 @return the maximum value
 */
- (int)getMaximumValue;

/**
 @brief Returns the range of the field in the field's units.
 <p> For example, 60 for seconds per minute. The field is allowed values from 0 to range - 1.
 @return unit range
 */
- (int)getRange;

- (void)copyAllFieldsTo:(OrgJodaTimeFieldPreciseDateTimeField *)other;

@end

__attribute__((always_inline)) inline void OrgJodaTimeFieldPreciseDateTimeField_init() {}

J2OBJC_FIELD_SETTER(OrgJodaTimeFieldPreciseDateTimeField, iRangeField_, OrgJodaTimeDurationField *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeFieldPreciseDateTimeField, serialVersionUID, long long int)

#endif // _OrgJodaTimeFieldPreciseDateTimeField_H_
