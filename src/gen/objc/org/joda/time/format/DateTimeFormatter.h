//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/format/DateTimeFormatter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFormatDateTimeFormatter")
#ifdef RESTRICT_OrgJodaTimeFormatDateTimeFormatter
#define INCLUDE_ALL_OrgJodaTimeFormatDateTimeFormatter 0
#else
#define INCLUDE_ALL_OrgJodaTimeFormatDateTimeFormatter 1
#endif
#undef RESTRICT_OrgJodaTimeFormatDateTimeFormatter

#if !defined (OrgJodaTimeFormatDateTimeFormatter_) && (INCLUDE_ALL_OrgJodaTimeFormatDateTimeFormatter || defined(INCLUDE_OrgJodaTimeFormatDateTimeFormatter))
#define OrgJodaTimeFormatDateTimeFormatter_

@class JavaIoWriter;
@class JavaLangInteger;
@class JavaLangStringBuffer;
@class JavaUtilLocale;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTime;
@class OrgJodaTimeDateTimeZone;
@class OrgJodaTimeLocalDate;
@class OrgJodaTimeLocalDateTime;
@class OrgJodaTimeLocalTime;
@class OrgJodaTimeMutableDateTime;
@protocol JavaLangAppendable;
@protocol OrgJodaTimeFormatDateTimeParser;
@protocol OrgJodaTimeFormatDateTimePrinter;
@protocol OrgJodaTimeFormatInternalParser;
@protocol OrgJodaTimeFormatInternalPrinter;
@protocol OrgJodaTimeReadWritableInstant;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadablePartial;

/*!
 @brief Controls the printing and parsing of a datetime to and from a string.
 <p>
  This class is the main API for printing and parsing used by most applications.
  Instances of this class are created via one of three factory classes: 
 <ul>
  <li><code>DateTimeFormat</code> - formats by pattern and style</li>
  <li><code>ISODateTimeFormat</code> - ISO8601 formats</li>
  <li><code>DateTimeFormatterBuilder</code> - complex formats created via method calls</li>
  </ul>
  <p>
  An instance of this class holds a reference internally to one printer and
  one parser. It is possible that one of these may be null, in which case the
  formatter cannot print/parse. This can be checked via the <code>isPrinter()</code>
  and <code>isParser()</code> methods. 
 <p>
  The underlying printer/parser can be altered to behave exactly as required
  by using one of the decorator modifiers: 
 <ul>
  <li><code>withLocale(Locale)</code> - returns a new formatter that uses the specified locale</li>
  <li><code>withZone(DateTimeZone)</code> - returns a new formatter that uses the specified time zone</li>
  <li><code>withChronology(Chronology)</code> - returns a new formatter that uses the specified chronology</li>
  <li><code>withOffsetParsed()</code> - returns a new formatter that returns the parsed time zone offset</li>
  <li><code>withPivotYear(int)</code> - returns a new formatter with the specified pivot year</li>
  <li><code>withDefaultYear(int)</code> - returns a new formatter with the specified default year</li>
  </ul>
  Each of these returns a new formatter (instances of this class are immutable). 
 <p>
  The main methods of the class are the <code>printXxx</code> and 
 <code>parseXxx</code> methods. These are used as follows: 
 @code

  // print using the defaults (default locale, chronology/zone of the datetime)
  String dateStr = formatter.print(dt);
  // print using the French locale
  String dateStr = formatter.withLocale(Locale.FRENCH).print(dt);
  // print using the UTC zone
  String dateStr = formatter.withZone(DateTimeZone.UTC).print(dt); 
  // parse using the Paris zone
  DateTime date = formatter.withZone(DateTimeZone.forID("Europe/Paris")).parseDateTime(str); 
  
@endcode
  <p>
  Parsing builds up the resultant instant by 'setting' the value of each parsed field
  from largest to smallest onto an initial instant, typically 1970-01-01T00:00Z.
  This design means that day-of-month is set before day-of-week.
  As such, if both the day-of-month and day-of-week are parsed, and the day-of-week
  is incorrect, then the day-of-week overrides the day-of-month. 
  This has a side effect if the input is not consistent.
 @author Brian S O'Neill
 @author Stephen Colebourne
 @author Fredrik Borgh
 @since 1.0
 */
@interface OrgJodaTimeFormatDateTimeFormatter : NSObject

#pragma mark Public

/*!
 @brief Creates a new formatter, however you will normally use the factory
  or the builder.
 @param printer the internal printer, null if cannot print
 @param parser the internal parser, null if cannot parse
 */
- (instancetype)initWithOrgJodaTimeFormatDateTimePrinter:(id<OrgJodaTimeFormatDateTimePrinter>)printer
                     withOrgJodaTimeFormatDateTimeParser:(id<OrgJodaTimeFormatDateTimeParser>)parser;

/*!
 @brief Gets the chronology to use as an override.
 @return the chronology to use as an override
 */
- (OrgJodaTimeChronology *)getChronolgy;

/*!
 @brief Gets the chronology to use as an override.
 @return the chronology to use as an override
 */
- (OrgJodaTimeChronology *)getChronology;

/*!
 @brief Gets the default year for parsing months and days.
 @return the default year for parsing months and days
 @since 2.0
 */
- (jint)getDefaultYear;

/*!
 @brief Gets the locale that will be used for printing and parsing.
 @return the locale to use; if null, formatter uses default locale at
  invocation time
 */
- (JavaUtilLocale *)getLocale;

/*!
 @brief Gets the internal parser object that performs the real parsing work.
 @return the internal parser; is null if parsing not supported
 */
- (id<OrgJodaTimeFormatDateTimeParser>)getParser;

/*!
 @brief Gets the pivot year to use as an override.
 @return the pivot year to use as an override
 @since 1.1
 */
- (JavaLangInteger *)getPivotYear;

/*!
 @brief Gets the internal printer object that performs the real printing work.
 @return the internal printer; is null if printing not supported
 */
- (id<OrgJodaTimeFormatDateTimePrinter>)getPrinter;

/*!
 @brief Gets the zone to use as an override.
 @return the zone to use as an override
 */
- (OrgJodaTimeDateTimeZone *)getZone;

/*!
 @brief Checks whether the offset from the string is used as the zone of
  the parsed datetime.
 @return true if the offset from the string is used as the zone
 */
- (jboolean)isOffsetParsed;

/*!
 @brief Is this formatter capable of parsing.
 @return true if this is a parser
 */
- (jboolean)isParser;

/*!
 @brief Is this formatter capable of printing.
 @return true if this is a printer
 */
- (jboolean)isPrinter;

/*!
 @brief Parses a date-time from the given text, returning a new DateTime.
 <p>
  The parse will use the zone and chronology specified on this formatter. 
 <p>
  If the text contains a time zone string then that will be taken into
  account in adjusting the time of day as follows.
  If the <code>withOffsetParsed()</code> has been called, then the resulting
  DateTime will have a fixed offset based on the parsed time zone.
  Otherwise the resulting DateTime will have the zone of this formatter,
  but the parsed zone may have caused the time to be adjusted.
 @param text the text to parse, not null
 @return the parsed date-time, never null
 @throw UnsupportedOperationExceptionif parsing is not supported
 @throw IllegalArgumentExceptionif the text to parse is invalid
 */
- (OrgJodaTimeDateTime *)parseDateTimeWithNSString:(NSString *)text;

/*!
 @brief Parses a datetime from the given text, at the given position, saving the
  result into the fields of the given ReadWritableInstant.If the parse
  succeeds, the return value is the new text position.
 Note that the parse
  may succeed without fully reading the text and in this case those fields
  that were read will be set. 
 <p>
  Only those fields present in the string will be changed in the specified
  instant. All other fields will remain unaltered. Thus if the string only
  contains a year and a month, then the day and time will be retained from
  the input instant. If this is not the behaviour you want, then reset the
  fields before calling this method, or use <code>parseDateTime(String)</code>
  or <code>parseMutableDateTime(String)</code>.
  <p>
  If it fails, the return value is negative, but the instant may still be
  modified. To determine the position where the parse failed, apply the
  one's complement operator (~) on the return value. 
 <p>
  This parse method ignores the <code>year</code> and
  parses using the year from the supplied instant based on the chronology
  and time-zone of the supplied instant. 
 <p>
  The parse will use the chronology of the instant.
 @param instant an instant that will be modified, not null
 @param text the text to parse
 @param position position to start parsing from
 @return new position, negative value means parse failed -
   apply complement operator (~) to get position of failure
 @throw UnsupportedOperationExceptionif parsing is not supported
 @throw IllegalArgumentExceptionif the instant is null
 @throw IllegalArgumentExceptionif any field is out of range
 */
