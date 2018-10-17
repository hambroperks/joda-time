//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/field/AbstractPartialFieldProperty.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFieldAbstractPartialFieldProperty")
#ifdef RESTRICT_OrgJodaTimeFieldAbstractPartialFieldProperty
#define INCLUDE_ALL_OrgJodaTimeFieldAbstractPartialFieldProperty 0
#else
#define INCLUDE_ALL_OrgJodaTimeFieldAbstractPartialFieldProperty 1
#endif
#undef RESTRICT_OrgJodaTimeFieldAbstractPartialFieldProperty

#if !defined (OrgJodaTimeFieldAbstractPartialFieldProperty_) && (INCLUDE_ALL_OrgJodaTimeFieldAbstractPartialFieldProperty || defined(INCLUDE_OrgJodaTimeFieldAbstractPartialFieldProperty))
#define OrgJodaTimeFieldAbstractPartialFieldProperty_

@class JavaUtilLocale;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDurationField;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadablePartial;

/*!
 @brief AbstractPartialFieldProperty is a base class for binding a
 ReadablePartial to a DateTimeField.
 <p>
 It allows the date and time manipulation code to be field based yet
 still easy to use.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeFieldAbstractPartialFieldProperty : NSObject

#pragma mark Public

/*!
 @brief Compare this field to the same field on another instant.
 <p>
 The comparison is based on the value of the same field type, irrespective
 of any difference in chronology. Thus, if this property represents the
 hourOfDay field, then the hourOfDay field of the other instant will be queried
 whether in the same chronology or not.
 @param instant  the instant to compare to
 @return negative value if this is less, 0 if equal, or positive value if greater
 @throws IllegalArgumentException if the instant is null or the instant
 doesn't support the field of this property
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
 @throws IllegalArgumentException if the instant is null
 @throws IllegalArgumentException if the field of this property cannot be queried
 on the specified instant
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

  partial.getDayOfMonth();
  partial.dayOfMonth().get();
  
@endcode
 @return the current value
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
 @brief Gets the maximum value for this field given the current field values.
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
 @brief Gets the minimum value for this field given the current field values.
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
 @brief Gets a suitable hashcode for the object.
 @return the hashcode
 @since 1.3
 */
- (NSUInteger)hash;

/*!
 @brief Output a debugging string.
 @return debugging string
 */
- (NSString *)description;

#pragma mark Protected

/*!
 @brief Constructor.
 */
- (instancetype)init;

/*!
 @brief Gets the partial instant being used.
 @return the partial instant
 */
- (id<OrgJodaTimeReadablePartial>)getReadablePartial;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFieldAbstractPartialFieldProperty)

FOUNDATION_EXPORT void OrgJodaTimeFieldAbstractPartialFieldProperty_init(OrgJodaTimeFieldAbstractPartialFieldProperty *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldAbstractPartialFieldProperty)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFieldAbstractPartialFieldProperty")
