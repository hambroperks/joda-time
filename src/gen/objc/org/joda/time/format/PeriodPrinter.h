//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/format/PeriodPrinter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFormatPeriodPrinter")
#ifdef RESTRICT_OrgJodaTimeFormatPeriodPrinter
#define INCLUDE_ALL_OrgJodaTimeFormatPeriodPrinter 0
#else
#define INCLUDE_ALL_OrgJodaTimeFormatPeriodPrinter 1
#endif
#undef RESTRICT_OrgJodaTimeFormatPeriodPrinter

#if !defined (OrgJodaTimeFormatPeriodPrinter_) && (INCLUDE_ALL_OrgJodaTimeFormatPeriodPrinter || defined(INCLUDE_OrgJodaTimeFormatPeriodPrinter))
#define OrgJodaTimeFormatPeriodPrinter_

@class JavaIoWriter;
@class JavaLangStringBuffer;
@class JavaUtilLocale;
@protocol OrgJodaTimeReadablePeriod;

/*!
 @brief Internal interface for printing textual representations of time periods.
 <p>
  Application users will rarely use this class directly. Instead, you
  will use one of the factory classes to create a <code>PeriodFormatter</code>.
  <p>
  The factory classes are:<br>
  - <code>PeriodFormatterBuilder</code><br>
  - <code>PeriodFormat</code><br>
  - <code>ISOPeriodFormat</code><br>
 @author Brian S O'Neill
 @author Stephen Colebourne
 @since 1.0
 - seealso: PeriodFormatter
 - seealso: PeriodFormatterBuilder
 - seealso: PeriodFormat
 */
@protocol OrgJodaTimeFormatPeriodPrinter < JavaObject >

/*!
 @brief Returns the exact number of characters produced for the given period.
 @param period the period to use
 @param locale the locale to use
 @return the estimated length
 */
- (jint)calculatePrintedLengthWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                         withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Returns the amount of fields from the given period that this printer
  will print.
 @param period the period to use
 @param stopAt stop counting at this value, enter a number  &ge;  256 to count all
 @param locale the locale to use
 @return amount of fields printed
 */
- (jint)countFieldsToPrintWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                                withInt:(jint)stopAt
                                     withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Prints a ReadablePeriod to a StringBuffer.
 @param buf the formatted period is appended to this buffer
 @param period the period to format
 @param locale the locale to use
 */
- (void)printToWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf
          withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                     withJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Prints a ReadablePeriod to a Writer.
 @param outArg the formatted period is written out
 @param period the period to format
 @param locale the locale to use
 */
- (void)printToWithJavaIoWriter:(JavaIoWriter *)outArg
  withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
             withJavaUtilLocale:(JavaUtilLocale *)locale;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFormatPeriodPrinter)

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatPeriodPrinter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFormatPeriodPrinter")
