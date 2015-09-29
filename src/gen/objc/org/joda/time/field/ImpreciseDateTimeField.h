//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/field/ImpreciseDateTimeField.java
//

#ifndef _OrgJodaTimeFieldImpreciseDateTimeField_H_
#define _OrgJodaTimeFieldImpreciseDateTimeField_H_

#include "J2ObjC_header.h"
#include "org/joda/time/field/BaseDateTimeField.h"

@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDurationField;

/*!
 @brief Abstract datetime field class that defines its own DurationField, which
 delegates back into this ImpreciseDateTimeField.
 <p>
 This DateTimeField is useful for defining DateTimeFields that are composed
 of imprecise durations. If both duration fields are precise, then a
 <code>PreciseDateTimeField</code> should be used instead.
 <p>
 When defining imprecise DateTimeFields where a matching DurationField is
 already available, just extend BaseDateTimeField directly so as not to
 create redundant DurationField instances.
 <p>
 ImpreciseDateTimeField is thread-safe and immutable, and its subclasses must
 be as well.
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeFieldImpreciseDateTimeField : OrgJodaTimeFieldBaseDateTimeField {
 @public
  jlong iUnitMillis_;
}

#pragma mark Public

/*!
 @brief Constructor.
 @param type  the field type
 @param unitMillis  the average duration unit milliseconds
 */
- (instancetype)initWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type
                                            withLong:(jlong)unitMillis;

- (jlong)addWithLong:(jlong)instant
             withInt:(jint)value;

- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)value;

- (jint)getWithLong:(jlong)instant;

/*!
 @brief Computes the difference between two instants, as measured in the units
 of this field.
 Any fractional units are dropped from the result. Calling
 getDifference reverses the effect of calling add. In the following code:
 @code

  long instant = ...
  int v = ...
  int age = getDifference(add(instant, v), instant);
  
@endcode
 The value 'age' is the same as the value 'v'.
 <p>
 The default implementation call getDifferenceAsLong and converts the
 return value to an int.
 @param minuendInstant the milliseconds from 1970-01-01T00:00:00Z to
 subtract from
 @param subtrahendInstant the milliseconds from 1970-01-01T00:00:00Z to
 subtract off the minuend
 @return the difference in the units of this field
 */
- (jint)getDifferenceWithLong:(jlong)minuendInstant
                     withLong:(jlong)subtrahendInstant;

/*!
 @brief Computes the difference between two instants, as measured in the units
 of this field.
 Any fractional units are dropped from the result. Calling
 getDifference reverses the effect of calling add. In the following code:
 @code

  long instant = ...
  long v = ...
  long age = getDifferenceAsLong(add(instant, v), instant);
  
@endcode
 The value 'age' is the same as the value 'v'.
 <p>
 The default implementation performs a guess-and-check algorithm using
 getDurationField().getUnitMillis() and the add() method. Subclasses are
 encouraged to provide a more efficient implementation.
 @param minuendInstant the milliseconds from 1970-01-01T00:00:00Z to
 subtract from
 @param subtrahendInstant the milliseconds from 1970-01-01T00:00:00Z to
 subtract off the minuend
 @return the difference in the units of this field
 */
- (jlong)getDifferenceAsLongWithLong:(jlong)minuendInstant
                            withLong:(jlong)subtrahendInstant;

- (OrgJodaTimeDurationField *)getDurationField;

- (OrgJodaTimeDurationField *)getRangeDurationField;

- (jlong)roundFloorWithLong:(jlong)instant;

- (jlong)setWithLong:(jlong)instant
             withInt:(jint)value;

#pragma mark Protected

- (jlong)getDurationUnitMillis;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFieldImpreciseDateTimeField)

FOUNDATION_EXPORT void OrgJodaTimeFieldImpreciseDateTimeField_initWithOrgJodaTimeDateTimeFieldType_withLong_(OrgJodaTimeFieldImpreciseDateTimeField *self, OrgJodaTimeDateTimeFieldType *type, jlong unitMillis);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldImpreciseDateTimeField)

#endif // _OrgJodaTimeFieldImpreciseDateTimeField_H_
