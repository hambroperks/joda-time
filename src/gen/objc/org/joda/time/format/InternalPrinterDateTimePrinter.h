//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/Joda-Time/src/main/java/org/joda/time/format/InternalPrinterDateTimePrinter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFormatInternalPrinterDateTimePrinter")
#ifdef RESTRICT_OrgJodaTimeFormatInternalPrinterDateTimePrinter
#define INCLUDE_ALL_OrgJodaTimeFormatInternalPrinterDateTimePrinter 0
#else
#define INCLUDE_ALL_OrgJodaTimeFormatInternalPrinterDateTimePrinter 1
#endif
#undef RESTRICT_OrgJodaTimeFormatInternalPrinterDateTimePrinter

#if !defined (OrgJodaTimeFormatInternalPrinterDateTimePrinter_) && (INCLUDE_ALL_OrgJodaTimeFormatInternalPrinterDateTimePrinter || defined(INCLUDE_OrgJodaTimeFormatInternalPrinterDateTimePrinter))
#define OrgJodaTimeFormatInternalPrinterDateTimePrinter_

#define RESTRICT_OrgJodaTimeFormatDateTimePrinter 1
#define INCLUDE_OrgJodaTimeFormatDateTimePrinter 1
#include "org/joda/time/format/DateTimePrinter.h"

#define RESTRICT_OrgJodaTimeFormatInternalPrinter 1
#define INCLUDE_OrgJodaTimeFormatInternalPrinter 1
#include "org/joda/time/format/InternalPrinter.h"

@class JavaIoWriter;
@class JavaLangStringBuffer;
@class JavaUtilLocale;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;
@protocol JavaLangAppendable;
@protocol OrgJodaTimeReadablePartial;

/*!
 @brief Adapter between old and new printer interface.
 @author Stephen Colebourne
 @since 2.4
 */
@interface OrgJodaTimeFormatInternalPrinterDateTimePrinter : NSObject < OrgJodaTimeFormatDateTimePrinter, OrgJodaTimeFormatInternalPrinter >

#pragma mark Public

- (jboolean)isEqual:(id)obj;

- (jint)estimatePrintedLength;

- (void)printToWithJavaLangAppendable:(id<JavaLangAppendable>)appendable
                             withLong:(jlong)instant
            withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
                              withInt:(jint)displayOffset
          withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)displayZone
                   withJavaUtilLocale:(JavaUtilLocale *)locale;

- (void)printToWithJavaLangAppendable:(id<JavaLangAppendable>)appendable
       withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                   withJavaUtilLocale:(JavaUtilLocale *)locale;

- (void)printToWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf
                               withLong:(jlong)instant
              withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
                                withInt:(jint)displayOffset
            withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)displayZone
                     withJavaUtilLocale:(JavaUtilLocale *)locale;

- (void)printToWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf
         withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                     withJavaUtilLocale:(JavaUtilLocale *)locale;

- (void)printToWithJavaIoWriter:(JavaIoWriter *)outArg
                       withLong:(jlong)instant
      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
                        withInt:(jint)displayOffset
    withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)displayZone
             withJavaUtilLocale:(JavaUtilLocale *)locale;

- (void)printToWithJavaIoWriter:(JavaIoWriter *)outArg
 withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
             withJavaUtilLocale:(JavaUtilLocale *)locale;

#pragma mark Package-Private

+ (id<OrgJodaTimeFormatDateTimePrinter>)ofWithOrgJodaTimeFormatInternalPrinter:(id<OrgJodaTimeFormatInternalPrinter>)underlying;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFormatInternalPrinterDateTimePrinter)

FOUNDATION_EXPORT id<OrgJodaTimeFormatDateTimePrinter> OrgJodaTimeFormatInternalPrinterDateTimePrinter_ofWithOrgJodaTimeFormatInternalPrinter_(id<OrgJodaTimeFormatInternalPrinter> underlying);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatInternalPrinterDateTimePrinter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFormatInternalPrinterDateTimePrinter")
