//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/format/ISOPeriodFormat.java
//

#ifndef _OrgJodaTimeFormatISOPeriodFormat_H_
#define _OrgJodaTimeFormatISOPeriodFormat_H_

#include "J2ObjC_header.h"

@class OrgJodaTimeFormatPeriodFormatter;

/*!
 @brief Factory that creates instances of PeriodFormatter for the ISO8601 standard.
 <p>
 Period formatting is performed by the <code>PeriodFormatter</code> class.
 Three classes provide factory methods to create formatters, and this is one.
 The others are <code>PeriodFormat</code> and <code>PeriodFormatterBuilder</code>.
 <p>
 ISOPeriodFormat is thread-safe and immutable, and the formatters it
 returns are as well.
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeFormatISOPeriodFormat : NSObject

#pragma mark Public

/*!
 @brief The alternate ISO format, PyyyymmddThhmmss, which excludes weeks.
 <p>
 Even if weeks are present in the period, they are not output.
 Fractional seconds (milliseconds) will appear if required.
 @return the formatter
 */
+ (OrgJodaTimeFormatPeriodFormatter *)alternate;

/*!
 @brief The alternate ISO format, Pyyyy-mm-ddThh:mm:ss, which excludes weeks.
 <p>
 Even if weeks are present in the period, they are not output.
 Fractional seconds (milliseconds) will appear if required.
 @return the formatter
 */
+ (OrgJodaTimeFormatPeriodFormatter *)alternateExtended;

/*!
 @brief The alternate ISO format, Pyyyy-Www-ddThh:mm:ss, which excludes months.
 <p>
 Even if months are present in the period, they are not output.
 Fractional seconds (milliseconds) will appear if required.
 @return the formatter
 */
+ (OrgJodaTimeFormatPeriodFormatter *)alternateExtendedWithWeeks;

/*!
 @brief The alternate ISO format, PyyyyWwwddThhmmss, which excludes months.
 <p>
 Even if months are present in the period, they are not output.
 Fractional seconds (milliseconds) will appear if required.
 @return the formatter
 */
+ (OrgJodaTimeFormatPeriodFormatter *)alternateWithWeeks;

/*!
 @brief The standard ISO format - PyYmMwWdDThHmMsS.
 Milliseconds are not output.
 Note that the ISO8601 standard actually indicates weeks should not
 be shown if any other field is present and vice versa.
 @return the formatter
 */
+ (OrgJodaTimeFormatPeriodFormatter *)standard;

#pragma mark Protected

/*!
 @brief Constructor.
 @since 1.1 (previously private)
 */
- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFormatISOPeriodFormat)

FOUNDATION_EXPORT void OrgJodaTimeFormatISOPeriodFormat_init(OrgJodaTimeFormatISOPeriodFormat *self);

FOUNDATION_EXPORT OrgJodaTimeFormatISOPeriodFormat *new_OrgJodaTimeFormatISOPeriodFormat_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatISOPeriodFormat_standard();

FOUNDATION_EXPORT OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatISOPeriodFormat_alternate();

FOUNDATION_EXPORT OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatISOPeriodFormat_alternateExtended();

FOUNDATION_EXPORT OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatISOPeriodFormat_alternateWithWeeks();

FOUNDATION_EXPORT OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeFormatISOPeriodFormat_alternateExtendedWithWeeks();

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatISOPeriodFormat)

#endif // _OrgJodaTimeFormatISOPeriodFormat_H_
