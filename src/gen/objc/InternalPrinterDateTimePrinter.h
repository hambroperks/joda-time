//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/format/InternalPrinterDateTimePrinter.java
//

#ifndef _OrgJodaTimeFormatInternalPrinterDateTimePrinter_H_
#define _OrgJodaTimeFormatInternalPrinterDateTimePrinter_H_

@class JavaIoWriter;
@class JavaLangStringBuffer;
@class JavaUtilLocale;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;
@protocol JavaLangAppendable;
@protocol OrgJodaTimeReadablePartial;

#import "JreEmulation.h"
#include "DateTimePrinter.h"
#include "InternalPrinter.h"

/**
 @brief Adapter between old and new printer interface.
 @author Stephen Colebourne
 @since 2.4
 */
@interface OrgJodaTimeFormatInternalPrinterDateTimePrinter : NSObject < OrgJodaTimeFormatDateTimePrinter, OrgJodaTimeFormatInternalPrinter > {
 @public
  id<OrgJodaTimeFormatInternalPrinter> underlying_;
}

+ (id<OrgJodaTimeFormatDateTimePrinter>)ofWithOrgJodaTimeFormatInternalPrinter:(id<OrgJodaTimeFormatInternalPrinter>)underlying;

- (instancetype)initWithOrgJodaTimeFormatInternalPrinter:(id<OrgJodaTimeFormatInternalPrinter>)underlying;

- (int)estimatePrintedLength;

- (void)printToWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf
                               withLong:(long long int)instant
              withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
                                withInt:(int)displayOffset
            withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)displayZone
                     withJavaUtilLocale:(JavaUtilLocale *)locale;

- (void)printToWithJavaIoWriter:(JavaIoWriter *)outArg
                       withLong:(long long int)instant
      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
                        withInt:(int)displayOffset
    withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)displayZone
             withJavaUtilLocale:(JavaUtilLocale *)locale;

- (void)printToWithJavaLangAppendable:(id<JavaLangAppendable>)appendable
                             withLong:(long long int)instant
            withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
                              withInt:(int)displayOffset
          withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)displayZone
                   withJavaUtilLocale:(JavaUtilLocale *)locale;

- (void)printToWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf
         withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                     withJavaUtilLocale:(JavaUtilLocale *)locale;

- (void)printToWithJavaIoWriter:(JavaIoWriter *)outArg
 withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
             withJavaUtilLocale:(JavaUtilLocale *)locale;

- (void)printToWithJavaLangAppendable:(id<JavaLangAppendable>)appendable
       withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                   withJavaUtilLocale:(JavaUtilLocale *)locale;

- (BOOL)isEqual:(id)obj;

- (void)copyAllFieldsTo:(OrgJodaTimeFormatInternalPrinterDateTimePrinter *)other;

@end

__attribute__((always_inline)) inline void OrgJodaTimeFormatInternalPrinterDateTimePrinter_init() {}

J2OBJC_FIELD_SETTER(OrgJodaTimeFormatInternalPrinterDateTimePrinter, underlying_, id<OrgJodaTimeFormatInternalPrinter>)

#endif // _OrgJodaTimeFormatInternalPrinterDateTimePrinter_H_
