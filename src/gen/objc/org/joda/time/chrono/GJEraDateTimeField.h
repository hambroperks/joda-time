//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/chrono/GJEraDateTimeField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeChronoGJEraDateTimeField")
#ifdef RESTRICT_OrgJodaTimeChronoGJEraDateTimeField
#define INCLUDE_ALL_OrgJodaTimeChronoGJEraDateTimeField 0
#else
#define INCLUDE_ALL_OrgJodaTimeChronoGJEraDateTimeField 1
#endif
#undef RESTRICT_OrgJodaTimeChronoGJEraDateTimeField

#if !defined (OrgJodaTimeChronoGJEraDateTimeField_) && (INCLUDE_ALL_OrgJodaTimeChronoGJEraDateTimeField || defined(INCLUDE_OrgJodaTimeChronoGJEraDateTimeField))
#define OrgJodaTimeChronoGJEraDateTimeField_

#define RESTRICT_OrgJodaTimeFieldBaseDateTimeField 1
#define INCLUDE_OrgJodaTimeFieldBaseDateTimeField 1
#include "org/joda/time/field/BaseDateTimeField.h"

@class JavaUtilLocale;
@class OrgJodaTimeChronoBasicChronology;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDurationField;

/*!
 @brief Provides time calculations for the era component of time.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeChronoGJEraDateTimeField : OrgJodaTimeFieldBaseDateTimeField

#pragma mark Public

/*!
 @brief Get the Era component of the specified time instant.
 @param instant the time instant in millis to query.
 */
- (jint)getWithLong:(jlong)instant;

- (NSString *)getAsTextWithInt:(jint)fieldValue
            withJavaUtilLocale:(JavaUtilLocale *)locale;

- (OrgJodaTimeDurationField *)getDurationField;

- (jint)getMaximumTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale;

- (jint)getMaximumValue;

- (jint)getMinimumValue;

- (OrgJodaTimeDurationField *)getRangeDurationField;

- (jboolean)isLenient;

- (jlong)roundCeilingWithLong:(jlong)instant;

- (jlong)roundFloorWithLong:(jlong)instant;

- (jlong)roundHalfCeilingWithLong:(jlong)instant;

- (jlong)roundHalfEvenWithLong:(jlong)instant;

- (jlong)roundHalfFloorWithLong:(jlong)instant;

/*!
 @brief Set the Era component of the specified time instant.
 @param instant the time instant in millis to update.
 @param era the era to update the time to.
 @return the updated time instant.
 @throw IllegalArgumentExceptionif era is invalid.
 */
- (jlong)setWithLong:(jlong)instant
             withInt:(jint)era;

- (jlong)setWithLong:(jlong)instant
        withNSString:(NSString *)text
  withJavaUtilLocale:(JavaUtilLocale *)locale;

#pragma mark Package-Private

/*!
 @brief Restricted constructor
 */
- (instancetype)initWithOrgJodaTimeChronoBasicChronology:(OrgJodaTimeChronoBasicChronology *)chronology;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeChronoGJEraDateTimeField)

FOUNDATION_EXPORT void OrgJodaTimeChronoGJEraDateTimeField_initWithOrgJodaTimeChronoBasicChronology_(OrgJodaTimeChronoGJEraDateTimeField *self, OrgJodaTimeChronoBasicChronology *chronology);

FOUNDATION_EXPORT OrgJodaTimeChronoGJEraDateTimeField *new_OrgJodaTimeChronoGJEraDateTimeField_initWithOrgJodaTimeChronoBasicChronology_(OrgJodaTimeChronoBasicChronology *chronology) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeChronoGJEraDateTimeField *create_OrgJodaTimeChronoGJEraDateTimeField_initWithOrgJodaTimeChronoBasicChronology_(OrgJodaTimeChronoBasicChronology *chronology);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoGJEraDateTimeField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeChronoGJEraDateTimeField")
