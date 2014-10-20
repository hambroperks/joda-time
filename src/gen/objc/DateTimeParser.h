//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/format/DateTimeParser.java
//

#ifndef _OrgJodaTimeFormatDateTimeParser_H_
#define _OrgJodaTimeFormatDateTimeParser_H_

@class OrgJodaTimeFormatDateTimeParserBucket;

#import "JreEmulation.h"

/**
 @brief Internal interface for parsing textual representations of datetimes.
 <p> Application users will rarely use this class directly. Instead, you will use one of the factory classes to create a DateTimeFormatter . <p> The factory classes are:<br /> - DateTimeFormatterBuilder <br /> - DateTimeFormat <br /> - ISODateTimeFormat <br />
 @author Brian S O'Neill
 @since 1.0
 */
@protocol OrgJodaTimeFormatDateTimeParser < NSObject, JavaObject >

/**
 @brief Returns the expected maximum number of characters consumed.
 The actual amount should rarely exceed this estimate.
 @return the estimated length
 */
- (int)estimateParsedLength;

/**
 @brief Parse an element from the given text, saving any fields into the given DateTimeParserBucket.
 If the parse succeeds, the return value is the new text position. Note that the parse may succeed without fully reading the text. <p> If it fails, the return value is negative. To determine the position where the parse failed, apply the one's complement operator (~) on the return value.
 @param bucket field are saved into this, not null
 @param text the text to parse, not null
 @param position position to start parsing from
 @return new position, negative value means parse failed - apply complement operator (~) to get position of failure
 @throws IllegalArgumentException if any field is out of range
 */
- (int)parseIntoWithOrgJodaTimeFormatDateTimeParserBucket:(OrgJodaTimeFormatDateTimeParserBucket *)bucket
                                             withNSString:(NSString *)text
                                                  withInt:(int)position;

@end

__attribute__((always_inline)) inline void OrgJodaTimeFormatDateTimeParser_init() {}

#endif // _OrgJodaTimeFormatDateTimeParser_H_
