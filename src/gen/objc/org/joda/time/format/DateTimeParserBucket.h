//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/format/DateTimeParserBucket.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFormatDateTimeParserBucket")
#ifdef RESTRICT_OrgJodaTimeFormatDateTimeParserBucket
#define INCLUDE_ALL_OrgJodaTimeFormatDateTimeParserBucket 0
#else
#define INCLUDE_ALL_OrgJodaTimeFormatDateTimeParserBucket 1
#endif
#undef RESTRICT_OrgJodaTimeFormatDateTimeParserBucket

#if !defined (OrgJodaTimeFormatDateTimeParserBucket_) && (INCLUDE_ALL_OrgJodaTimeFormatDateTimeParserBucket || defined(INCLUDE_OrgJodaTimeFormatDateTimeParserBucket))
#define OrgJodaTimeFormatDateTimeParserBucket_

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

@interface OrgJodaTimeFormatDateTimeParserBucket : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)instantLocal
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
          withJavaUtilLocale:(JavaUtilLocale *)locale;

- (instancetype)initWithLong:(jlong)instantLocal
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
          withJavaUtilLocale:(JavaUtilLocale *)locale
         withJavaLangInteger:(JavaLangInteger *)pivotYear;

- (instancetype)initWithLong:(jlong)instantLocal
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
          withJavaUtilLocale:(JavaUtilLocale *)locale
         withJavaLangInteger:(JavaLangInteger *)pivotYear
                     withInt:(jint)defaultYear;

- (jlong)computeMillis;

- (jlong)computeMillisWithBoolean:(jboolean)resetFields;

- (jlong)computeMillisWithBoolean:(jboolean)resetFields
         withJavaLangCharSequence:(id<JavaLangCharSequence>)text;

- (jlong)computeMillisWithBoolean:(jboolean)resetFields
                     withNSString:(NSString *)text;

- (OrgJodaTimeChronology *)getChronology;

- (JavaUtilLocale *)getLocale;

- (jint)getOffset;

- (JavaLangInteger *)getOffsetInteger;

- (JavaLangInteger *)getPivotYear;

- (OrgJodaTimeDateTimeZone *)getZone;

- (jlong)parseMillisWithOrgJodaTimeFormatDateTimeParser:(id<OrgJodaTimeFormatDateTimeParser>)parser
                               withJavaLangCharSequence:(id<JavaLangCharSequence>)text;

- (void)reset;

- (jboolean)restoreStateWithId:(id)savedState;

- (void)saveFieldWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                                      withInt:(jint)value;

- (void)saveFieldWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)fieldType
                                          withInt:(jint)value;

- (void)saveFieldWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)fieldType
                                     withNSString:(NSString *)text
                               withJavaUtilLocale:(JavaUtilLocale *)locale;

- (id)saveState;

- (void)setOffsetWithInt:(jint)offset;

- (void)setOffsetWithJavaLangInteger:(JavaLangInteger *)offset;

- (void)setPivotYearWithJavaLangInteger:(JavaLangInteger *)pivotYear;

- (void)setZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

#pragma mark Package-Private

+ (jint)compareReverseWithOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)a
                      withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)b;

- (jlong)doParseMillisWithOrgJodaTimeFormatInternalParser:(id<OrgJodaTimeFormatInternalParser>)parser
                                 withJavaLangCharSequence:(id<JavaLangCharSequence>)text;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFormatDateTimeParserBucket)

FOUNDATION_EXPORT void OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_(OrgJodaTimeFormatDateTimeParserBucket *self, jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale);

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeParserBucket *new_OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_(jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeParserBucket *create_OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_(jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale);

FOUNDATION_EXPORT void OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_(OrgJodaTimeFormatDateTimeParserBucket *self, jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale, JavaLangInteger *pivotYear);

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeParserBucket *new_OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_(jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale, JavaLangInteger *pivotYear) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeParserBucket *create_OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_(jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale, JavaLangInteger *pivotYear);

FOUNDATION_EXPORT void OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_withInt_(OrgJodaTimeFormatDateTimeParserBucket *self, jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale, JavaLangInteger *pivotYear, jint defaultYear);

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeParserBucket *new_OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_withInt_(jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale, JavaLangInteger *pivotYear, jint defaultYear) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeParserBucket *create_OrgJodaTimeFormatDateTimeParserBucket_initWithLong_withOrgJodaTimeChronology_withJavaUtilLocale_withJavaLangInteger_withInt_(jlong instantLocal, OrgJodaTimeChronology *chrono, JavaUtilLocale *locale, JavaLangInteger *pivotYear, jint defaultYear);

FOUNDATION_EXPORT jint OrgJodaTimeFormatDateTimeParserBucket_compareReverseWithOrgJodaTimeDurationField_withOrgJodaTimeDurationField_(OrgJodaTimeDurationField *a, OrgJodaTimeDurationField *b);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatDateTimeParserBucket)

#endif

#if !defined (OrgJodaTimeFormatDateTimeParserBucket_SavedState_) && (INCLUDE_ALL_OrgJodaTimeFormatDateTimeParserBucket || defined(INCLUDE_OrgJodaTimeFormatDateTimeParserBucket_SavedState))
#define OrgJodaTimeFormatDateTimeParserBucket_SavedState_

@class IOSObjectArray;
@class JavaLangInteger;
@class OrgJodaTimeDateTimeZone;
@class OrgJodaTimeFormatDateTimeParserBucket;

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

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFormatDateTimeParserBucket_SavedState)

J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket_SavedState, iZone_, OrgJodaTimeDateTimeZone *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket_SavedState, iOffset_, JavaLangInteger *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimeParserBucket_SavedState, iSavedFields_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgJodaTimeFormatDateTimeParserBucket_SavedState_initWithOrgJodaTimeFormatDateTimeParserBucket_(OrgJodaTimeFormatDateTimeParserBucket_SavedState *self, OrgJodaTimeFormatDateTimeParserBucket *outer$);

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeParserBucket_SavedState *new_OrgJodaTimeFormatDateTimeParserBucket_SavedState_initWithOrgJodaTimeFormatDateTimeParserBucket_(OrgJodaTimeFormatDateTimeParserBucket *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeParserBucket_SavedState *create_OrgJodaTimeFormatDateTimeParserBucket_SavedState_initWithOrgJodaTimeFormatDateTimeParserBucket_(OrgJodaTimeFormatDateTimeParserBucket *outer$);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatDateTimeParserBucket_SavedState)

#endif

#if !defined (OrgJodaTimeFormatDateTimeParserBucket_SavedField_) && (INCLUDE_ALL_OrgJodaTimeFormatDateTimeParserBucket || defined(INCLUDE_OrgJodaTimeFormatDateTimeParserBucket_SavedField))
#define OrgJodaTimeFormatDateTimeParserBucket_SavedField_

#define RESTRICT_JavaLangComparable 1
#define INCLUDE_JavaLangComparable 1
#include "java/lang/Comparable.h"

@class JavaUtilLocale;
@class OrgJodaTimeDateTimeField;

@interface OrgJodaTimeFormatDateTimeParserBucket_SavedField : NSObject < JavaLangComparable > {
 @public
  OrgJodaTimeDateTimeField *iField_;
  jint iValue_;
  NSString *iText_;
  JavaUtilLocale *iLocale_;
}

#pragma mark Public

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

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeParserBucket_SavedField *new_OrgJodaTimeFormatDateTimeParserBucket_SavedField_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeParserBucket_SavedField *create_OrgJodaTimeFormatDateTimeParserBucket_SavedField_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatDateTimeParserBucket_SavedField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFormatDateTimeParserBucket")
