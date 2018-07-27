//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/chrono/GJMonthOfYearDateTimeField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeChronoGJMonthOfYearDateTimeField")
#ifdef RESTRICT_OrgJodaTimeChronoGJMonthOfYearDateTimeField
#define INCLUDE_ALL_OrgJodaTimeChronoGJMonthOfYearDateTimeField 0
#else
#define INCLUDE_ALL_OrgJodaTimeChronoGJMonthOfYearDateTimeField 1
#endif
#undef RESTRICT_OrgJodaTimeChronoGJMonthOfYearDateTimeField

#if !defined (OrgJodaTimeChronoGJMonthOfYearDateTimeField_) && (INCLUDE_ALL_OrgJodaTimeChronoGJMonthOfYearDateTimeField || defined(INCLUDE_OrgJodaTimeChronoGJMonthOfYearDateTimeField))
#define OrgJodaTimeChronoGJMonthOfYearDateTimeField_

#define RESTRICT_OrgJodaTimeChronoBasicMonthOfYearDateTimeField 1
#define INCLUDE_OrgJodaTimeChronoBasicMonthOfYearDateTimeField 1
#include "org/joda/time/chrono/BasicMonthOfYearDateTimeField.h"

@class JavaUtilLocale;
@class OrgJodaTimeChronoBasicChronology;

@interface OrgJodaTimeChronoGJMonthOfYearDateTimeField : OrgJodaTimeChronoBasicMonthOfYearDateTimeField

#pragma mark Public

- (NSString *)getAsShortTextWithInt:(jint)fieldValue
                 withJavaUtilLocale:(JavaUtilLocale *)locale;

- (NSString *)getAsTextWithInt:(jint)fieldValue
            withJavaUtilLocale:(JavaUtilLocale *)locale;

- (jint)getMaximumShortTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale;

- (jint)getMaximumTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale;

#pragma mark Protected

- (jint)convertTextWithNSString:(NSString *)text
             withJavaUtilLocale:(JavaUtilLocale *)locale;

#pragma mark Package-Private

- (instancetype)initWithOrgJodaTimeChronoBasicChronology:(OrgJodaTimeChronoBasicChronology *)chronology;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeChronoGJMonthOfYearDateTimeField)

FOUNDATION_EXPORT void OrgJodaTimeChronoGJMonthOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_(OrgJodaTimeChronoGJMonthOfYearDateTimeField *self, OrgJodaTimeChronoBasicChronology *chronology);

FOUNDATION_EXPORT OrgJodaTimeChronoGJMonthOfYearDateTimeField *new_OrgJodaTimeChronoGJMonthOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_(OrgJodaTimeChronoBasicChronology *chronology) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeChronoGJMonthOfYearDateTimeField *create_OrgJodaTimeChronoGJMonthOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_(OrgJodaTimeChronoBasicChronology *chronology);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoGJMonthOfYearDateTimeField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeChronoGJMonthOfYearDateTimeField")
