//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/format/DateTimeParserBucket.java
//

#ifndef _OrgJodaTimeFormatDateTimeParserBucket_H_
#define _OrgJodaTimeFormatDateTimeParserBucket_H_

#include "J2ObjC_header.h"
#include "java/lang/Comparable.h"

@class IOSObjectArray;
@class JavaLangInteger;
@class JavaUtilLocale;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDateTimeZone;
@class OrgJodaTimeDurationField;
@protocol JavaLangCharSequence;
@protocol OrgJodaTimeFormatDateTimeParser;
@protocol OrgJodaTimeFormatInternalParser;

/*!
 @brief DateTimeParserBucket is an advanced class, intended mainly for parser
 implementations.
 It can also be used during normal parsing operations to
 capture more information about the parse.
 <p>
 This class allows fields to be saved in any order, but be physically set in
 a consistent order. This is useful for parsing against formats that allow
 field values to contradict each other.
 <p>
 Field values are applied in an order where the "larger" fields are set
 first, making their value less likely to stick.  A field is larger than
 another when it's range duration is longer. If both ranges are the same,
 then the larger field has the longer duration. If it cannot be determined
 which field is larger, then the fields are set in the order they were saved.
 <p>
 For example, these fields were saved in this order: dayOfWeek, monthOfYear,
 dayOfMonth, dayOfYear. When computeMillis is called, the fields are set in
 this order: monthOfYear, dayOfYear, dayOfMonth, dayOfWeek.
 <p>
 DateTimeParserBucket is mutable and not thread-safe.
 @author Brian S O'Neill
 @author Fredrik Borgh
 @since 1.0
 */
@interface OrgJodaTimeFormatDateTimeParserBucket : NSObject

#pragma mark Public

/*!
 @brief Constructs a bucket.
 @param instantLocal  the initial millis from 1970-01-01T00:00:00, local time
 @param chrono  the chronology to use
 @param locale  the locale to use
 */
- (instancetype)initWithLong:(jlong)instantLocal
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
          withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Constructs a bucket, with the option of specifying the pivot year for
 two-digit year parsing.
 @param instantLocal  the initial millis from 1970-01-01T00:00:00, local time
 @param chrono  the chronology to use
 @param locale  the locale to use
 @param pivotYear  the pivot year to use when parsing two-digit years
 @since 1.1
 */
- (instancetype)initWithLong:(jlong)instantLocal
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
          withJavaUtilLocale:(JavaUtilLocale *)locale
         withJavaLangInteger:(JavaLangInteger *)pivotYear;

/*!
 @brief Constructs a bucket, with the option of specifying the pivot year for
 two-digit year parsing.
 @param instantLocal  the initial millis from 1970-01-01T00:00:00, local time
 @param chrono  the chronology to use
 @param locale  the locale to use
 @param pivotYear  the pivot year to use when parsing two-digit years
 @param defaultYear  the default year to use when parsing month-day
 @since 2.0
 */
- (instancetype)initWithLong:(jlong)instantLocal
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
          withJavaUtilLocale:(JavaUtilLocale *)locale
         withJavaLangInteger:(JavaLangInteger *)pivotYear
                     withInt:(jint)defaultYear;

/*!
 @brief Computes the parsed datetime by setting the saved fields.
 This method is idempotent, but it is not thread-safe.
 @return milliseconds since 1970-01-01T00:00:00Z
 @throws IllegalArgumentException if any field is out of range
 */
- (jlong)computeMillis;

/*!
 @brief Computes the parsed datetime by setting the saved fields.
 This method is idempotent, but it is not thread-safe.
 @param resetFields false by default, but when true, unsaved field values are cleared
 @return milliseconds since 1970-01-01T00:00:00Z
 @throws IllegalArgumentException if any field is out of range
 */
- (jlong)computeMillisWithBoolean:(jboolean)resetFields;

/*!
 @brief Computes the parsed datetime by setting the saved fields.
 This method is idempotent, but it is not thread-safe.
 @param resetFields false by default, but when true, unsaved field values are cleared
 @param text optional text being parsed, to be included in any error message
 @return milliseconds since 1970-01-01T00:00:00Z
 @throws IllegalArgumentException if any field is out of range
 @since 2.4
 */
- (jlong)computeMillisWithBoolean:(jboolean)resetFields
         withJavaLangCharSequence:(id<JavaLangCharSequence>)text;

/*!
 @brief Computes the parsed datetime by setting the saved fields.
 This method is idempotent, but it is not thread-safe.
 @param resetFields false by default, but when true, unsaved field values are cleared
 @param text optional text being parsed, to be included in any error message
 @return milliseconds since 1970-01-01T00:00:00Z
 @throws IllegalArgumentException if any field is out of range
 @since 1.3
 */
- (jlong)computeMillisWithBoolean:(jboolean)resetFields
                     withNSString:(NSString *)text;

/*!
 @brief Gets the chronology of the bucket, which will be a local (UTC) chronology.
 */
- (OrgJodaTimeChronology *)getChronology;

/*!
 @brief Returns the locale to be used during parsing.
 @return the locale to use
 */
- (JavaUtilLocale *)getLocale;

/*!
 @brief Returns the time zone offset in milliseconds used by computeMillis.
 */
- (jint)getOffset;

/*!
 @brief Returns the time zone offset in milliseconds used by computeMillis.
 */
- (JavaLangInteger *)getOffsetInteger;

/*!
 @brief Returns the default year used when information is incomplete.
 <p>
 This is used for two-digit years and when the largest parsed field is
 months or days.
 <p>
 A null value for two-digit years means to use the value from DateTimeFormatterBuilder.
 A null value for month/day only parsing will cause the default of 2000 to be used.
 @return Integer value of the pivot year, null if not set
 @since 1.1
 */
- (JavaLangInteger *)getPivotYear;

/*!
 @brief Returns the time zone used by computeMillis.
 */
- (OrgJodaTimeDateTimeZone *)getZone;

/*!
 @brief Parses a datetime from the given text, returning the number of
 milliseconds since the epoch, 1970-01-01T00:00:00Z.
 <p>
 This parses the text using the parser into this bucket.
 The bucket is reset before parsing begins, allowing the bucket to be re-used.
 The bucket must not be shared between threads.
 @param parser  the parser to use, see <code>DateTimeFormatter.getParser()</code>, not null
 @param text  text to parse, not null
 @return parsed value expressed in milliseconds since the epoch
 @throws UnsupportedOperationException if parsing is not supported
 @throws IllegalArgumentException if the text to parse is invalid
 @since 2.4
 */
- (jlong)parseMillisWithOrgJodaTimeFormatDateTimeParser:(id<OrgJodaTimeFormatDateTimeParser>)parser
                               withJavaLangCharSequence:(id<JavaLangCharSequence>)text;

/*!
 @brief Resets the state back to that when the object was constructed.
 <p>
 This resets the state of the bucket, allowing a single bucket to be re-used
 for many parses. The bucket must not be shared between threads.
 @since 2.4
 */
- (void)reset;

/*!
 @brief Restores the state of this bucket from a previously saved state.
 The
 state object passed into this method is not consumed, and it can be used
 later to restore to that state again.
 @param savedState opaque saved state, returned from saveState
 @return true state object is valid and state restored
 */
- (jboolean)restoreStateWithId:(id)savedState;

/*!
 @brief Saves a datetime field value.
 @param field  the field, whose chronology must match that of this bucket
 @param value  the value
 */
- (void)saveFieldWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                                      withInt:(jint)value;

/*!
 @brief Saves a datetime field value.
 @param fieldType  the field type
 @param value  the value
 */
- (void)saveFieldWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)fieldType
                                          withInt:(jint)value;

/*!
 @brief Saves a datetime field text value.
 @param fieldType  the field type
 @param text  the text value
 @param locale  the locale to use
 */
- (void)saveFieldWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)fieldType
                                     withNSString:(NSString *)text
                               withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Saves the state of this bucket, returning it in an opaque object.
 Call
 restoreState to undo any changes that were made since the state was
 saved. Calls to saveState may be nested.
 @return opaque saved state, which may be passed to restoreState
 */
- (id)saveState;

/*!
 @brief Set a time zone offset to be used when computeMillis is called.
 */
- (void)setOffsetWithInt:(jint)offset;

/*!
 @brief Set a time zone offset to be used when computeMillis is called.
 */
- (void)setOffsetWithJavaLangInteger:(JavaLangInteger *)offset;

/*!
 @brief Sets the pivot year to use when parsing two digit years.
 <p>
 If the value is set to null, this will indicate that default
 behaviour should be used.
 @param pivotYear  the pivot year to use
 @since 1.1
 */
- (void)setPivotYearWithJavaLangInteger:(JavaLangInteger *)pivotYear;

/*!
 @brief Set a time zone to be used when computeMillis is called.
 */
- (void)setZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

#pragma mark Package-Private

+ (jint)compareReverseWithOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)a
                      withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)b;

- (jlong)doParseMillisWithOrgJodaTimeFormatInternalParser:(id<OrgJodaTimeFormatInternalParser>)parser
                                 withJavaLangCharSequence:(id<JavaLangCharSequence>)text;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFormatDateTimeParserBucket)

FOUNDATION_EXPORT void OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_(OrgJodaTimeFormatDateTimeParserBucket *self, jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale);

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeParserBucket *new_OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_(jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_(OrgJodaTimeFormatDateTimeParserBucket *self, jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale, JavaLangInteger *pivotYear);

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeParserBucket *new_OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_(jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale, JavaLangInteger *pivotYear) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_withInt_(OrgJodaTimeFormatDateTimeParserBucket *self, jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale, JavaLangInteger *pivotYear, jint defaultYear);

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeParserBucket *new_OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_withInt_(jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale, JavaLangInteger *pivotYear, jint defaultYear) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT jint OrgJodaTimeFormatDateTimeParserBucket_compareReverseWithOrgJodaTimeDurationField_withOrgJodaTimeDurationField_(OrgJodaTimeDurationField *a, OrgJodaTimeDurationField *b);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatDateTimeParserBucket)

@interface OrgJodaTimeFormatDateTimeParserBucket_SavedState : NSObject {
 @public
  OrgJodaTimeDateTimeZone *iZone_;
  JavaLangInteger *iOffset_;
  IOSObjectArray *iSavedFields_;
  jint iSavedFieldsCount_;
}

#pragma mark Package-Private

- (instancetype)initWithOrgJodaTimeFormatDateTimeParserBucket:(OrgJodaTimeFormatDateTimeParserBucket *)outer$;

- (jboolean)restoreStateWithOrgJodaTimeFormatDateTimeParserBucket:(OrgJodaTimeFormatDateTimeParserBucket *)enclosing;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFormatDateTimeParserBucket_SavedState)

J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket_SavedState, iZone_, OrgJodaTimeDateTimeZone *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket_SavedState, iOffset_, JavaLangInteger *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket_SavedState, iSavedFields_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgJodaTimeFormatDateTimeParserBucket_SavedState_initWithOrgJodaTimeFormatDateTimeParserBucket_(OrgJodaTimeFormatDateTimeParserBucket_SavedState *self, OrgJodaTimeFormatDateTimeParserBucket *outer$);

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeParserBucket_SavedState *new_OrgJodaTimeFormatDateTimeParserBucket_SavedState_initWithOrgJodaTimeFormatDateTimeParserBucket_(OrgJodaTimeFormatDateTimeParserBucket *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatDateTimeParserBucket_SavedState)

@interface OrgJodaTimeFormatDateTimeParserBucket_SavedField : NSObject < JavaLangComparable > {
 @public
  OrgJodaTimeDateTimeField *iField_;
  jint iValue_;
  NSString *iText_;
  JavaUtilLocale *iLocale_;
}

#pragma mark Public

/*!
 @brief The field with the longer range duration is ordered first, where
 null is considered infinite.
 If the ranges match, then the field
 with the longer duration is ordered first.
 */
- (jint)compareToWithId:(OrgJodaTimeFormatDateTimeParserBucket_SavedField *)obj;

#pragma mark Package-Private

- (instancetype)init;

- (void)init__WithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                                   withInt:(jint)value OBJC_METHOD_FAMILY_NONE;

- (void)init__WithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                              withNSString:(NSString *)text
                        withJavaUtilLocale:(JavaUtilLocale *)locale OBJC_METHOD_FAMILY_NONE;

- (jlong)setWithLong:(jlong)millis
         withBoolean:(jboolean)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFormatDateTimeParserBucket_SavedField)

J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket_SavedField, iField_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket_SavedField, iText_, NSString *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket_SavedField, iLocale_, JavaUtilLocale *)

FOUNDATION_EXPORT void OrgJodaTimeFormatDateTimeParserBucket_SavedField_init(OrgJodaTimeFormatDateTimeParserBucket_SavedField *self);

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeParserBucket_SavedField *new_OrgJodaTimeFormatDateTimeParserBucket_SavedField_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatDateTimeParserBucket_SavedField)

#endif // _OrgJodaTimeFormatDateTimeParserBucket_H_
