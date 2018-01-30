//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/format/InternalParserDateTimeParser.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "org/joda/time/format/DateTimeParser.h"
#include "org/joda/time/format/DateTimeParserBucket.h"
#include "org/joda/time/format/DateTimeParserInternalParser.h"
#include "org/joda/time/format/InternalParser.h"
#include "org/joda/time/format/InternalParserDateTimeParser.h"

@interface OrgJodaTimeFormatInternalParserDateTimeParser () {
 @public
  id<OrgJodaTimeFormatInternalParser> underlying_;
}

- (instancetype)initWithOrgJodaTimeFormatInternalParser:(id<OrgJodaTimeFormatInternalParser>)underlying;

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeFormatInternalParserDateTimeParser, underlying_, id<OrgJodaTimeFormatInternalParser>)

__attribute__((unused)) static void OrgJodaTimeFormatInternalParserDateTimeParser_initWithOrgJodaTimeFormatInternalParser_(OrgJodaTimeFormatInternalParserDateTimeParser *self, id<OrgJodaTimeFormatInternalParser> underlying);

__attribute__((unused)) static OrgJodaTimeFormatInternalParserDateTimeParser *new_OrgJodaTimeFormatInternalParserDateTimeParser_initWithOrgJodaTimeFormatInternalParser_(id<OrgJodaTimeFormatInternalParser> underlying) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJodaTimeFormatInternalParserDateTimeParser *create_OrgJodaTimeFormatInternalParserDateTimeParser_initWithOrgJodaTimeFormatInternalParser_(id<OrgJodaTimeFormatInternalParser> underlying);

@implementation OrgJodaTimeFormatInternalParserDateTimeParser

+ (id<OrgJodaTimeFormatDateTimeParser>)ofWithOrgJodaTimeFormatInternalParser:(id<OrgJodaTimeFormatInternalParser>)underlying {
  return OrgJodaTimeFormatInternalParserDateTimeParser_ofWithOrgJodaTimeFormatInternalParser_(underlying);
}

- (instancetype)initWithOrgJodaTimeFormatInternalParser:(id<OrgJodaTimeFormatInternalParser>)underlying {
  OrgJodaTimeFormatInternalParserDateTimeParser_initWithOrgJodaTimeFormatInternalParser_(self, underlying);
  return self;
}

- (jint)estimateParsedLength {
  return [((id<OrgJodaTimeFormatInternalParser>) nil_chk(underlying_)) estimateParsedLength];
}

- (jint)parseIntoWithOrgJodaTimeFormatDateTimeParserBucket:(OrgJodaTimeFormatDateTimeParserBucket *)bucket
                                  withJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                                   withInt:(jint)position {
  return [((id<OrgJodaTimeFormatInternalParser>) nil_chk(underlying_)) parseIntoWithOrgJodaTimeFormatDateTimeParserBucket:bucket withJavaLangCharSequence:text withInt:position];
}

- (jint)parseIntoWithOrgJodaTimeFormatDateTimeParserBucket:(OrgJodaTimeFormatDateTimeParserBucket *)bucket
                                              withNSString:(NSString *)text
                                                   withInt:(jint)position {
  return [((id<OrgJodaTimeFormatInternalParser>) nil_chk(underlying_)) parseIntoWithOrgJodaTimeFormatDateTimeParserBucket:bucket withJavaLangCharSequence:text withInt:position];
}

- (jboolean)isEqual:(id)obj {
  if (obj == self) {
    return true;
  }
  if ([obj isKindOfClass:[OrgJodaTimeFormatInternalParserDateTimeParser class]]) {
    OrgJodaTimeFormatInternalParserDateTimeParser *other = (OrgJodaTimeFormatInternalParserDateTimeParser *) cast_chk(obj, [OrgJodaTimeFormatInternalParserDateTimeParser class]);
    return [((id<OrgJodaTimeFormatInternalParser>) nil_chk(underlying_)) isEqual:((OrgJodaTimeFormatInternalParserDateTimeParser *) nil_chk(other))->underlying_];
  }
  return false;
}

- (void)dealloc {
  RELEASE_(underlying_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgJodaTimeFormatDateTimeParser;", 0x8, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(ofWithOrgJodaTimeFormatInternalParser:);
  methods[1].selector = @selector(initWithOrgJodaTimeFormatInternalParser:);
  methods[2].selector = @selector(estimateParsedLength);
  methods[3].selector = @selector(parseIntoWithOrgJodaTimeFormatDateTimeParserBucket:withJavaLangCharSequence:withInt:);
  methods[4].selector = @selector(parseIntoWithOrgJodaTimeFormatDateTimeParserBucket:withNSString:withInt:);
  methods[5].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "underlying_", "LOrgJodaTimeFormatInternalParser;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "of", "LOrgJodaTimeFormatInternalParser;", "parseInto", "LOrgJodaTimeFormatDateTimeParserBucket;LJavaLangCharSequence;I", "LOrgJodaTimeFormatDateTimeParserBucket;LNSString;I", "equals", "LNSObject;" };
  static const J2ObjcClassInfo _OrgJodaTimeFormatInternalParserDateTimeParser = { "InternalParserDateTimeParser", "org.joda.time.format", ptrTable, methods, fields, 7, 0x0, 6, 1, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeFormatInternalParserDateTimeParser;
}

@end

id<OrgJodaTimeFormatDateTimeParser> OrgJodaTimeFormatInternalParserDateTimeParser_ofWithOrgJodaTimeFormatInternalParser_(id<OrgJodaTimeFormatInternalParser> underlying) {
  OrgJodaTimeFormatInternalParserDateTimeParser_initialize();
  if ([underlying isKindOfClass:[OrgJodaTimeFormatDateTimeParserInternalParser class]]) {
    return [((OrgJodaTimeFormatDateTimeParserInternalParser *) nil_chk(((OrgJodaTimeFormatDateTimeParserInternalParser *) cast_chk(underlying, [OrgJodaTimeFormatDateTimeParserInternalParser class])))) getUnderlying];
  }
  if ([OrgJodaTimeFormatDateTimeParser_class_() isInstance:underlying]) {
    return (id<OrgJodaTimeFormatDateTimeParser>) cast_check(underlying, OrgJodaTimeFormatDateTimeParser_class_());
  }
  if (underlying == nil) {
    return nil;
  }
  return create_OrgJodaTimeFormatInternalParserDateTimeParser_initWithOrgJodaTimeFormatInternalParser_(underlying);
}

void OrgJodaTimeFormatInternalParserDateTimeParser_initWithOrgJodaTimeFormatInternalParser_(OrgJodaTimeFormatInternalParserDateTimeParser *self, id<OrgJodaTimeFormatInternalParser> underlying) {
  NSObject_init(self);
  JreStrongAssign(&self->underlying_, underlying);
}

OrgJodaTimeFormatInternalParserDateTimeParser *new_OrgJodaTimeFormatInternalParserDateTimeParser_initWithOrgJodaTimeFormatInternalParser_(id<OrgJodaTimeFormatInternalParser> underlying) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFormatInternalParserDateTimeParser, initWithOrgJodaTimeFormatInternalParser_, underlying)
}

OrgJodaTimeFormatInternalParserDateTimeParser *create_OrgJodaTimeFormatInternalParserDateTimeParser_initWithOrgJodaTimeFormatInternalParser_(id<OrgJodaTimeFormatInternalParser> underlying) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFormatInternalParserDateTimeParser, initWithOrgJodaTimeFormatInternalParser_, underlying)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFormatInternalParserDateTimeParser)
