//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/chrono/BasicSingleEraDateTimeField.java
//

#ifndef _OrgJodaTimeChronoBasicSingleEraDateTimeField_H_
#define _OrgJodaTimeChronoBasicSingleEraDateTimeField_H_

#include "J2ObjC_header.h"
#include "org/joda/time/field/BaseDateTimeField.h"

@class JavaUtilLocale;
@class OrgJodaTimeDurationField;

/*!
 @brief Provides time calculations for the coptic era component of time.
 @author Brian S O'Neill
 @author Stephen Colebourne
 @since 1.2, refactored from CopticEraDateTimeField
 */
@interface OrgJodaTimeChronoBasicSingleEraDateTimeField : OrgJodaTimeFieldBaseDateTimeField

#pragma mark Public

/*!
  
 */
- (jint)getWithLong:(jlong)instant;

/*!
  
 */
- (NSString *)getAsTextWithInt:(jint)fieldValue
            withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
  
 */
- (OrgJodaTimeDurationField *)getDurationField;

/*!
  
 */
- (jint)getMaximumTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
  
 */
- (jint)getMaximumValue;

/*!
  
 */
- (jint)getMinimumValue;

/*!
  
 */
- (OrgJodaTimeDurationField *)getRangeDurationField;

/*!
  
 */
- (jboolean)isLenient;

/*!
  
 */
- (jlong)roundCeilingWithLong:(jlong)instant;

/*!
  
 */
- (jlong)roundFloorWithLong:(jlong)instant;

/*!
  
 */
- (jlong)roundHalfCeilingWithLong:(jlong)instant;

/*!
  
 */
- (jlong)roundHalfEvenWithLong:(jlong)instant;

/*!
  
 */
- (jlong)roundHalfFloorWithLong:(jlong)instant;

/*!
  
 */
- (jlong)setWithLong:(jlong)instant
             withInt:(jint)era;

/*!
  
 */
- (jlong)setWithLong:(jlong)instant
        withNSString:(NSString *)text
  withJavaUtilLocale:(JavaUtilLocale *)locale;

#pragma mark Package-Private

/*!
 @brief Restricted constructor.
 */
- (instancetype)initWithNSString:(NSString *)text;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeChronoBasicSingleEraDateTimeField)

FOUNDATION_EXPORT void OrgJodaTimeChronoBasicSingleEraDateTimeField_initWithNSString_(OrgJodaTimeChronoBasicSingleEraDateTimeField *self, NSString *text);

FOUNDATION_EXPORT OrgJodaTimeChronoBasicSingleEraDateTimeField *new_OrgJodaTimeChronoBasicSingleEraDateTimeField_initWithNSString_(NSString *text) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoBasicSingleEraDateTimeField)

#endif // _OrgJodaTimeChronoBasicSingleEraDateTimeField_H_
