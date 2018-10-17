//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/field/AbstractReadableInstantFieldProperty.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFieldAbstractReadableInstantFieldProperty")
#ifdef RESTRICT_OrgJodaTimeFieldAbstractReadableInstantFieldProperty
#define INCLUDE_ALL_OrgJodaTimeFieldAbstractReadableInstantFieldProperty 0
#else
#define INCLUDE_ALL_OrgJodaTimeFieldAbstractReadableInstantFieldProperty 1
#endif
#undef RESTRICT_OrgJodaTimeFieldAbstractReadableInstantFieldProperty

#if !defined (OrgJodaTimeFieldAbstractReadableInstantFieldProperty_) && (INCLUDE_ALL_OrgJodaTimeFieldAbstractReadableInstantFieldProperty || defined(INCLUDE_OrgJodaTimeFieldAbstractReadableInstantFieldProperty))
#define OrgJodaTimeFieldAbstractReadableInstantFieldProperty_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class JavaUtilLocale;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDurationField;
@class OrgJodaTimeInterval;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadablePartial;

/*!
 @brief AbstractReadableInstantFieldProperty is a base class for binding a
 ReadableInstant to a DateTimeField.
 <p>
 It allows the date and time manipulation code to be field based yet
 still easy to use.
 <p>
 AbstractReadableInstantFieldProperty itself is thread-safe and immutable,
 but the ReadableInstant being operated on may be mutable and not
 thread-safe.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @author Mike Schrag
 @since 1.0
 */
@interface OrgJodaTimeFieldAbstractReadableInstantFieldProperty : NSObject < JavaIoSerializable >

#pragma mark Public

/*!
 @brief Constructor.
 */
- (instancetype)init;

/*!
 @brief Compare this field to the same field on another instant.
 <p>
 The comparison is based on the value of the same field type, irrespective
 of any difference in chronology. Thus, if this property represents the
 hourOfDay field, then the hourOfDay field of the other instant will be queried
 whether in the same chronology or not.
 @param instant  the instant to compare to
 @return negative value if this is less, 0 if equal, or positive value if greater
 @throws IllegalArgumentException if the instant is null
 */
- (jint)compareToWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

/*!
 @brief Compare this field to the same field on another partial instant.
 <p>
 The comparison is based on the value of the same field type, irrespective
 of any difference in chronology. Thus, if this property represents the
 hourOfDay field, then the hourOfDay field of the other partial will be queried
 whether in the same chronology or not.
 @param partial  the partial to compare to
 @return negative value if this is less, 0 if equal, or positive value if greater
 @throws IllegalArgumentException if the partial is null
 @throws IllegalArgumentException if the partial doesn't support this field
 */
- (jint)compareToWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial;

/*!
 @brief Compares this property to another.
 @param object  the object to compare to
 @return true if equal
 */
- (jboolean)isEqual:(id)object;

/*!
 @brief Gets the value of this property from the instant.
 <p>
 For example, the following two lines of code are equivalent:
 @code

  datetime.getDayOfMonth();
  datetime.dayOfMonth().get();
  
@endcode
 @return the current value
 - seealso: DateTimeField#get
 */
- (jint)get;

/*!
 @brief Gets the short textual value of this property from the instant as a
 string in the default locale.
 <p>
 This method returns the value converted to a <code>String</code>
 returning the appropriate textual description wherever possible.
 Thus, a day of week of 1 would return 'Mon' in English.
 @return the current text value
 - seealso: DateTimeField#getAsShortText
 */
- (NSString *)getAsShortText;

/*!
 @brief Gets the short textual value of this property from the instant as a
 string in the specified locale.
 <p>
 This method returns the value converted to a <code>String</code>
 returning the appropriate textual description wherever possible.
 Thus, a day of week of 1 would return 'Mon' in English.
 @param locale  locale to use for selecting a text symbol, null means default
 @return the current text value
 - seealso: DateTimeField#getAsShortText
 */
- (NSString *)getAsShortTextWithJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Gets the value of this property from the instant as a string.
 <p>
 This method returns the value converted to a <code>String</code>
 using <code>Integer.toString</code>. This method does NOT return
 textual descriptions such as 'Monday' or 'January'.
 See <code>getAsText()</code> and <code>getAsShortText()</code> for those.
 @return the current value
 - seealso: DateTimeField#get
 @since 1.1
 */
- (NSString *)getAsString;

/*!
 @brief Gets the textual value of this property from the instant as a
 string in the default locale.
 <p>
 This method returns the value converted to a <code>String</code>
 returning the appropriate textual description wherever possible.
 Thus, a day of week of 1 would return 'Monday' in English.
 @return the current text value
 - seealso: DateTimeField#getAsText
 */
- (NSString *)getAsText;

/*!
 @brief Gets the textual value of this property from the instant as a
 string in the specified locale.
 <p>
 This method returns the value converted to a <code>String</code>
 returning the appropriate textual description wherever possible.
 Thus, a day of week of 1 would return 'Monday' in English.
 @param locale  locale to use for selecting a text symbol, null means default
 @return the current text value
 - seealso: DateTimeField#getAsText
 */
- (NSString *)getAsTextWithJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Returns the difference between this field property instant and the one
 passed in, in the units of this field.
 The sign of the difference
 matches that of compareTo. In other words, this field property's instant
 is the minuend.
 @param instant  the subtrahend, null means now
 @return the difference in the units of this field
 - seealso: DateTimeField#getDifference
 */
- (jint)getDifferenceWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

/*!
 @brief Returns the difference between this field property instant and the one
 passed in, in the units of this field.
 The sign of the difference
 matches that of compareTo. In other words, this field property's instant
 is the minuend.
 @param instant  the subtrahend, null means now
 @return the difference in the units of this field
 - seealso: DateTimeField#getDifference
 */
- (jlong)getDifferenceAsLongWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

/*!
 @brief Returns the duration per unit value of this field.
 For example, if this
 field represents "hour of day", then the duration is an hour.
 @return the duration of this field, or UnsupportedDurationField
 */
- (OrgJodaTimeDurationField *)getDurationField;

/*!
 @brief Gets the field being used.
 @return the field
 */
- (OrgJodaTimeDateTimeField *)getField;

/*!
 @brief Gets the field type being used.
 @return the field type
 */
- (OrgJodaTimeDateTimeFieldType *)getFieldType;

/*!
 @brief Gets the amount by which this field is leap.
 @return the amount by which the field is leap
 - seealso: DateTimeField#getLeapAmount
 */
- (jint)getLeapAmount;

/*!
 @brief If this field were to leap, then it would be in units described by the
 returned duration.
 If this field doesn't ever leap, null is returned.
 */
- (OrgJodaTimeDurationField *)getLeapDurationField;

/*!
 @brief Gets the maximum short text length for the field.
 @param locale  optional locale to use for selecting a text symbol
 @return the maximum length
 - seealso: DateTimeField#getMaximumShortTextLength
 */
- (jint)getMaximumShortTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Gets the maximum text length for the field.
 @param locale  optional locale to use for selecting a text symbol
 @return the maximum length
 - seealso: DateTimeField#getMaximumTextLength
 */
- (jint)getMaximumTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Gets the maximum value for the field.
 @return the maximum value
 - seealso: DateTimeField#getMaximumValue
 */
- (jint)getMaximumValue;

/*!
 @brief Gets the maximum value for the field ignoring the current time.
 @return the maximum value
 - seealso: DateTimeField#getMaximumValue
 */
- (jint)getMaximumValueOverall;

/*!
 @brief Gets the minimum value for the field.
 @return the minimum value
 - seealso: DateTimeField#getMinimumValue
 */
- (jint)getMinimumValue;

/*!
 @brief Gets the minimum value for the field ignoring the current time.
 @return the minimum value
 - seealso: DateTimeField#getMinimumValue
 */
- (jint)getMinimumValueOverall;

/*!
 @brief Gets the name of the field.
 @return the field name
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
 @brief Returns a hashcode compatible with the equals method.
 @return the hashcode
 */
- (NSUInteger)hash;

/*!
 @brief Gets whether this field is leap.
 @return true if a leap field
 - seealso: DateTimeField#isLeap
 */
- (jboolean)isLeap;

/*!
 @brief Returns the fractional duration milliseconds of this field.
 - seealso: DateTimeField#remainder
 @return remainder duration, in milliseconds
 */
- (jlong)remainder;

/*!
 @brief Returns the interval that represents the range of the minimum
 and maximum values of this field.
 <p>
 For example, <code>datetime.monthOfYear().toInterval()</code>
 will return an interval over the whole month.
 @return the interval of this field
 @since 1.2
 */
- (OrgJodaTimeInterval *)toInterval;

/*!
 @brief Output a debugging string.
 @return debugging string
 */
- (NSString *)description;

#pragma mark Protected

/*!
 @brief Gets the chronology of the datetime that this property is linked to.
 <p>
 This implementation throws UnsupportedOperationException, and must be
 implemented by subclasses to enable the equals() and hashCode() methods.
 @return the chronology
 @since 1.4
 */
- (OrgJodaTimeChronology *)getChronology;

/*!
 @brief Gets the milliseconds of the datetime that this property is linked to.
 @return the milliseconds
 */
- (jlong)getMillis;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFieldAbstractReadableInstantFieldProperty)

FOUNDATION_EXPORT void OrgJodaTimeFieldAbstractReadableInstantFieldProperty_init(OrgJodaTimeFieldAbstractReadableInstantFieldProperty *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldAbstractReadableInstantFieldProperty)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFieldAbstractReadableInstantFieldProperty")
