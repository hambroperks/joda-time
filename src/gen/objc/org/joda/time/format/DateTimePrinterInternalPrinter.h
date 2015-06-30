//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/format/DateTimePrinterInternalPrinter.java
//

#ifndef _OrgJodaTimeFormatDateTimePrinterInternalPrinter_H_
#define _OrgJodaTimeFormatDateTimePrinterInternalPrinter_H_

#include "J2ObjC_header.h"
#include "org/joda/time/format/InternalPrinter.h"

@class JavaUtilLocale;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;
@protocol JavaLangAppendable;
@protocol OrgJodaTimeFormatDateTimePrinter;
@protocol OrgJodaTimeReadablePartial;

/**
 @brief Adapter between old and new printer interface.
 @author Stephen Colebourne
 @since 2.4
 */
@interface OrgJodaTimeFormatDateTimePrinterInternalPrinter : NSObject < OrgJodaTimeFormatInternalPrinter >

#pragma mark Public

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

#pragma mark Package-Private

- (id<OrgJodaTimeFormatDateTimePrinter>)getUnderlying;

+ (id<OrgJodaTimeFormatInternalPrinter>)ofWithOrgJodaTimeFormatDateTimePrinter:(id<OrgJodaTimeFormatDateTimePrinter>)underlying;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFormatDateTimePrinterInternalPrinter)

FOUNDATION_EXPORT id<OrgJodaTimeFormatInternalPrinter> OrgJodaTimeFormatDateTimePrinterInternalPrinter_ofWithOrgJodaTimeFormatDateTimePrinter_(id<OrgJodaTimeFormatDateTimePrinter> underlying);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatDateTimePrinterInternalPrinter)

#endif // _OrgJodaTimeFormatDateTimePrinterInternalPrinter_H_
