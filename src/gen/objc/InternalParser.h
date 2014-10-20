//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/format/InternalParser.java
//

#ifndef _OrgJodaTimeFormatInternalParser_H_
#define _OrgJodaTimeFormatInternalParser_H_

@class OrgJodaTimeFormatDateTimeParserBucket;
@protocol JavaLangCharSequence;

#import "JreEmulation.h"

/**
 @brief Internal interface for parsing textual representations of datetimes.
 <p> This has been separated from DateTimeParser to change to using <code>CharSequence</code> .
 @author Stephen Colebourne
 @since 2.4
 */
@protocol OrgJodaTimeFormatInternalParser < NSObject, JavaObject >

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
                                 withJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                                  withInt:(int)position;

@end

__attribute__((always_inline)) inline void OrgJodaTimeFormatInternalParser_init() {}

#endif // _OrgJodaTimeFormatInternalParser_H_
