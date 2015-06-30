//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/format/DateTimePrinterInternalPrinter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Writer.h"
#include "java/lang/Appendable.h"
#include "java/lang/StringBuffer.h"
#include "java/util/Locale.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeZone.h"
#include "org/joda/time/ReadablePartial.h"
#include "org/joda/time/format/DateTimePrinter.h"
#include "org/joda/time/format/DateTimePrinterInternalPrinter.h"
#include "org/joda/time/format/InternalPrinter.h"
#include "org/joda/time/format/InternalPrinterDateTimePrinter.h"

@interface OrgJodaTimeFormatDateTimePrinterInternalPrinter () {
 @public
  id<OrgJodaTimeFormatDateTimePrinter> underlying_;
}

- (instancetype)initWithOrgJodaTimeFormatDateTimePrinter:(id<OrgJodaTimeFormatDateTimePrinter>)underlying;

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeFormatDateTimePrinterInternalPrinter, underlying_, id<OrgJodaTimeFormatDateTimePrinter>)

__attribute__((unused)) static void OrgJodaTimeFormatDateTimePrinterInternalPrinter_initWithOrgJodaTimeFormatDateTimePrinter_(OrgJodaTimeFormatDateTimePrinterInternalPrinter *self, id<OrgJodaTimeFormatDateTimePrinter> underlying);

__attribute__((unused)) static OrgJodaTimeFormatDateTimePrinterInternalPrinter *new_OrgJodaTimeFormatDateTimePrinterInternalPrinter_initWithOrgJodaTimeFormatDateTimePrinter_(id<OrgJodaTimeFormatDateTimePrinter> underlying) NS_RETURNS_RETAINED;

@implementation OrgJodaTimeFormatDateTimePrinterInternalPrinter

+ (id<OrgJodaTimeFormatInternalPrinter>)ofWithOrgJodaTimeFormatDateTimePrinter:(id<OrgJodaTimeFormatDateTimePrinter>)underlying {
  return OrgJodaTimeFormatDateTimePrinterInternalPrinter_ofWithOrgJodaTimeFormatDateTimePrinter_(underlying);
}

- (instancetype)initWithOrgJodaTimeFormatDateTimePrinter:(id<OrgJodaTimeFormatDateTimePrinter>)underlying {
  OrgJodaTimeFormatDateTimePrinterInternalPrinter_initWithOrgJodaTimeFormatDateTimePrinter_(self, underlying);
  return self;
}

- (id<OrgJodaTimeFormatDateTimePrinter>)getUnderlying {
  return underlying_;
}

- (jint)estimatePrintedLength {
  return [((id<OrgJodaTimeFormatDateTimePrinter>) nil_chk(underlying_)) estimatePrintedLength];
}

- (void)printToWithJavaLangAppendable:(id<JavaLangAppendable>)appendable
                             withLong:(jlong)instant
            withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
                              withInt:(jint)displayOffset
          withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)displayZone
                   withJavaUtilLocale:(JavaUtilLocale *)locale {
  if ([appendable isKindOfClass:[JavaLangStringBuffer class]]) {
    JavaLangStringBuffer *buf = (JavaLangStringBuffer *) check_class_cast(appendable, [JavaLangStringBuffer class]);
    [((id<OrgJodaTimeFormatDateTimePrinter>) nil_chk(underlying_)) printToWithJavaLangStringBuffer:buf withLong:instant withOrgJodaTimeChronology:chrono withInt:displayOffset withOrgJodaTimeDateTimeZone:displayZone withJavaUtilLocale:locale];
  }
  if ([appendable isKindOfClass:[JavaIoWriter class]]) {
    JavaIoWriter *out = (JavaIoWriter *) check_class_cast(appendable, [JavaIoWriter class]);
    [((id<OrgJodaTimeFormatDateTimePrinter>) nil_chk(underlying_)) printToWithJavaIoWriter:out withLong:instant withOrgJodaTimeChronology:chrono withInt:displayOffset withOrgJodaTimeDateTimeZone:displayZone withJavaUtilLocale:locale];
  }
  JavaLangStringBuffer *buf = [new_JavaLangStringBuffer_initWithInt_([self estimatePrintedLength]) autorelease];
  [((id<OrgJodaTimeFormatDateTimePrinter>) nil_chk(underlying_)) printToWithJavaLangStringBuffer:buf withLong:instant withOrgJodaTimeChronology:chrono withInt:displayOffset withOrgJodaTimeDateTimeZone:displayZone withJavaUtilLocale:locale];
  [((id<JavaLangAppendable>) nil_chk(appendable)) appendWithJavaLangCharSequence:buf];
}

