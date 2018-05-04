//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/format/PeriodFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFormatPeriodFormat")
#ifdef RESTRICT_OrgJodaTimeFormatPeriodFormat
#define INCLUDE_ALL_OrgJodaTimeFormatPeriodFormat 0
#else
#define INCLUDE_ALL_OrgJodaTimeFormatPeriodFormat 1
#endif
#undef RESTRICT_OrgJodaTimeFormatPeriodFormat

#if !defined (OrgJodaTimeFormatPeriodFormat_) && (INCLUDE_ALL_OrgJodaTimeFormatPeriodFormat || defined(INCLUDE_OrgJodaTimeFormatPeriodFormat))
#define OrgJodaTimeFormatPeriodFormat_

@class JavaUtilLocale;
@class OrgJodaTimeFormatPeriodFormatter;

@interface OrgJodaTimeFormatPeriodFormat : NSObject

#pragma mark Public

+ (OrgJodaTimeFormatPeriodFormatter *)getDefault;

+ (OrgJodaTimeFormatPeriodFormatter *)wordBased;

+ (OrgJodaTimeFormatPeriodFormatter *)wordBasedWithJavaUtilLocale:(JavaUtilLocale *)locale;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeFormatPeriodFormat)

FOUNDATION_EXPORT void OrgJodaTimeFormatPeriodFormat_init(OrgJodaTimeFormatPeriodFormat *self);

FOUNDATION_EXPORT OrgJodaTimeFormatPeriodFormat *new_OrgJodaTimeFormatPeriodFormat_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFormatPeriodFormat *create_OrgJodaTimeFormatPeriodFormat_init(void);

FOUNDATION_EXPORT OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_getDefault(void);

FOUNDATION_EXPORT OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_wordBased(void);

FOUNDATION_EXPORT OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatPeriodFormat_wordBasedWithJavaUtilLocale_(JavaUtilLocale *locale);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatPeriodFormat)

#endif

#if !defined (OrgJodaTimeFormatPeriodFormat_DynamicWordBased_) && (INCLUDE_ALL_OrgJodaTimeFormatPeriodFormat || defined(INCLUDE_OrgJodaTimeFormatPeriodFormat_DynamicWordBased))
#define OrgJodaTimeFormatPeriodFormat_DynamicWordBased_

#define RESTRICT_OrgJodaTimeFormatPeriodPrinter 1
#define INCLUDE_OrgJodaTimeFormatPeriodPrinter 1
#include "org/joda/time/format/PeriodPrinter.h"

#define RESTRICT_OrgJodaTimeFormatPeriodParser 1
#define INCLUDE_OrgJodaTimeFormatPeriodParser 1
#include "org/joda/time/format/PeriodParser.h"

@class JavaIoWriter;
@class JavaLangStringBuffer;
@class JavaUtilLocale;
@class OrgJodaTimeFormatPeriodFormatter;
@protocol OrgJodaTimeReadWritablePeriod;
@protocol OrgJodaTimeReadablePeriod;

@interface OrgJodaTimeFormatPeriodFormat_DynamicWordBased : NSObject < OrgJodaTimeFormatPeriodPrinter, OrgJodaTimeFormatPeriodParser >

#pragma mark Public

- (jint)calculatePrintedLengthWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                         withJavaUtilLocale:(JavaUtilLocale *)locale;

- (jint)countFieldsToPrintWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                                withInt:(jint)stopAt
                                     withJavaUtilLocale:(JavaUtilLocale *)locale;

- (jint)parseIntoWithOrgJodaTimeReadWritablePeriod:(id<OrgJodaTimeReadWritablePeriod>)period
                                      withNSString:(NSString *)periodStr
                                           withInt:(jint)position
                                withJavaUtilLocale:(JavaUtilLocale *)locale;

- (void)printToWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf
          withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                     withJavaUtilLocale:(JavaUtilLocale *)locale;

- (void)printToWithJavaIoWriter:(JavaIoWriter *)outArg
  withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
             withJavaUtilLocale:(JavaUtilLocale *)locale;

#pragma mark Package-Private

- (instancetype)initWithOrgJodaTimeFormatPeriodFormatter:(OrgJodaTimeFormatPeriodFormatter *)formatter;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFormatPeriodFormat_DynamicWordBased)

FOUNDATION_EXPORT void OrgJodaTimeFormatPeriodFormat_DynamicWordBased_initWithOrgJodaTimeFormatPeriodFormatter_(OrgJodaTimeFormatPeriodFormat_DynamicWordBased *self, OrgJodaTimeFormatPeriodFormatter *formatter);

FOUNDATION_EXPORT OrgJodaTimeFormatPeriodFormat_DynamicWordBased *new_OrgJodaTimeFormatPeriodFormat_DynamicWordBased_initWithOrgJodaTimeFormatPeriodFormatter_(OrgJodaTimeFormatPeriodFormatter *formatter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFormatPeriodFormat_DynamicWordBased *create_OrgJodaTimeFormatPeriodFormat_DynamicWordBased_initWithOrgJodaTimeFormatPeriodFormatter_(OrgJodaTimeFormatPeriodFormatter *formatter);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatPeriodFormat_DynamicWordBased)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFormatPeriodFormat")