- (jint)parseIntoWithOrgJodaTimeReadWritableInstant:(id<OrgJodaTimeReadWritableInstant>)instant
                                       withNSString:(NSString *)text
                                            withInt:(jint)position;

/*!
 @brief Parses only the local date from the given text, returning a new LocalDate.
 <p>
  This will parse the text fully according to the formatter, using the UTC zone.
  Once parsed, only the local date will be used.
  This means that any parsed time, time-zone or offset field is completely ignored.
  It also means that the zone and offset-parsed settings are ignored.
 @param text the text to parse, not null
 @return the parsed date, never null
 @throw UnsupportedOperationExceptionif parsing is not supported
 @throw IllegalArgumentExceptionif the text to parse is invalid
 @since 2.0
 */
- (OrgJodaTimeLocalDate *)parseLocalDateWithNSString:(NSString *)text;

/*!
 @brief Parses only the local date-time from the given text, returning a new LocalDateTime.
 <p>
  This will parse the text fully according to the formatter, using the UTC zone.
  Once parsed, only the local date-time will be used.
  This means that any parsed time-zone or offset field is completely ignored.
  It also means that the zone and offset-parsed settings are ignored.
 @param text the text to parse, not null
 @return the parsed date-time, never null
 @throw UnsupportedOperationExceptionif parsing is not supported
 @throw IllegalArgumentExceptionif the text to parse is invalid
 @since 2.0
 */
- (OrgJodaTimeLocalDateTime *)parseLocalDateTimeWithNSString:(NSString *)text;

/*!
 @brief Parses only the local time from the given text, returning a new LocalTime.
 <p>
  This will parse the text fully according to the formatter, using the UTC zone.
  Once parsed, only the local time will be used.
  This means that any parsed date, time-zone or offset field is completely ignored.
  It also means that the zone and offset-parsed settings are ignored.
 @param text the text to parse, not null
 @return the parsed time, never null
 @throw UnsupportedOperationExceptionif parsing is not supported
 @throw IllegalArgumentExceptionif the text to parse is invalid
 @since 2.0
 */
- (OrgJodaTimeLocalTime *)parseLocalTimeWithNSString:(NSString *)text;

/*!
 @brief Parses a datetime from the given text, returning the number of
  milliseconds since the epoch, 1970-01-01T00:00:00Z.
 <p>
  The parse will use the ISO chronology, and the default time zone.
  If the text contains a time zone string then that will be taken into account.
 @param text the text to parse, not null
 @return parsed value expressed in milliseconds since the epoch
 @throw UnsupportedOperationExceptionif parsing is not supported
 @throw IllegalArgumentExceptionif the text to parse is invalid
 */
- (jlong)parseMillisWithNSString:(NSString *)text;

/*!
 @brief Parses a date-time from the given text, returning a new MutableDateTime.
 <p>
  The parse will use the zone and chronology specified on this formatter. 
 <p>
  If the text contains a time zone string then that will be taken into
  account in adjusting the time of day as follows.
  If the <code>withOffsetParsed()</code> has been called, then the resulting
  DateTime will have a fixed offset based on the parsed time zone.
  Otherwise the resulting DateTime will have the zone of this formatter,
  but the parsed zone may have caused the time to be adjusted.
 @param text the text to parse, not null
 @return the parsed date-time, never null
 @throw UnsupportedOperationExceptionif parsing is not supported
 @throw IllegalArgumentExceptionif the text to parse is invalid
 */
- (OrgJodaTimeMutableDateTime *)parseMutableDateTimeWithNSString:(NSString *)text;

/*!
 @brief Prints a millisecond instant to a String.
 <p>
  This method will use the override zone and the override chronology if
  they are set. Otherwise it will use the ISO chronology and default zone.
 @param instant millis since 1970-01-01T00:00:00Z
 @return the printed result
 */
- (NSString *)printWithLong:(jlong)instant;

/*!
 @brief Prints a ReadableInstant to a String.
 <p>
  This method will use the override zone and the override chronology if
  they are set. Otherwise it will use the chronology and zone of the instant.
 @param instant instant to format, null means now
 @return the printed result
 */
- (NSString *)printWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

/*!
 @brief Prints a ReadablePartial to a new String.
 <p>
  Neither the override chronology nor the override zone are used
  by this method.
 @param partial partial to format
 @return the printed result
 */
- (NSString *)printWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial;

/*!
 @brief Prints an instant from milliseconds since 1970-01-01T00:00:00Z,
  using ISO chronology in the default DateTimeZone.
 @param appendable the destination to format to, not null
 @param instant millis since 1970-01-01T00:00:00Z
 @since 2.0
 */
- (void)printToWithJavaLangAppendable:(id<JavaLangAppendable>)appendable
                             withLong:(jlong)instant;

/*!
 @brief Prints a ReadableInstant, using the chronology supplied by the instant.
 @param appendable the destination to format to, not null
 @param instant instant to format, null means now
 @since 2.0
 */
- (void)printToWithJavaLangAppendable:(id<JavaLangAppendable>)appendable
       withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

/*!
 @brief Prints a ReadablePartial.
 <p>
  Neither the override chronology nor the override zone are used
  by this method.
 @param appendable the destination to format to, not null
 @param partial partial to format
 @since 2.0
 */
- (void)printToWithJavaLangAppendable:(id<JavaLangAppendable>)appendable
       withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial;

/*!
 @brief Prints an instant from milliseconds since 1970-01-01T00:00:00Z,
  using ISO chronology in the default DateTimeZone.
 @param buf the destination to format to, not null
 @param instant millis since 1970-01-01T00:00:00Z
 */
- (void)printToWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf
                               withLong:(jlong)instant;

/*!
 @brief Prints a ReadableInstant, using the chronology supplied by the instant.
 @param buf the destination to format to, not null
 @param instant instant to format, null means now
 */
- (void)printToWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf
         withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

/*!
 @brief Prints a ReadablePartial.
 <p>
  Neither the override chronology nor the override zone are used
  by this method.
 @param buf the destination to format to, not null
 @param partial partial to format
 */
- (void)printToWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf
         withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial;

/*!
 @brief Prints an instant from milliseconds since 1970-01-01T00:00:00Z,
  using ISO chronology in the default DateTimeZone.
 @param outArg the destination to format to, not null
 @param instant millis since 1970-01-01T00:00:00Z
 */
- (void)printToWithJavaIoWriter:(JavaIoWriter *)outArg
                       withLong:(jlong)instant;

/*!
 @brief Prints a ReadableInstant, using the chronology supplied by the instant.
 @param outArg the destination to format to, not null
 @param instant instant to format, null means now
 */
- (void)printToWithJavaIoWriter:(JavaIoWriter *)outArg
 withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

/*!
 @brief Prints a ReadablePartial.
 <p>
  Neither the override chronology nor the override zone are used
  by this method.
 @param outArg the destination to format to, not null
 @param partial partial to format
 */
- (void)printToWithJavaIoWriter:(JavaIoWriter *)outArg
 withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial;

/*!
 @brief Returns a new formatter that will use the specified chronology in
  preference to that of the printed object, or ISO on a parse.
 <p>
  When printing, this chronology will be used in preference to the chronology
  from the datetime that would otherwise be used. 
 <p>
  When parsing, this chronology will be set on the parsed datetime. 
 <p>
  A null chronology means no-override.
  If both an override chronology and an override zone are set, the
  override zone will take precedence over the zone in the chronology.
 @param chrono the chronology to use as an override
 @return the new formatter
 */
- (OrgJodaTimeFormatDateTimeFormatter *)withChronologyWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/*!
 @brief Returns a new formatter that will use the specified default year.
 <p>
  The default year is used when parsing in the case where there is a
  month or a day but not a year. Specifically, it is used if there is
  a field parsed with a duration between the length of a month and the
  length of a day inclusive. 
 <p>
  This value is typically used to move the year from 1970 to a leap year
  to enable February 29th to be parsed.
  Unless customised, the year 2000 is used. 
 <p>
  This setting has no effect when printing.
 @param defaultYear the default year to use
 @return the new formatter, not null
 @since 2.0
 */
- (OrgJodaTimeFormatDateTimeFormatter *)withDefaultYearWithInt:(jint)defaultYear;

/*!
 @brief Returns a new formatter with a different locale that will be used
  for printing and parsing.
 <p>
  A DateTimeFormatter is immutable, so a new instance is returned,
  and the original is unaltered and still usable.
 @param locale the locale to use; if null, formatter uses default locale  at invocation time
 @return the new formatter
 */
- (OrgJodaTimeFormatDateTimeFormatter *)withLocaleWithJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Returns a new formatter that will create a datetime with a time zone
  equal to that of the offset of the parsed string.
 <p>
  After calling this method, a string '2004-06-09T10:20:30-08:00' will
  create a datetime with a zone of -08:00 (a fixed zone, with no daylight
  savings rules). If the parsed string represents a local time (no zone
  offset) the parsed datetime will be in the default zone. 
 <p>
  Calling this method sets the override zone to null.
  Calling the override zone method sets this flag off.
 @return the new formatter
 */
- (OrgJodaTimeFormatDateTimeFormatter *)withOffsetParsed;

/*!
 @brief Returns a new formatter that will use the specified pivot year for two
  digit year parsing in preference to that stored in the parser.
 <p>
  This setting is useful for changing the pivot year of formats built
  using a pattern - <code>DateTimeFormat.forPattern(String)</code>.
  <p>
  When parsing, this pivot year is used.
  There is no effect when printing. 
 <p>
  The pivot year enables a two digit year to be converted to a four
  digit year. The pivot represents the year in the middle of the
  supported range of years. Thus the full range of years that will
  be built is <code>(pivot - 50) .. (pivot + 49)</code>.
  
 @code

  pivot   supported range   00 is   20 is   40 is   60 is   80 is
  ---------------------------------------------------------------
  1950      1900..1999      1900    1920    1940    1960    1980
  1975      1925..2024      2000    2020    1940    1960    1980
  2000      1950..2049      2000    2020    2040    1960    1980
  2025      1975..2074      2000    2020    2040    2060    1980
  2050      2000..2099      2000    2020    2040    2060    2080 
  
@endcode
 @param pivotYear the pivot year to use as an override when parsing
 @return the new formatter
 @since 1.1
 */
- (OrgJodaTimeFormatDateTimeFormatter *)withPivotYearWithInt:(jint)pivotYear;

/*!
 @brief Returns a new formatter that will use the specified pivot year for two
  digit year parsing in preference to that stored in the parser.
 <p>
  This setting is useful for changing the pivot year of formats built
  using a pattern - <code>DateTimeFormat.forPattern(String)</code>.
  <p>
  When parsing, this pivot year is used. Null means no-override.
  There is no effect when printing. 
 <p>
  The pivot year enables a two digit year to be converted to a four
  digit year. The pivot represents the year in the middle of the
  supported range of years. Thus the full range of years that will
  be built is <code>(pivot - 50) .. (pivot + 49)</code>.
  
 @code

  pivot   supported range   00 is   20 is   40 is   60 is   80 is
  ---------------------------------------------------------------
  1950      1900..1999      1900    1920    1940    1960    1980
  1975      1925..2024      2000    2020    1940    1960    1980
  2000      1950..2049      2000    2020    2040    1960    1980
  2025      1975..2074      2000    2020    2040    2060    1980
  2050      2000..2099      2000    2020    2040    2060    2080 
  
@endcode
 @param pivotYear the pivot year to use as an override when parsing
 @return the new formatter
 @since 1.1
 */
- (OrgJodaTimeFormatDateTimeFormatter *)withPivotYearWithJavaLangInteger:(JavaLangInteger *)pivotYear;

/*!
 @brief Returns a new formatter that will use the specified zone in preference
  to the zone of the printed object, or default zone on a parse.
 <p>
  When printing, this zone will be used in preference to the zone
  from the datetime that would otherwise be used. 
 <p>
  When parsing, this zone will be set on the parsed datetime. 
 <p>
  A null zone means of no-override.
  If both an override chronology and an override zone are set, the
  override zone will take precedence over the zone in the chronology.
 @param zone the zone to use as an override
 @return the new formatter
 */
- (OrgJodaTimeFormatDateTimeFormatter *)withZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/*!
 @brief Returns a new formatter that will use the UTC zone in preference
  to the zone of the printed object, or default zone on a parse.
 <p>
  When printing, UTC will be used in preference to the zone
  from the datetime that would otherwise be used. 
 <p>
  When parsing, UTC will be set on the parsed datetime. 
 <p>
  If both an override chronology and an override zone are set, the
  override zone will take precedence over the zone in the chronology.
 @return the new formatter, never null
 @since 2.0
 */
- (OrgJodaTimeFormatDateTimeFormatter *)withZoneUTC;

#pragma mark Package-Private

/*!
 @brief Creates a new formatter, however you will normally use the factory
  or the builder.
 @param printer the internal printer, null if cannot print
 @param parser the internal parser, null if cannot parse
 */
- (instancetype)initWithOrgJodaTimeFormatInternalPrinter:(id<OrgJodaTimeFormatInternalPrinter>)printer
                     withOrgJodaTimeFormatInternalParser:(id<OrgJodaTimeFormatInternalParser>)parser;

- (id<OrgJodaTimeFormatInternalParser>)getParser0;

/*!
 @brief Gets the internal printer object that performs the real printing work.
 @return the internal printer; is null if printing not supported
 */
- (id<OrgJodaTimeFormatInternalPrinter>)getPrinter0;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFormatDateTimeFormatter)

FOUNDATION_EXPORT void OrgJodaTimeFormatDateTimeFormatter_initWithOrgJodaTimeFormatDateTimePrinter_withOrgJodaTimeFormatDateTimeParser_(OrgJodaTimeFormatDateTimeFormatter *self, id<OrgJodaTimeFormatDateTimePrinter> printer, id<OrgJodaTimeFormatDateTimeParser> parser);

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *new_OrgJodaTimeFormatDateTimeFormatter_initWithOrgJodaTimeFormatDateTimePrinter_withOrgJodaTimeFormatDateTimeParser_(id<OrgJodaTimeFormatDateTimePrinter> printer, id<OrgJodaTimeFormatDateTimeParser> parser) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *create_OrgJodaTimeFormatDateTimeFormatter_initWithOrgJodaTimeFormatDateTimePrinter_withOrgJodaTimeFormatDateTimeParser_(id<OrgJodaTimeFormatDateTimePrinter> printer, id<OrgJodaTimeFormatDateTimeParser> parser);

FOUNDATION_EXPORT void OrgJodaTimeFormatDateTimeFormatter_initWithOrgJodaTimeFormatInternalPrinter_withOrgJodaTimeFormatInternalParser_(OrgJodaTimeFormatDateTimeFormatter *self, id<OrgJodaTimeFormatInternalPrinter> printer, id<OrgJodaTimeFormatInternalParser> parser);

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *new_OrgJodaTimeFormatDateTimeFormatter_initWithOrgJodaTimeFormatInternalPrinter_withOrgJodaTimeFormatInternalParser_(id<OrgJodaTimeFormatInternalPrinter> printer, id<OrgJodaTimeFormatInternalParser> parser) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *create_OrgJodaTimeFormatDateTimeFormatter_initWithOrgJodaTimeFormatInternalPrinter_withOrgJodaTimeFormatInternalParser_(id<OrgJodaTimeFormatInternalPrinter> printer, id<OrgJodaTimeFormatInternalParser> parser);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatDateTimeFormatter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFormatDateTimeFormatter")
