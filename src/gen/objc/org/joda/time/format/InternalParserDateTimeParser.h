//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/format/InternalParserDateTimeParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFormatInternalParserDateTimeParser")
#ifdef RESTRICT_OrgJodaTimeFormatInternalParserDateTimeParser
#define INCLUDE_ALL_OrgJodaTimeFormatInternalParserDateTimeParser 0
#else
#define INCLUDE_ALL_OrgJodaTimeFormatInternalParserDateTimeParser 1
#endif
#undef RESTRICT_OrgJodaTimeFormatInternalParserDateTimeParser

#if !defined (OrgJodaTimeFormatInternalParserDateTimeParser_) && (INCLUDE_ALL_OrgJodaTimeFormatInternalParserDateTimeParser || defined(INCLUDE_OrgJodaTimeFormatInternalParserDateTimeParser))
#define OrgJodaTimeFormatInternalParserDateTimeParser_

#define RESTRICT_OrgJodaTimeFormatDateTimeParser 1
#define INCLUDE_OrgJodaTimeFormatDateTimeParser 1
#include "org/joda/time/format/DateTimeParser.h"

#define RESTRICT_OrgJodaTimeFormatInternalParser 1
#define INCLUDE_OrgJodaTimeFormatInternalParser 1
#include "org/joda/time/format/InternalParser.h"

@class OrgJodaTimeFormatDateTimeParserBucket;
@protocol JavaLangCharSequence;

@interface OrgJodaTimeFormatInternalParserDateTimeParser : NSObject < OrgJodaTimeFormatDateTimeParser, OrgJodaTimeFormatInternalParser >

#pragma mark Public

- (jboolean)isEqual:(id)obj;

- (jint)estimateParsedLength;

- (jint)parseIntoWithOrgJodaTimeFormatDateTimeParserBucket:(OrgJodaTimeFormatDateTimeParserBucket *)bucket
                                  withJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                                   withInt:(jint)position;

- (jint)parseIntoWithOrgJodaTimeFormatDateTimeParserBucket:(OrgJodaTimeFormatDateTimeParserBucket *)bucket
                                              withNSString:(NSString *)text
                                                   withInt:(jint)position;

#pragma mark Package-Private

+ (id<OrgJodaTimeFormatDateTimeParser>)ofWithOrgJodaTimeFormatInternalParser:(id<OrgJodaTimeFormatInternalParser>)underlying;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFormatInternalParserDateTimeParser)

FOUNDATION_EXPORT id<OrgJodaTimeFormatDateTimeParser> OrgJodaTimeFormatInternalParserDateTimeParser_ofWithOrgJodaTimeFormatInternalParser_(id<OrgJodaTimeFormatInternalParser> underlying);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatInternalParserDateTimeParser)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFormatInternalParserDateTimeParser")
