//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/format/PeriodFormatter.java
//

#ifndef _OrgJodaTimeFormatPeriodFormatter_H_
#define _OrgJodaTimeFormatPeriodFormatter_H_

@class JavaIoWriter;
@class JavaLangStringBuffer;
@class JavaUtilLocale;
@class OrgJodaTimeMutablePeriod;
@class OrgJodaTimePeriod;
@class OrgJodaTimePeriodType;
@protocol OrgJodaTimeFormatPeriodParser;
@protocol OrgJodaTimeFormatPeriodPrinter;
@protocol OrgJodaTimeReadWritablePeriod;
@protocol OrgJodaTimeReadablePeriod;

#import "JreEmulation.h"

/**
 @brief Controls the printing and parsing of a time period to and from a string.
 <p> This class is the main API for printing and parsing used by most applications. Instances of this class are created via one of three factory classes: <ul> <li> PeriodFormat - formats by pattern and style</li> <li> ISOPeriodFormat - ISO8601 formats</li> <li> PeriodFormatterBuilder - complex formats created via method calls</li> </ul> <p> An instance of this class holds a reference internally to one printer and one parser. It is possible that one of these may be null, in which case the formatter cannot print/parse. This can be checked via the #isPrinter() and #isParser() methods. <p> The underlying printer/parser can be altered to behave exactly as required by using a decorator modifier: <ul> <li> #withLocale(Locale) - returns a new formatter that uses the specified locale</li> </ul> This returns a new formatter (instances of this class are immutable). <p> The main methods of the class are the <code>printXxx</code> and <code>parseXxx</code> methods. These are used as follows: <pre> // print using the default locale String periodStr = formatter.print(period); // print using the French locale String periodStr = formatter.withLocale(Locale.FRENCH).print(period); // parse using the French locale Period date = formatter.withLocale(Locale.FRENCH).parsePeriod(str); </pre>
 @author Brian S O'Neill
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeFormatPeriodFormatter : NSObject {
 @public
  /**
   @brief The internal printer used to output the datetime.
   */
  id<OrgJodaTimeFormatPeriodPrinter> iPrinter_;
  /**
   @brief The internal parser used to output the datetime.
   */
  id<OrgJodaTimeFormatPeriodParser> iParser_;
  /**
   @brief The locale to use for printing and parsing.
   */
  JavaUtilLocale *iLocale_;
  /**
   @brief The period type used in parsing.
   */
  OrgJodaTimePeriodType *iParseType_;
}

/**
 @brief Creates a new formatter, however you will normally use the factory or the builder.
 @param printer the internal printer, null if cannot print
 @param parser the internal parser, null if cannot parse
 */
- (instancetype)initWithOrgJodaTimeFormatPeriodPrinter:(id<OrgJodaTimeFormatPeriodPrinter>)printer
                     withOrgJodaTimeFormatPeriodParser:(id<OrgJodaTimeFormatPeriodParser>)parser;

/**
 @brief Constructor.
 @param printer the internal printer, null if cannot print
 @param parser the internal parser, null if cannot parse
 @param locale the locale to use
 @param type the parse period type
 */
- (instancetype)initWithOrgJodaTimeFormatPeriodPrinter:(id<OrgJodaTimeFormatPeriodPrinter>)printer
                     withOrgJodaTimeFormatPeriodParser:(id<OrgJodaTimeFormatPeriodParser>)parser
                                    withJavaUtilLocale:(JavaUtilLocale *)locale
                             withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type;

/**
 @brief Is this formatter capable of printing.
 @return true if this is a printer
 */
- (BOOL)isPrinter;

/**
 @brief Gets the internal printer object that performs the real printing work.
 @return the internal printer
 */
- (id<OrgJodaTimeFormatPeriodPrinter>)getPrinter;

/**
 @brief Is this formatter capable of parsing.
 @return true if this is a parser
 */
- (BOOL)isParser;

/**
 @brief Gets the internal parser object that performs the real parsing work.
 @return the internal parser
 */
- (id<OrgJodaTimeFormatPeriodParser>)getParser;

/**
 @brief Returns a new formatter with a different locale that will be used for printing and parsing.
 <p> A PeriodFormatter is immutable, so a new instance is returned, and the original is unaltered and still usable.
 @param locale the locale to use
 @return the new formatter
 */
- (OrgJodaTimeFormatPeriodFormatter *)withLocaleWithJavaUtilLocale:(JavaUtilLocale *)locale;

/**
 @brief Gets the locale that will be used for printing and parsing.
 @return the locale to use
 */
- (JavaUtilLocale *)getLocale;

/**
 @brief Returns a new formatter with a different PeriodType for parsing.
 <p> A PeriodFormatter is immutable, so a new instance is returned, and the original is unaltered and still usable.
 @param type the type to use in parsing
 @return the new formatter
 */
- (OrgJodaTimeFormatPeriodFormatter *)withParseTypeWithOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type;

/**
 @brief Gets the PeriodType that will be used for parsing.
 @return the parse type to use
 */
- (OrgJodaTimePeriodType *)getParseType;

/**
 @brief Prints a ReadablePeriod to a StringBuffer.
 @param buf the formatted period is appended to this buffer
 @param period the period to format, not null
 */
- (void)printToWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf
          withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/**
 @brief Prints a ReadablePeriod to a Writer.
 @param out the formatted period is written out
 @param period the period to format, not null
 */
- (void)printToWithJavaIoWriter:(JavaIoWriter *)outArg
  withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/**
 @brief Prints a ReadablePeriod to a new String.
 @param period the period to format, not null
 @return the printed result
 */
- (NSString *)printWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/**
 @brief Checks whether printing is supported.
 @throws UnsupportedOperationException if printing is not supported
 */
- (void)checkPrinter;

/**
 @brief Checks whether the period is non-null.
 @throws IllegalArgumentException if the period is null
 */
- (void)checkPeriodWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/**
 @brief Parses a period from the given text, at the given position, saving the result into the fields of the given ReadWritablePeriod.
 If the parse succeeds, the return value is the new text position. Note that the parse may succeed without fully reading the text. <p> The parse type of the formatter is not used by this method. <p> If it fails, the return value is negative, but the period may still be modified. To determine the position where the parse failed, apply the one's complement operator (~) on the return value.
 @param period a period that will be modified
 @param text text to parse
 @param position position to start parsing from
 @return new position, if negative, parse failed. Apply complement operator (~) to get position of failure
 @throws IllegalArgumentException if any field is out of range
 */
- (int)parseIntoWithOrgJodaTimeReadWritablePeriod:(id<OrgJodaTimeReadWritablePeriod>)period
                                     withNSString:(NSString *)text
                                          withInt:(int)position;

/**
 @brief Parses a period from the given text, returning a new Period.
 @param text text to parse
 @return parsed value in a Period object
 @throws IllegalArgumentException if any field is out of range
 */
- (OrgJodaTimePeriod *)parsePeriodWithNSString:(NSString *)text;

/**
 @brief Parses a period from the given text, returning a new MutablePeriod.
 @param text text to parse
 @return parsed value in a MutablePeriod object
 @throws IllegalArgumentException if any field is out of range
 */
- (OrgJodaTimeMutablePeriod *)parseMutablePeriodWithNSString:(NSString *)text;

/**
 @brief Checks whether parsing is supported.
 @throws UnsupportedOperationException if parsing is not supported
 */
- (void)checkParser;

- (void)copyAllFieldsTo:(OrgJodaTimeFormatPeriodFormatter *)other;

@end

__attribute__((always_inline)) inline void OrgJodaTimeFormatPeriodFormatter_init() {}

J2OBJC_FIELD_SETTER(OrgJodaTimeFormatPeriodFormatter, iPrinter_, id<OrgJodaTimeFormatPeriodPrinter>)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatPeriodFormatter, iParser_, id<OrgJodaTimeFormatPeriodParser>)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatPeriodFormatter, iLocale_, JavaUtilLocale *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFormatPeriodFormatter, iParseType_, OrgJodaTimePeriodType *)

#endif // _OrgJodaTimeFormatPeriodFormatter_H_
