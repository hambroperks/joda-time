//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/Partial.java
//

#ifndef _OrgJodaTimePartial_H_
#define _OrgJodaTimePartial_H_

@class IOSIntArray;
@class IOSObjectArray;
@class JavaUtilLocale;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDurationFieldType;
@class OrgJodaTimeFormatDateTimeFormatter;
@class OrgJodaTimePartial_Property;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadablePeriod;

#import "JreEmulation.h"
#include "AbstractPartial.h"
#include "AbstractPartialFieldProperty.h"
#include "ReadablePartial.h"
#include "java/io/Serializable.h"

#define OrgJodaTimePartial_serialVersionUID 12324121189002LL

/**
 @brief Partial is an immutable partial datetime supporting any set of datetime fields.
 <p> A Partial instance can be used to hold any combination of fields. The instance does not contain a time zone, so any datetime is local. <p> A Partial can be matched against an instant using #isMatch(ReadableInstant) . This method compares each field on this partial with those of the instant and determines if the partial matches the instant. Given this definition, an empty Partial instance represents any datetime and always matches. <p> Calculations on Partial are performed using a Chronology . This chronology is set to be in the UTC time zone for all calculations. <p> Each individual field can be queried in two ways: <ul> <li><code>get(DateTimeFieldType.monthOfYear())</code> <li><code>property(DateTimeFieldType.monthOfYear()).get()</code> </ul> The second technique also provides access to other useful methods on the field: <ul> <li>numeric value - <code>monthOfYear().get()</code> <li>text value - <code>monthOfYear().getAsText()</code> <li>short text value - <code>monthOfYear().getAsShortText()</code> <li>maximum/minimum values - <code>monthOfYear().getMaximumValue()</code> <li>add/subtract - <code>monthOfYear().addToCopy()</code> <li>set - <code>monthOfYear().setCopy()</code> </ul> <p> Partial is thread-safe and immutable, provided that the Chronology is as well. All standard Chronology classes supplied are thread-safe and immutable.
 @author Stephen Colebourne
 @since 1.1
 */
@interface OrgJodaTimePartial : OrgJodaTimeBaseAbstractPartial < OrgJodaTimeReadablePartial, JavaIoSerializable > {
 @public
  /**
   @brief The chronology in use.
   */
  OrgJodaTimeChronology *iChronology_;
  /**
   @brief The set of field types.
   */
  IOSObjectArray *iTypes_;
  /**
   @brief The values of each field in this partial.
   */
  IOSIntArray *iValues_;
  /**
   @brief The formatter to use, [0] may miss some fields, [1] doesn't miss any fields.
   */
  IOSObjectArray *iFormatter_;
}

/**
 @brief Constructs a Partial with no fields or values, which can be considered to represent any date.
 <p> This is most useful when constructing partials, for example: <pre> Partial p = new Partial() .with(DateTimeFieldType.dayOfWeek(), 5) .with(DateTimeFieldType.hourOfDay(), 12) .with(DateTimeFieldType.minuteOfHour(), 20); </pre> Note that, although this is a clean way to write code, it is fairly inefficient internally. <p> The constructor uses the default ISO chronology.
 */
- (instancetype)init;

/**
 @brief Constructs a Partial with no fields or values, which can be considered to represent any date.
 <p> This is most useful when constructing partials, for example: <pre> Partial p = new Partial(chrono) .with(DateTimeFieldType.dayOfWeek(), 5) .with(DateTimeFieldType.hourOfDay(), 12) .with(DateTimeFieldType.minuteOfHour(), 20); </pre> Note that, although this is a clean way to write code, it is fairly inefficient internally.
 @param chrono the chronology, null means ISO
 */
- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/**
 @brief Constructs a Partial with the specified field and value.
 <p> The constructor uses the default ISO chronology.
 @param type the single type to create the partial from, not null
 @param value the value to store
 @throws IllegalArgumentException if the type or value is invalid
 */
- (instancetype)initWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type
                                             withInt:(int)value;

/**
 @brief Constructs a Partial with the specified field and value.
 <p> The constructor uses the specified chronology.
 @param type the single type to create the partial from, not null
 @param value the value to store
 @param chronology the chronology, null means ISO
 @throws IllegalArgumentException if the type or value is invalid
 */
- (instancetype)initWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type
                                             withInt:(int)value
                           withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Constructs a Partial with the specified fields and values.
 The fields must be specified in the order largest to smallest. For year and weekyear fields with equal duration, year is defined as being larger than weekyear. <p> The constructor uses the specified chronology.
 @param types the types to create the partial from, not null
 @param values the values to store, not null
 @throws IllegalArgumentException if the types or values are invalid
 */
- (instancetype)initWithOrgJodaTimeDateTimeFieldTypeArray:(IOSObjectArray *)types
                                             withIntArray:(IOSIntArray *)values;

/**
 @brief Constructs a Partial with the specified fields and values.
 The fields must be specified in the order largest to smallest. For year and weekyear fields with equal duration, year is defined as being larger than weekyear. <p> The constructor uses the specified chronology.
 @param types the types to create the partial from, not null
 @param values the values to store, not null
 @param chronology the chronology, null means ISO
 @throws IllegalArgumentException if the types or values are invalid
 */
- (instancetype)initWithOrgJodaTimeDateTimeFieldTypeArray:(IOSObjectArray *)types
                                             withIntArray:(IOSIntArray *)values
                                withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Constructs a Partial by copying all the fields and types from another partial.
 <p> This is most useful when copying from a YearMonthDay or TimeOfDay.
 */
- (instancetype)initWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial;

/**
 @brief Constructs a Partial with the specified values.
 This constructor assigns and performs no validation.
 @param partial the partial to copy
 @param values the values to store
 @throws IllegalArgumentException if the types or values are invalid
 */
- (instancetype)initWithOrgJodaTimePartial:(OrgJodaTimePartial *)partial
                              withIntArray:(IOSIntArray *)values;

/**
 @brief Constructs a Partial with the specified chronology, fields and values.
 This constructor assigns and performs no validation.
 @param chronology the chronology
 @param types the types to create the partial from
 @param values the values to store
 @throws IllegalArgumentException if the types or values are invalid
 */
- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology
        withOrgJodaTimeDateTimeFieldTypeArray:(IOSObjectArray *)types
                                 withIntArray:(IOSIntArray *)values;

/**
 @brief Gets the number of fields in this partial.
 @return the field count
 */
- (int)size;

/**
 @brief Gets the chronology of the partial which is never null.
 <p> The Chronology is the calculation engine behind the partial and provides conversion and validation of the fields in a particular calendar system.
 @return the chronology, never null
 */
- (OrgJodaTimeChronology *)getChronology;

/**
 @brief Gets the field for a specific index in the chronology specified.
 @param index the index to retrieve
 @param chrono the chronology to use
 @return the field
 @throws IndexOutOfBoundsException if the index is invalid
 */
- (OrgJodaTimeDateTimeField *)getFieldWithInt:(int)index
                    withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/**
 @brief Gets the field type at the specified index.
 @param index the index to retrieve
 @return the field at the specified index
 @throws IndexOutOfBoundsException if the index is invalid
 */
- (OrgJodaTimeDateTimeFieldType *)getFieldTypeWithInt:(int)index;

/**
 @brief Gets an array of the field type of each of the fields that this partial supports.
 <p> The fields are returned largest to smallest.
 @return the array of field types (cloned), largest to smallest
 */
- (IOSObjectArray *)getFieldTypes;

/**
 @brief Gets the value of the field at the specified index.
 @param index the index
 @return the value
 @throws IndexOutOfBoundsException if the index is invalid
 */
- (int)getValueWithInt:(int)index;

/**
 @brief Gets an array of the value of each of the fields that this partial supports.
 <p> The fields are returned largest to smallest. Each value corresponds to the same array index as <code>getFieldTypes()</code>
 @return the current values of each field (cloned), largest to smallest
 */
- (IOSIntArray *)getValues;

/**
 @brief Creates a new Partial instance with the specified chronology.
 This instance is immutable and unaffected by this method call. <p> This method retains the values of the fields, thus the result will typically refer to a different instant. <p> The time zone of the specified chronology is ignored, as Partial operates without a time zone.
 @param newChronology the new chronology, null means ISO
 @return a copy of this datetime with a different chronology
 @throws IllegalArgumentException if the values are invalid for the new chronology
 */
- (OrgJodaTimePartial *)withChronologyRetainFieldsWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)newChronology;

/**
 @brief Gets a copy of this date with the specified field set to a new value.
 <p> If this partial did not previously support the field, the new one will. Contrast this behaviour with #withField(DateTimeFieldType,int) . <p> For example, if the field type is <code>dayOfMonth</code> then the day would be changed/added in the returned instance.
 @param fieldType the field type to set, not null
 @param value the value to set
 @return a copy of this instance with the field set
 @throws IllegalArgumentException if the value is null or invalid
 */
- (OrgJodaTimePartial *)withWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)fieldType
                                                     withInt:(int)value;

/**
 @brief Gets a copy of this date with the specified field removed.
 <p> If this partial did not previously support the field, no error occurs.
 @param fieldType the field type to remove, may be null
 @return a copy of this instance with the field removed
 */
- (OrgJodaTimePartial *)withoutWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)fieldType;

/**
 @brief Gets a copy of this Partial with the specified field set to a new value.
 <p> If this partial does not support the field, an exception is thrown. Contrast this behaviour with #with(DateTimeFieldType,int) . <p> For example, if the field type is <code>dayOfMonth</code> then the day would be changed in the returned instance if supported.
 @param fieldType the field type to set, not null
 @param value the value to set
 @return a copy of this instance with the field set
 @throws IllegalArgumentException if the value is null or invalid
 */
- (OrgJodaTimePartial *)withFieldWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)fieldType
                                                          withInt:(int)value;

/**
 @brief Gets a copy of this Partial with the value of the specified field increased.
 If this partial does not support the field, an exception is thrown. <p> If the addition is zero, then <code>this</code> is returned. The addition will overflow into larger fields (eg. minute to hour). However, it will not wrap around if the top maximum is reached.
 @param fieldType the field type to add to, not null
 @param amount the amount to add
 @return a copy of this instance with the field updated
 @throws IllegalArgumentException if the value is null or invalid
 @throws ArithmeticException if the new datetime exceeds the capacity
 */
- (OrgJodaTimePartial *)withFieldAddedWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)fieldType
                                                               withInt:(int)amount;

/**
 @brief Gets a copy of this Partial with the value of the specified field increased.
 If this partial does not support the field, an exception is thrown. <p> If the addition is zero, then <code>this</code> is returned. The addition will overflow into larger fields (eg. minute to hour). If the maximum is reached, the addition will wra.
 @param fieldType the field type to add to, not null
 @param amount the amount to add
 @return a copy of this instance with the field updated
 @throws IllegalArgumentException if the value is null or invalid
 @throws ArithmeticException if the new datetime exceeds the capacity
 */
- (OrgJodaTimePartial *)withFieldAddWrappedWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)fieldType
                                                                    withInt:(int)amount;

/**
 @brief Gets a copy of this Partial with the specified period added.
 <p> If the addition is zero, then <code>this</code> is returned. Fields in the period that aren't present in the partial are ignored. <p> This method is typically used to add multiple copies of complex period instances. Adding one field is best achieved using the method #withFieldAdded(DurationFieldType,int) .
 @param period the period to add to this one, null means zero
 @param scalar the amount of times to add, such as -1 to subtract once
 @return a copy of this instance with the period added
 @throws ArithmeticException if the new datetime exceeds the capacity
 */
- (OrgJodaTimePartial *)withPeriodAddedWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                                             withInt:(int)scalar;

/**
 @brief Gets a copy of this instance with the specified period added.
 <p> If the amount is zero or null, then <code>this</code> is returned.
 @param period the duration to add to this one, null means zero
 @return a copy of this instance with the period added
 @throws ArithmeticException if the new datetime exceeds the capacity of a long
 */
- (OrgJodaTimePartial *)plusWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/**
 @brief Gets a copy of this instance with the specified period take away.
 <p> If the amount is zero or null, then <code>this</code> is returned.
 @param period the period to reduce this instant by
 @return a copy of this instance with the period taken away
 @throws ArithmeticException if the new datetime exceeds the capacity of a long
 */
- (OrgJodaTimePartial *)minusWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/**
 @brief Gets the property object for the specified type, which contains many useful methods for getting and manipulating the partial.
 <p> See also ReadablePartial#get(DateTimeFieldType) .
 @param type the field type to get the property for, not null
 @return the property object
 @throws IllegalArgumentException if the field is null or unsupported
 */
- (OrgJodaTimePartial_Property *)propertyWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type;

/**
 @brief Does this partial match the specified instant.
 <p> A match occurs when all the fields of this partial are the same as the corresponding fields on the specified instant.
 @param instant an instant to check against, null means now in default zone
 @return true if this partial matches the specified instant
 */
- (BOOL)isMatchWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

/**
 @brief Does this partial match the specified partial.
 <p> A match occurs when all the fields of this partial are the same as the corresponding fields on the specified partial.
 @param partial a partial to check against, must not be null
 @return true if this partial matches the specified partial
 @throws IllegalArgumentException if the partial is null
 @throws IllegalArgumentException if the fields of the two partials do not match
 @since 1.5
 */
- (BOOL)isMatchWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial;

/**
 @brief Gets a formatter suitable for the fields in this partial.
 <p> If there is no appropriate ISO format, null is returned. This method may return a formatter that does not display all the fields of the partial. This might occur when you have overlapping fields, such as dayOfWeek and dayOfMonth.
 @return a formatter suitable for the fields in this partial, null if none is suitable
 */
- (OrgJodaTimeFormatDateTimeFormatter *)getFormatter;

/**
 @brief Output the date in an appropriate ISO8601 format.
 <p> This method will output the partial in one of two ways. If #getFormatter() <p> If there is no appropriate ISO format a dump of the fields is output via #toStringList() .
 @return ISO8601 formatted string
 */
- (NSString *)description;

/**
 @brief Gets a string version of the partial that lists all the fields.
 <p> This method exists to provide a better debugging toString than the standard toString. This method lists all the fields and their values in a style similar to the collections framework.
 @return a toString format that lists all the fields
 */
- (NSString *)toStringList;

/**
 @brief Output the date using the specified format pattern.
 Unsupported fields will appear as special unicode characters.
 @param pattern the pattern specification, null means use <code>toString</code>
 */
- (NSString *)toStringWithNSString:(NSString *)pattern;

/**
 @brief Output the date using the specified format pattern.
 Unsupported fields will appear as special unicode characters.
 @param pattern the pattern specification, null means use <code>toString</code>
 @param locale Locale to use, null means default
 */
- (NSString *)toStringWithNSString:(NSString *)pattern
                withJavaUtilLocale:(JavaUtilLocale *)locale;

- (void)copyAllFieldsTo:(OrgJodaTimePartial *)other;

@end

__attribute__((always_inline)) inline void OrgJodaTimePartial_init() {}

J2OBJC_FIELD_SETTER(OrgJodaTimePartial, iChronology_, OrgJodaTimeChronology *)
J2OBJC_FIELD_SETTER(OrgJodaTimePartial, iTypes_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgJodaTimePartial, iValues_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgJodaTimePartial, iFormatter_, IOSObjectArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePartial, serialVersionUID, long long int)

#define OrgJodaTimePartial_Property_serialVersionUID 53278362873888LL

/**
 @brief The property class for <code>Partial</code>.
 <p> This class binds a <code>Partial</code> to a <code>DateTimeField</code>.
 @author Stephen Colebourne
 @since 1.1
 */
@interface OrgJodaTimePartial_Property : OrgJodaTimeFieldAbstractPartialFieldProperty < JavaIoSerializable > {
 @public
  /**
   @brief The partial
   */
  OrgJodaTimePartial *iPartial_;
  /**
   @brief The field index
   */
  int iFieldIndex_;
}

/**
 @brief Constructs a property.
 @param partial the partial instance
 @param fieldIndex the index in the partial
 */
- (instancetype)initWithOrgJodaTimePartial:(OrgJodaTimePartial *)partial
                                   withInt:(int)fieldIndex;

/**
 @brief Gets the field that this property uses.
 @return the field
 */
- (OrgJodaTimeDateTimeField *)getField;

/**
 @brief Gets the partial that this property belongs to.
 @return the partial
 */
- (id<OrgJodaTimeReadablePartial>)getReadablePartial;

/**
 @brief Gets the partial that this property belongs to.
 @return the partial
 */
- (OrgJodaTimePartial *)getPartial;

/**
 @brief Gets the value of this field.
 @return the field value
 */
- (int)get;

/**
 @brief Adds to the value of this field in a copy of this Partial.
 <p> The value will be added to this field. If the value is too large to be added solely to this field then it will affect larger fields. Smaller fields are unaffected. <p> If the result would be too large, beyond the maximum year, then an IllegalArgumentException is thrown. <p> The Partial attached to this property is unchanged by this call. Instead, a new instance is returned.
 @param valueToAdd the value to add to the field in the copy
 @return a copy of the Partial with the field value changed
 @throws IllegalArgumentException if the value isn't valid
 */
- (OrgJodaTimePartial *)addToCopyWithInt:(int)valueToAdd;

/**
 @brief Adds to the value of this field in a copy of this Partial wrapping within this field if the maximum value is reached.
 <p> The value will be added to this field. If the value is too large to be added solely to this field then it wraps within this field. Other fields are unaffected. <p> For example, <code>2004-12-20</code> addWrapField one month returns <code>2004-01-20</code>. <p> The Partial attached to this property is unchanged by this call. Instead, a new instance is returned.
 @param valueToAdd the value to add to the field in the copy
 @return a copy of the Partial with the field value changed
 @throws IllegalArgumentException if the value isn't valid
 */
- (OrgJodaTimePartial *)addWrapFieldToCopyWithInt:(int)valueToAdd;

/**
 @brief Sets this field in a copy of the Partial.
 <p> The Partial attached to this property is unchanged by this call. Instead, a new instance is returned.
 @param value the value to set the field in the copy to
 @return a copy of the Partial with the field value changed
 @throws IllegalArgumentException if the value isn't valid
 */
- (OrgJodaTimePartial *)setCopyWithInt:(int)value;

/**
 @brief Sets this field in a copy of the Partial to a parsed text value.
 <p> The Partial attached to this property is unchanged by this call. Instead, a new instance is returned.
 @param text the text value to set
 @param locale optional locale to use for selecting a text symbol
 @return a copy of the Partial with the field value changed
 @throws IllegalArgumentException if the text value isn't valid
 */
- (OrgJodaTimePartial *)setCopyWithNSString:(NSString *)text
                         withJavaUtilLocale:(JavaUtilLocale *)locale;

/**
 @brief Sets this field in a copy of the Partial to a parsed text value.
 <p> The Partial attached to this property is unchanged by this call. Instead, a new instance is returned.
 @param text the text value to set
 @return a copy of the Partial with the field value changed
 @throws IllegalArgumentException if the text value isn't valid
 */
- (OrgJodaTimePartial *)setCopyWithNSString:(NSString *)text;

/**
 @brief Returns a new Partial with this field set to the maximum value for this field.
 <p> The Partial attached to this property is unchanged by this call.
 @return a copy of the Partial with this field set to its maximum
 @since 1.2
 */
- (OrgJodaTimePartial *)withMaximumValue;

/**
 @brief Returns a new Partial with this field set to the minimum value for this field.
 <p> The Partial attached to this property is unchanged by this call.
 @return a copy of the Partial with this field set to its minimum
 @since 1.2
 */
- (OrgJodaTimePartial *)withMinimumValue;

- (void)copyAllFieldsTo:(OrgJodaTimePartial_Property *)other;

@end

__attribute__((always_inline)) inline void OrgJodaTimePartial_Property_init() {}

J2OBJC_FIELD_SETTER(OrgJodaTimePartial_Property, iPartial_, OrgJodaTimePartial *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePartial_Property, serialVersionUID, long long int)

#endif // _OrgJodaTimePartial_H_
