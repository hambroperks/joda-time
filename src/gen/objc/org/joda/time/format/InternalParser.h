//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/format/InternalParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFormatInternalParser")
#ifdef RESTRICT_OrgJodaTimeFormatInternalParser
#define INCLUDE_ALL_OrgJodaTimeFormatInternalParser 0
#else
#define INCLUDE_ALL_OrgJodaTimeFormatInternalParser 1
#endif
#undef RESTRICT_OrgJodaTimeFormatInternalParser

#if !defined (OrgJodaTimeFormatInternalParser_) && (INCLUDE_ALL_OrgJodaTimeFormatInternalParser || defined(INCLUDE_OrgJodaTimeFormatInternalParser))
#define OrgJodaTimeFormatInternalParser_

@class OrgJodaTimeFormatDateTimeParserBucket;
@protocol JavaLangCharSequence;

/*!
 @brief Internal interface for parsing textual representations of datetimes.
 <p>
  This has been separated from <code>DateTimeParser</code> to change to using 
 <code>CharSequence</code>.
 @author Stephen Colebourne
 @since 2.4
 */
@protocol OrgJodaTimeFormatInternalParser < JavaObject >

/*!
 @brief Returns the expected maximum number of characters consumed.
 The actual amount should rarely exceed this estimate.
 @return the estimated length
 */
- (jint)estimateParsedLength;

/*!
 @brief Parse an element from the given text, saving any fields into the given
  DateTimeParserBucket.If the parse succeeds, the return value is the new
  text position.
 Note that the parse may succeed without fully reading the
  text. 
 <p>
  If it fails, the return value is negative. To determine the position
  where the parse failed, apply the one's complement operator (~) on the
  return value.
 @param bucket field are saved into this, not null
 @param text the text to parse, not null
 @param position position to start parsing from
 @return new position, negative value means parse failed -
   apply complement operator (~) to get position of failure
 @throw IllegalArgumentExceptionif any field is out of range
 */
- (jint)parseIntoWithOrgJodaTimeFormatDateTimeParserBucket:(OrgJodaTimeFormatDateTimeParserBucket *)bucket
                                  withJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                                   withInt:(jint)position;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFormatInternalParser)

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatInternalParser)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFormatInternalParser")
