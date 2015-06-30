//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/format/InternalPrinterDateTimePrinter.java
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

@interface OrgJodaTimeFormatInternalPrinterDateTimePrinter () {
 @public
  id<OrgJodaTimeFormatInternalPrinter> underlying_;
}

- (instancetype)initWithOrgJodaTimeFormatInternalPrinter:(id<OrgJodaTimeFormatInternalPrinter>)underlying;

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeFormatInternalPrinterDateTimePrinter, underlying_, id<OrgJodaTimeFormatInternalPrinter>)

__attribute__((unused)) static void OrgJodaTimeFormatInternalPrinterDateTimePrinter_initWithOrgJodaTimeFormatInternalPrinter_(OrgJodaTimeFormatInternalPrinterDateTimePrinter *self, id<OrgJodaTimeFormatInternalPrinter> underlying);

__attribute__((unused)) static OrgJodaTimeFormatInternalPrinterDateTimePrinter *new_OrgJodaTimeFormatInternalPrinterDateTimePrinter_initWithOrgJodaTimeFormatInternalPrinter_(id<OrgJodaTimeFormatInternalPrinter> underlying) NS_RETURNS_RETAINED;

@implementation OrgJodaTimeFormatInternalPrinterDateTimePrinter

+ (id<OrgJodaTimeFormatDateTimePrinter>)ofWithOrgJodaTimeFormatInternalPrinter:(id<OrgJodaTimeFormatInternalPrinter>)underlying {
  return OrgJodaTimeFormatInternalPrinterDateTimePrinter_ofWithOrgJodaTimeFormatInternalPrinter_(underlying);
}

- (instancetype)initWithOrgJodaTimeFormatInternalPrinter:(id<OrgJodaTimeFormatInternalPrinter>)underlying {
  OrgJodaTimeFormatInternalPrinterDateTimePrinter_initWithOrgJodaTimeFormatInternalPrinter_(self, underlying);
  return self;
}

- (jint)estimatePrintedLength {
  return [((id<OrgJodaTimeFormatInternalPrinter>) nil_chk(underlying_)) estimatePrintedLength];
}

- (void)printToWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf
                               withLong:(jlong)instant
              withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
                                withInt:(jint)displayOffset
            withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)displayZone
                     withJavaUtilLocale:(JavaUtilLocale *)locale {
  @try {
    [((id<OrgJodaTimeFormatInternalPrinter>) nil_chk(underlying_)) printToWithJavaLangAppendable:buf withLong:instant withOrgJodaTimeChronology:chrono withInt:displayOffset withOrgJodaTimeDateTimeZone:displayZone withJavaUtilLocale:locale];
  }
  @catch (JavaIoIOException *ex) {
  }
}

- (void)printToWithJavaIoWriter:(JavaIoWriter *)outArg
                       withLong:(jlong)instant
      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
                        withInt:(jint)displayOffset
    withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)displayZone
             withJavaUtilLocale:(JavaUtilLocale *)locale {
  [((id<OrgJodaTimeFormatInternalPrinter>) nil_chk(underlying_)) printToWithJavaLangAppendable:outArg withLong:instant withOrgJodaTimeChronology:chrono withInt:displayOffset withOrgJodaTimeDateTimeZone:displayZone withJavaUtilLocale:locale];
}

- (void)printToWithJavaLangAppendable:(id<JavaLangAppendable>)appendable
                             withLong:(jlong)instant
            withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
                              withInt:(jint)displayOffset
          withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)displayZone
                   withJavaUtilLocale:(JavaUtilLocale *)locale {
  [((id<OrgJodaTimeFormatInternalPrinter>) nil_chk(underlying_)) printToWithJavaLangAppendable:appendable withLong:instant withOrgJodaTimeChronology:chrono withInt:displayOffset withOrgJodaTimeDateTimeZone:displayZone withJavaUtilLocale:locale];
}

- (void)printToWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf
         withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                     withJavaUtilLocale:(JavaUtilLocale *)locale {
  @try {
    [((id<OrgJodaTimeFormatInternalPrinter>) nil_chk(underlying_)) printToWithJavaLangAppendable:buf withOrgJodaTimeReadablePartial:partial withJavaUtilLocale:locale];
  }
  @catch (JavaIoIOException *ex) {
  }
}

- (void)printToWithJavaIoWriter:(JavaIoWriter *)outArg
 withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
             withJavaUtilLocale:(JavaUtilLocale *)locale {
  [((id<OrgJodaTimeFormatInternalPrinter>) nil_chk(underlying_)) printToWithJavaLangAppendable:outArg withOrgJodaTimeReadablePartial:partial withJavaUtilLocale:locale];
}

- (void)printToWithJavaLangAppendable:(id<JavaLangAppendable>)appendable
       withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                   withJavaUtilLocale:(JavaUtilLocale *)locale {
  [((id<OrgJodaTimeFormatInternalPrinter>) nil_chk(underlying_)) printToWithJavaLangAppendable:appendable withOrgJodaTimeReadablePartial:partial withJavaUtilLocale:locale];
}

- (jboolean)isEqual:(id)obj {
  if (obj == self) {
    return YES;
  }
  if ([obj isKindOfClass:[OrgJodaTimeFormatInternalPrinterDateTimePrinter class]]) {
    OrgJodaTimeFormatInternalPrinterDateTimePrinter *other = (OrgJodaTimeFormatInternalPrinterDateTimePrinter *) check_class_cast(obj, [OrgJodaTimeFormatInternalPrinterDateTimePrinter class]);
    return [((id<OrgJodaTimeFormatInternalPrinter>) nil_chk(underlying_)) isEqual:((OrgJodaTimeFormatInternalPrinterDateTimePrinter *) nil_chk(other))->underlying_];
  }
  return NO;
}

- (void)dealloc {
  if (underlying_ != self) RELEASE_(underlying_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "ofWithOrgJodaTimeFormatInternalPrinter:", "of", "Lorg.joda.time.format.DateTimePrinter;", 0x8, NULL, NULL },
    { "initWithOrgJodaTimeFormatInternalPrinter:", "InternalPrinterDateTimePrinter", NULL, 0x2, NULL, NULL },
    { "estimatePrintedLength", NULL, "I", 0x1, NULL, NULL },
    { "printToWithJavaLangStringBuffer:withLong:withOrgJodaTimeChronology:withInt:withOrgJodaTimeDateTimeZone:withJavaUtilLocale:", "printTo", "V", 0x1, NULL, NULL },
    { "printToWithJavaIoWriter:withLong:withOrgJodaTimeChronology:withInt:withOrgJodaTimeDateTimeZone:withJavaUtilLocale:", "printTo", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "printToWithJavaLangAppendable:withLong:withOrgJodaTimeChronology:withInt:withOrgJodaTimeDateTimeZone:withJavaUtilLocale:", "printTo", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "printToWithJavaLangStringBuffer:withOrgJodaTimeReadablePartial:withJavaUtilLocale:", "printTo", "V", 0x1, NULL, NULL },
    { "printToWithJavaIoWriter:withOrgJodaTimeReadablePartial:withJavaUtilLocale:", "printTo", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "printToWithJavaLangAppendable:withOrgJodaTimeReadablePartial:withJavaUtilLocale:", "printTo", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "underlying_", NULL, 0x12, "Lorg.joda.time.format.InternalPrinter;", NULL, NULL,  },
  };
  static const J2ObjcClassInfo _OrgJodaTimeFormatInternalPrinterDateTimePrinter = { 2, "InternalPrinterDateTimePrinter", "org.joda.time.format", NULL, 0x0, 10, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeFormatInternalPrinterDateTimePrinter;
}

@end

id<OrgJodaTimeFormatDateTimePrinter> OrgJodaTimeFormatInternalPrinterDateTimePrinter_ofWithOrgJodaTimeFormatInternalPrinter_(id<OrgJodaTimeFormatInternalPrinter> underlying) {
  OrgJodaTimeFormatInternalPrinterDateTimePrinter_initialize();
  if ([underlying isKindOfClass:[OrgJodaTimeFormatDateTimePrinterInternalPrinter class]]) {
    return [((OrgJodaTimeFormatDateTimePrinterInternalPrinter *) nil_chk(((OrgJodaTimeFormatDateTimePrinterInternalPrinter *) check_class_cast(underlying, [OrgJodaTimeFormatDateTimePrinterInternalPrinter class])))) getUnderlying];
  }
  if ([OrgJodaTimeFormatDateTimePrinter_class_() isInstance:underlying]) {
    return (id<OrgJodaTimeFormatDateTimePrinter>) check_protocol_cast(underlying, @protocol(OrgJodaTimeFormatDateTimePrinter));
  }
  if (underlying == nil) {
    return nil;
  }
  return [new_OrgJodaTimeFormatInternalPrinterDateTimePrinter_initWithOrgJodaTimeFormatInternalPrinter_(underlying) autorelease];
}

void OrgJodaTimeFormatInternalPrinterDateTimePrinter_initWithOrgJodaTimeFormatInternalPrinter_(OrgJodaTimeFormatInternalPrinterDateTimePrinter *self, id<OrgJodaTimeFormatInternalPrinter> underlying) {
  NSObject_init(self);
  OrgJodaTimeFormatInternalPrinterDateTimePrinter_set_underlying_(self, underlying);
}

OrgJodaTimeFormatInternalPrinterDateTimePrinter *new_OrgJodaTimeFormatInternalPrinterDateTimePrinter_initWithOrgJodaTimeFormatInternalPrinter_(id<OrgJodaTimeFormatInternalPrinter> underlying) {
  OrgJodaTimeFormatInternalPrinterDateTimePrinter *self = [OrgJodaTimeFormatInternalPrinterDateTimePrinter alloc];
  OrgJodaTimeFormatInternalPrinterDateTimePrinter_initWithOrgJodaTimeFormatInternalPrinter_(self, underlying);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFormatInternalPrinterDateTimePrinter)
