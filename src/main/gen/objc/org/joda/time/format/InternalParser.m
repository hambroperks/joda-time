//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/format/InternalParser.java
//

#include "J2ObjC_source.h"
#include "org/joda/time/format/InternalParser.h"

@interface OrgJodaTimeFormatInternalParser : NSObject

@end

@implementation OrgJodaTimeFormatInternalParser

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(estimateParsedLength);
  methods[1].selector = @selector(parseIntoWithOrgJodaTimeFormatDateTimeParserBucket:withJavaLangCharSequence:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "parseInto", "LOrgJodaTimeFormatDateTimeParserBucket;LJavaLangCharSequence;I" };
  static const J2ObjcClassInfo _OrgJodaTimeFormatInternalParser = { "InternalParser", "org.joda.time.format", ptrTable, methods, NULL, 7, 0x608, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeFormatInternalParser;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgJodaTimeFormatInternalParser)
