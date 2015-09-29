//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/DateTimeField.java
//

#ifndef _OrgJodaTimeDateTimeField_H_
#define _OrgJodaTimeDateTimeField_H_

#include "J2ObjC_header.h"

@class IOSIntArray;
@class JavaUtilLocale;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDurationField;
@protocol OrgJodaTimeReadablePartial;

/*!
 @brief Defines the calculation engine for date and time fields.
 The interface defines a set of methods that manipulate a millisecond datetime
 with regards to a single field, such as monthOfYear or secondOfMinute.
 <p>
 This design is extensible so, if you wish, you can extract a different field from
 the milliseconds. A number of standard implementations are provided to assist.
 @author Guy Allard
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeDateTimeField : NSObject

#pragma mark Public

- (instancetype)init;

/*!
 @brief Adds a value (which may be negative) to the millis value,
 overflowing into larger fields if necessary.
 <p>
 The value will be added to this field. If the value is too large to be
 added solely to this field, larger fields will increase as required.
 Smaller fields should be unaffected, except where the result would be
 an invalid value for a smaller field. In this case the smaller field is
 adjusted to be in range.
 <p>
 For example, in the ISO chronology:<br>
 2000-08-20 add six months is 2001-02-20<br>
 2000-08-20 add twenty months is 2002-04-20<br>
 2000-08-20 add minus nine months is 1999-11-20<br>
 2001-01-31 add one month  is 2001-02-28<br>
 2001-01-31 add two months is 2001-03-31<br>
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to add to
 @param value  the value to add, in the units of the field
 @return the updated milliseconds
 */
- (jlong)addWithLong:(jlong)instant
             withInt:(jint)value;

/*!
 @brief Adds a value (which may be negative) to the millis value,
 overflowing into larger fields if necessary.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to add to
 @param value  the long value to add, in the units of the field
 @return the updated milliseconds
 @throws IllegalArgumentException if value is too large
 */
- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)value;

/*!
 @brief Adds a value (which may be negative) to the partial instant,
 throwing an exception if the maximum size of the instant is reached.
 <p>
 The value will be added to this field, overflowing into larger fields
 if necessary. Smaller fields should be unaffected, except where the
 result would be an invalid value for a smaller field. In this case the
 smaller field is adjusted to be in range.
 <p>
 Partial instants only contain some fields. This may result in a maximum
 possible value, such as TimeOfDay being limited to 23:59:59:999. If this
 limit is breached by the add an exception is thrown.
 <p>
 For example, in the ISO chronology:<br>
 2000-08-20 add six months is 2000-02-20<br>
 2000-08-20 add twenty months is 2000-04-20<br>
 2000-08-20 add minus nine months is 2000-11-20<br>
 2001-01-31 add one month  is 2001-02-28<br>
 2001-01-31 add two months is 2001-03-31<br>
 @param instant  the partial instant
 @param fieldIndex  the index of this field in the instant
 @param values  the values of the partial instant which should be updated
 @param valueToAdd  the value to add, in the units of the field
 @return the passed in values
 @throws IllegalArgumentException if the value is invalid or the maximum instant is reached
 */
- (IOSIntArray *)addWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant
                                           withInt:(jint)fieldIndex
                                      withIntArray:(IOSIntArray *)values
                                           withInt:(jint)valueToAdd;

/*!
 @brief Adds a value (which may be negative) to the millis value,
 wrapping within this field.
 <p>
 The value will be added to this field. If the value is too large to be
 added solely to this field then it wraps. Larger fields are always
 unaffected. Smaller fields should be unaffected, except where the
 result would be an invalid value for a smaller field. In this case the
 smaller field is adjusted to be in range.
 <p>
 For example, in the ISO chronology:<br>
 2000-08-20 addWrapField six months is 2000-02-20<br>
 2000-08-20 addWrapField twenty months is 2000-04-20<br>
 2000-08-20 addWrapField minus nine months is 2000-11-20<br>
 2001-01-31 addWrapField one month  is 2001-02-28<br>
 2001-01-31 addWrapField two months is 2001-03-31<br>
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to add to
 @param value  the value to add, in the units of the field
 @return the updated milliseconds
 */
- (jlong)addWrapFieldWithLong:(jlong)instant
                      withInt:(jint)value;

/*!
 @brief Adds a value (which may be negative) to the partial instant,
 wrapping within this field.
 <p>
 The value will be added to this field. If the value is too large to be
 added solely to this field then it wraps. Larger fields are always
 unaffected. Smaller fields should be unaffected, except where the
 result would be an invalid value for a smaller field. In this case the
 smaller field is adjusted to be in range.
 <p>
 For example, in the ISO chronology:<br>
 2000-08-20 addWrapField six months is 2000-02-20<br>
 2000-08-20 addWrapField twenty months is 2000-04-20<br>
 2000-08-20 addWrapField minus nine months is 2000-11-20<br>
 2001-01-31 addWrapField one month  is 2001-02-28<br>
 2001-01-31 addWrapField two months is 2001-03-31<br>
 @param instant  the partial instant
 @param fieldIndex  the index of this field in the instant
 @param values  the values of the partial instant which should be updated
 @param valueToAdd  the value to add, in the units of the field
 @return the passed in values
 @throws IllegalArgumentException if the value is invalid
 */
- (IOSIntArray *)addWrapFieldWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant
                                                    withInt:(jint)fieldIndex
                                               withIntArray:(IOSIntArray *)values
                                                    withInt:(jint)valueToAdd;

/*!
 @brief Adds a value (which may be negative) to the partial instant,
 wrapping the whole partial if the maximum size of the partial is reached.
 <p>
 The value will be added to this field, overflowing into larger fields
 if necessary. Smaller fields should be unaffected, except where the
 result would be an invalid value for a smaller field. In this case the
 smaller field is adjusted to be in range.
 <p>
 Partial instants only contain some fields. This may result in a maximum
 possible value, such as TimeOfDay normally being limited to 23:59:59:999.
 If ths limit is reached by the addition, this method will wrap back to
 00:00:00.000. In fact, you would generally only use this method for
 classes that have a limitation such as this.
 <p>
 For example, in the ISO chronology:<br>
 10:20:30 add 20 minutes is 10:40:30<br>
 10:20:30 add 45 minutes is 11:05:30<br>
 10:20:30 add 16 hours is 02:20:30<br>
 @param instant  the partial instant
 @param fieldIndex  the index of this field in the partial
 @param values  the values of the partial instant which should be updated
 @param valueToAdd  the value to add, in the units of the field
 @return the passed in values
 @throws IllegalArgumentException if the value is invalid or the maximum instant is reached
 */
- (IOSIntArray *)addWrapPartialWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant
                                                      withInt:(jint)fieldIndex
                                                 withIntArray:(IOSIntArray *)values
                                                      withInt:(jint)valueToAdd;

/*!
 @brief Get the value of this field from the milliseconds.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to query
 @return the value of the field, in the units of the field
 */
- (jint)getWithLong:(jlong)instant;

/*!
 @brief Get the human-readable, short text value of this field from the field value.
 If the specified locale is null, the default locale is used.
 @param fieldValue  the numeric value to convert to text
 @param locale the locale to use for selecting a text symbol, null for default
 @return the text value of the field
 */
- (NSString *)getAsShortTextWithInt:(jint)fieldValue
                 withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Get the human-readable, short text value of this field from the
 milliseconds.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to query
 @return the short text value of the field
 */
- (NSString *)getAsShortTextWithLong:(jlong)instant;

/*!
 @brief Get the human-readable, short text value of this field from the
 milliseconds.
 If the specified locale is null, the default locale is used.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to query
 @param locale the locale to use for selecting a text symbol, null for default
 @return the short text value of the field
 */
- (NSString *)getAsShortTextWithLong:(jlong)instant
                  withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Get the human-readable, short text value of this field from a partial instant.
 If the specified locale is null, the default locale is used.
 @param partial  the partial instant to query
 @param fieldValue  the field value of this field, provided for performance
 @param locale  the locale to use for selecting a text symbol, null for default
 @return the text value of the field
 */
- (NSString *)getAsShortTextWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                                                   withInt:(jint)fieldValue
                                        withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Get the human-readable, short text value of this field from a partial instant.
 If the specified locale is null, the default locale is used.
 @param partial  the partial instant to query
 @param locale  the locale to use for selecting a text symbol, null for default
 @return the text value of the field
 */
- (NSString *)getAsShortTextWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                                        withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Get the human-readable, text value of this field from the field value.
 If the specified locale is null, the default locale is used.
 @param fieldValue  the numeric value to convert to text
 @param locale the locale to use for selecting a text symbol, null for default
 @return the text value of the field
 */
- (NSString *)getAsTextWithInt:(jint)fieldValue
            withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Get the human-readable, text value of this field from the milliseconds.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to query
 @return the text value of the field
 */
- (NSString *)getAsTextWithLong:(jlong)instant;

/*!
 @brief Get the human-readable, text value of this field from the milliseconds.
 If the specified locale is null, the default locale is used.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to query
 @param locale the locale to use for selecting a text symbol, null for default
 @return the text value of the field
 */
- (NSString *)getAsTextWithLong:(jlong)instant
             withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Get the human-readable, text value of this field from a partial instant.
 If the specified locale is null, the default locale is used.
 @param partial  the partial instant to query
 @param fieldValue  the field value of this field, provided for performance
 @param locale  the locale to use for selecting a text symbol, null for default
 @return the text value of the field
 */
- (NSString *)getAsTextWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                                              withInt:(jint)fieldValue
                                   withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Get the human-readable, text value of this field from a partial instant.
 If the specified locale is null, the default locale is used.
 @param partial  the partial instant to query
 @param locale  the locale to use for selecting a text symbol, null for default
 @return the text value of the field
 */
- (NSString *)getAsTextWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                                   withJavaUtilLocale:(JavaUtilLocale *)locale;

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
 @param minuendInstant the milliseconds from 1970-01-01T00:00:00Z to
 subtract from
 @param subtrahendInstant the milliseconds from 1970-01-01T00:00:00Z to
 subtract off the minuend
 @return the difference in the units of this field
 */
- (jlong)getDifferenceAsLongWithLong:(jlong)minuendInstant
                            withLong:(jlong)subtrahendInstant;

/*!
 @brief Returns the duration per unit value of this field.
 For example, if this
 field represents "hour of day", then the duration is an hour.
 @return the duration of this field, or UnsupportedDurationField if field
 has no duration
 */
- (OrgJodaTimeDurationField *)getDurationField;

/*!
 @brief Gets the amount by which this field is 'leap' for the specified instant.
 <p>
 For example, a leap year would return one, a non leap year would return
 zero.
 @param instant  the instant to check for leap status
 @return the amount, in units of the leap duration field, that the field is leap
 */
- (jint)getLeapAmountWithLong:(jlong)instant;

/*!
 @brief If this field were to leap, then it would be in units described by the
 returned duration.
 If this field doesn't ever leap, null is returned.
 @return the leap duration field if field can be leap, null if it can't
 */
- (OrgJodaTimeDurationField *)getLeapDurationField;

/*!
 @brief Get the maximum short text value for this field.
 @param locale  the locale to use for selecting a text symbol
 @return the maximum short text length
 */
- (jint)getMaximumShortTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Get the maximum text value for this field.
 @param locale  the locale to use for selecting a text symbol
 @return the maximum text length
 */
- (jint)getMaximumTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Get the maximum allowable value for this field.
 @return the maximum valid value for this field, in the units of the
 field
 */
- (jint)getMaximumValue;

/*!
 @brief Get the maximum value for this field evaluated at the specified time.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to query
 @return the maximum value for this field, in the units of the field
 */
- (jint)getMaximumValueWithLong:(jlong)instant;

/*!
 @brief Get the maximum value for this field evaluated at the specified time.
 @param instant  the partial instant to query
 @return the maximum value for this field, in the units of the field
 */
- (jint)getMaximumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant;

/*!
 @brief Get the maximum value for this field using the partial instant and
 the specified values.
 @param instant  the partial instant to query
 @param values  the values to use
 @return the maximum value for this field, in the units of the field
 */
- (jint)getMaximumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant
                                         withIntArray:(IOSIntArray *)values;

/*!
 @brief Get the minimum allowable value for this field.
 @return the minimum valid value for this field, in the units of the
 field
 */
- (jint)getMinimumValue;

/*!
 @brief Get the minimum value for this field evaluated at the specified time.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to query
 @return the minimum value for this field, in the units of the field
 */
- (jint)getMinimumValueWithLong:(jlong)instant;

/*!
 @brief Get the minimum value for this field evaluated at the specified time.
 @param instant  the partial instant to query
 @return the minimum value for this field, in the units of the field
 */
- (jint)getMinimumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant;

/*!
 @brief Get the minimum value for this field using the partial instant and
 the specified values.
 @param instant  the partial instant to query
 @param values  the values to use
 @return the minimum value for this field, in the units of the field
 */
- (jint)getMinimumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant
                                         withIntArray:(IOSIntArray *)values;

/*!
 @brief Get the name of the field.
 <p>
 By convention, names follow a pattern of "dddOfRrr", where "ddd" represents
 the (singular) duration unit field name and "Rrr" represents the (singular)
 duration range field name. If the range field is not applicable, then
 the name of the field is simply the (singular) duration field name.
 @return field name
 */
- (NSString *)getName;

/*!
 @brief Returns the range duration of this field.
 For example, if this field
 represents "hour of day", then the range duration is a day.
 @return the range duration of this field, or null if field has no range
 */
- (OrgJodaTimeDurationField *)getRangeDurationField;

/*!
 @brief Get the type of the field.
 @return field type
 */
- (OrgJodaTimeDateTimeFieldType *)getType;

/*!
 @brief Returns whether this field is 'leap' for the specified instant.
 <p>
 For example, a leap year would return true, a non leap year would return
 false.
 @param instant  the instant to check for leap status
 @return true if the field is 'leap'
 */
- (jboolean)isLeapWithLong:(jlong)instant;

/*!
 @brief Returns true if the set method is lenient.
 If so, it accepts values that
 are out of bounds. For example, a lenient day of month field accepts 32
 for January, converting it to February 1.
 @return true if this field is lenient
 */
- (jboolean)isLenient;

/*!
 @brief Returns true if this field is supported.
 @return true if this field is supported
 */
- (jboolean)isSupported;

/*!
 @brief Returns the fractional duration milliseconds of this field.
 In other
 words, calling remainder returns the duration that roundFloor would
 subtract.
 <p>
 For example, on a datetime of 2002-11-02T23:34:56.789, the remainder by
 hour is 34 minutes and 56.789 seconds.
 @param instant the milliseconds from 1970-01-01T00:00:00Z to get the
 remainder
 @return remainder duration, in milliseconds
 */
- (jlong)remainderWithLong:(jlong)instant;

/*!
 @brief Round to the highest whole unit of this field.
 The value of this field
 and all fields of a higher magnitude may be incremented in order to
 achieve this result. The fractional millis that cannot be expressed in
 whole increments of this field are set to minimum.
 <p>
 For example, a datetime of 2002-11-02T23:34:56.789, rounded to the
 highest whole hour is 2002-11-03T00:00:00.000.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to round
 @return rounded milliseconds
 */
- (jlong)roundCeilingWithLong:(jlong)instant;

/*!
 @brief Round to the lowest whole unit of this field.
 After rounding, the value
 of this field and all fields of a higher magnitude are retained. The
 fractional millis that cannot be expressed in whole increments of this
 field are set to minimum.
 <p>
 For example, a datetime of 2002-11-02T23:34:56.789, rounded to the
 lowest whole hour is 2002-11-02T23:00:00.000.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to round
 @return rounded milliseconds
 */
- (jlong)roundFloorWithLong:(jlong)instant;

/*!
 @brief Round to the nearest whole unit of this field.
 If the given millisecond
 value is closer to the floor, this function behaves like roundFloor. If
 the millisecond value is closer to the ceiling or is exactly halfway,
 this function behaves like roundCeiling.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to round
 @return rounded milliseconds
 */
- (jlong)roundHalfCeilingWithLong:(jlong)instant;

/*!
 @brief Round to the nearest whole unit of this field.
 If the given millisecond
 value is closer to the floor, this function behaves like roundFloor. If
 the millisecond value is closer to the ceiling, this function behaves
 like roundCeiling.
 <p>
 If the millisecond value is exactly halfway between the floor and
 ceiling, the ceiling is chosen over the floor only if it makes this
 field's value even.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to round
 @return rounded milliseconds
 */
- (jlong)roundHalfEvenWithLong:(jlong)instant;

/*!
 @brief Round to the nearest whole unit of this field.
 If the given millisecond
 value is closer to the floor or is exactly halfway, this function
 behaves like roundFloor. If the millisecond value is closer to the
 ceiling, this function behaves like roundCeiling.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to round
 @return rounded milliseconds
 */
- (jlong)roundHalfFloorWithLong:(jlong)instant;

/*!
 @brief Sets a value in the milliseconds supplied.
 <p>
 The value of this field will be set.
 If the value is invalid, an exception if thrown.
 <p>
 If setting this field would make other fields invalid, then those fields
 may be changed. For example if the current date is the 31st January, and
 the month is set to February, the day would be invalid. Instead, the day
 would be changed to the closest value - the 28th/29th February as appropriate.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to set in
 @param value  the value to set, in the units of the field
 @return the updated milliseconds
 @throws IllegalArgumentException if the value is invalid
 */
- (jlong)setWithLong:(jlong)instant
             withInt:(jint)value;

/*!
 @brief Sets a value in the milliseconds supplied from a human-readable, text value.
 <p>
 If setting this field would make other fields invalid, then those fields
 may be changed. For example if the current date is the 31st January, and
 the month is set to February, the day would be invalid. Instead, the day
 would be changed to the closest value - the 28th/29th February as appropriate.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to set in
 @param text  the text value to set
 @return the updated milliseconds
 @throws IllegalArgumentException if the text value is invalid
 */
- (jlong)setWithLong:(jlong)instant
        withNSString:(NSString *)text;

/*!
 @brief Sets a value in the milliseconds supplied from a human-readable, text value.
 If the specified locale is null, the default locale is used.
 <p>
 If setting this field would make other fields invalid, then those fields
 may be changed. For example if the current date is the 31st January, and
 the month is set to February, the day would be invalid. Instead, the day
 would be changed to the closest value - the 28th/29th February as appropriate.
 @param instant  the milliseconds from 1970-01-01T00:00:00Z to set in
 @param text  the text value to set
 @param locale the locale to use for selecting a text symbol, null for default
 @return the updated milliseconds
 @throws IllegalArgumentException if the text value is invalid
 */
- (jlong)setWithLong:(jlong)instant
        withNSString:(NSString *)text
  withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Sets a value using the specified partial instant.
 <p>
 The value of this field (specified by the index) will be set.
 If the value is invalid, an exception if thrown.
 <p>
 If setting this field would make other fields invalid, then those fields
 may be changed. For example if the current date is the 31st January, and
 the month is set to February, the day would be invalid. Instead, the day
 would be changed to the closest value - the 28th/29th February as appropriate.
 @param instant  the partial instant
 @param fieldIndex  the index of this field in the instant
 @param values  the values of the partial instant which should be updated
 @param newValue  the value to set, in the units of the field
 @return the passed in values
 @throws IllegalArgumentException if the value is invalid
 */
- (IOSIntArray *)setWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant
                                           withInt:(jint)fieldIndex
                                      withIntArray:(IOSIntArray *)values
                                           withInt:(jint)newValue;

/*!
 @brief Sets a value in the milliseconds supplied from a human-readable, text value.
 If the specified locale is null, the default locale is used.
 <p>
 If setting this field would make other fields invalid, then those fields
 may be changed. For example if the current date is the 31st January, and
 the month is set to February, the day would be invalid. Instead, the day
 would be changed to the closest value - the 28th/29th February as appropriate.
 @param instant  the partial instant
 @param fieldIndex  the index of this field in the instant
 @param values  the values of the partial instant which should be updated
 @param text  the text value to set
 @param locale the locale to use for selecting a text symbol, null for default
 @return the passed in values
 @throws IllegalArgumentException if the text value is invalid
 */
- (IOSIntArray *)setWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant
                                           withInt:(jint)fieldIndex
                                      withIntArray:(IOSIntArray *)values
                                      withNSString:(NSString *)text
                                withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Get a suitable debug string.
 @return debug string
 */
- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeDateTimeField)

FOUNDATION_EXPORT void OrgJodaTimeDateTimeField_init(OrgJodaTimeDateTimeField *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeDateTimeField)

#endif // _OrgJodaTimeDateTimeField_H_