- (void)printToWithJavaLangAppendable:(id<JavaLangAppendable>)appendable
       withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                   withJavaUtilLocale:(JavaUtilLocale *)locale {
  if ([appendable isKindOfClass:[JavaLangStringBuffer class]]) {
    JavaLangStringBuffer *buf = (JavaLangStringBuffer *) check_class_cast(appendable, [JavaLangStringBuffer class]);
    [((id<OrgJodaTimeFormatDateTimePrinter>) nil_chk(underlying_)) printToWithJavaLangStringBuffer:buf withOrgJodaTimeReadablePartial:partial withJavaUtilLocale:locale];
  }
  if ([appendable isKindOfClass:[JavaIoWriter class]]) {
    JavaIoWriter *out = (JavaIoWriter *) check_class_cast(appendable, [JavaIoWriter class]);
    [((id<OrgJodaTimeFormatDateTimePrinter>) nil_chk(underlying_)) printToWithJavaIoWriter:out withOrgJodaTimeReadablePartial:partial withJavaUtilLocale:locale];
  }
  JavaLangStringBuffer *buf = [new_JavaLangStringBuffer_initWithInt_([self estimatePrintedLength]) autorelease];
  [((id<OrgJodaTimeFormatDateTimePrinter>) nil_chk(underlying_)) printToWithJavaLangStringBuffer:buf withOrgJodaTimeReadablePartial:partial withJavaUtilLocale:locale];
  [((id<JavaLangAppendable>) nil_chk(appendable)) appendWithJavaLangCharSequence:buf];
}

- (void)dealloc {
  RELEASE_(underlying_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "ofWithOrgJodaTimeFormatDateTimePrinter:", "of", "Lorg.joda.time.format.InternalPrinter;", 0x8, NULL, NULL },
    { "initWithOrgJodaTimeFormatDateTimePrinter:", "DateTimePrinterInternalPrinter", NULL, 0x2, NULL, NULL },
    { "getUnderlying", NULL, "Lorg.joda.time.format.DateTimePrinter;", 0x0, NULL, NULL },
    { "estimatePrintedLength", NULL, "I", 0x1, NULL, NULL },
    { "printToWithJavaLangAppendable:withLong:withOrgJodaTimeChronology:withInt:withOrgJodaTimeDateTimeZone:withJavaUtilLocale:", "printTo", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "printToWithJavaLangAppendable:withOrgJodaTimeReadablePartial:withJavaUtilLocale:", "printTo", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "underlying_", NULL, 0x12, "Lorg.joda.time.format.DateTimePrinter;", NULL, NULL,  },
  };
  static const J2ObjcClassInfo _OrgJodaTimeFormatDateTimePrinterInternalPrinter = { 2, "DateTimePrinterInternalPrinter", "org.joda.time.format", NULL, 0x0, 6, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeFormatDateTimePrinterInternalPrinter;
}

@end

id<OrgJodaTimeFormatInternalPrinter> OrgJodaTimeFormatDateTimePrinterInternalPrinter_ofWithOrgJodaTimeFormatDateTimePrinter_(id<OrgJodaTimeFormatDateTimePrinter> underlying) {
  OrgJodaTimeFormatDateTimePrinterInternalPrinter_initialize();
  if ([underlying isKindOfClass:[OrgJodaTimeFormatInternalPrinterDateTimePrinter class]]) {
    return (id<OrgJodaTimeFormatInternalPrinter>) check_protocol_cast(underlying, @protocol(OrgJodaTimeFormatInternalPrinter));
  }
  if (underlying == nil) {
    return nil;
  }
  return [new_OrgJodaTimeFormatDateTimePrinterInternalPrinter_initWithOrgJodaTimeFormatDateTimePrinter_(underlying) autorelease];
}

void OrgJodaTimeFormatDateTimePrinterInternalPrinter_initWithOrgJodaTimeFormatDateTimePrinter_(OrgJodaTimeFormatDateTimePrinterInternalPrinter *self, id<OrgJodaTimeFormatDateTimePrinter> underlying) {
  NSObject_init(self);
  OrgJodaTimeFormatDateTimePrinterInternalPrinter_set_underlying_(self, underlying);
}

OrgJodaTimeFormatDateTimePrinterInternalPrinter *new_OrgJodaTimeFormatDateTimePrinterInternalPrinter_initWithOrgJodaTimeFormatDateTimePrinter_(id<OrgJodaTimeFormatDateTimePrinter> underlying) {
  OrgJodaTimeFormatDateTimePrinterInternalPrinter *self = [OrgJodaTimeFormatDateTimePrinterInternalPrinter alloc];
  OrgJodaTimeFormatDateTimePrinterInternalPrinter_initWithOrgJodaTimeFormatDateTimePrinter_(self, underlying);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFormatDateTimePrinterInternalPrinter)
