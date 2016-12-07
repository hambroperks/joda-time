//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/Joda-Time/src/main/java/org/joda/time/format/InternalPrinterDateTimePrinter.java
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

__attribute__((unused)) static OrgJodaTimeFormatInternalPrinterDateTimePrinter *create_OrgJodaTimeFormatInternalPrinterDateTimePrinter_initWithOrgJodaTimeFormatInternalPrinter_(id<OrgJodaTimeFormatInternalPrinter> underlying);

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
    return true;
  }
  if ([obj isKindOfClass:[OrgJodaTimeFormatInternalPrinterDateTimePrinter class]]) {
    OrgJodaTimeFormatInternalPrinterDateTimePrinter *other = (OrgJodaTimeFormatInternalPrinterDateTimePrinter *) cast_chk(obj, [OrgJodaTimeFormatInternalPrinterDateTimePrinter class]);
    return [((id<OrgJodaTimeFormatInternalPrinter>) nil_chk(underlying_)) isEqual:((OrgJodaTimeFormatInternalPrinterDateTimePrinter *) nil_chk(other))->underlying_];
  }
  return false;
}

- (void)dealloc {
  RELEASE_(underlying_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgJodaTimeFormatDateTimePrinter;", 0x8, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 4, 5, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 6, 5, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 8, 5, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 9, 5, -1, -1, -1 },
    { NULL, "Z", 0x1, 10, 11, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(ofWithOrgJodaTimeFormatInternalPrinter:);
  methods[1].selector = @selector(initWithOrgJodaTimeFormatInternalPrinter:);
  methods[2].selector = @selector(estimatePrintedLength);
  methods[3].selector = @selector(printToWithJavaLangStringBuffer:withLong:withOrgJodaTimeChronology:withInt:withOrgJodaTimeDateTimeZone:withJavaUtilLocale:);
  methods[4].selector = @selector(printToWithJavaIoWriter:withLong:withOrgJodaTimeChronology:withInt:withOrgJodaTimeDateTimeZone:withJavaUtilLocale:);
  methods[5].selector = @selector(printToWithJavaLangAppendable:withLong:withOrgJodaTimeChronology:withInt:withOrgJodaTimeDateTimeZone:withJavaUtilLocale:);
  methods[6].selector = @selector(printToWithJavaLangStringBuffer:withOrgJodaTimeReadablePartial:withJavaUtilLocale:);
  methods[7].selector = @selector(printToWithJavaIoWriter:withOrgJodaTimeReadablePartial:withJavaUtilLocale:);
  methods[8].selector = @selector(printToWithJavaLangAppendable:withOrgJodaTimeReadablePartial:withJavaUtilLocale:);
  methods[9].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "underlying_", "LOrgJodaTimeFormatInternalPrinter;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "of", "LOrgJodaTimeFormatInternalPrinter;", "printTo", "LJavaLangStringBuffer;JLOrgJodaTimeChronology;ILOrgJodaTimeDateTimeZone;LJavaUtilLocale;", "LJavaIoWriter;JLOrgJodaTimeChronology;ILOrgJodaTimeDateTimeZone;LJavaUtilLocale;", "LJavaIoIOException;", "LJavaLangAppendable;JLOrgJodaTimeChronology;ILOrgJodaTimeDateTimeZone;LJavaUtilLocale;", "LJavaLangStringBuffer;LOrgJodaTimeReadablePartial;LJavaUtilLocale;", "LJavaIoWriter;LOrgJodaTimeReadablePartial;LJavaUtilLocale;", "LJavaLangAppendable;LOrgJodaTimeReadablePartial;LJavaUtilLocale;", "equals", "LNSObject;" };
  static const J2ObjcClassInfo _OrgJodaTimeFormatInternalPrinterDateTimePrinter = { "InternalPrinterDateTimePrinter", "org.joda.time.format", ptrTable, methods, fields, 7, 0x0, 10, 1, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeFormatInternalPrinterDateTimePrinter;
}

@end

id<OrgJodaTimeFormatDateTimePrinter> OrgJodaTimeFormatInternalPrinterDateTimePrinter_ofWithOrgJodaTimeFormatInternalPrinter_(id<OrgJodaTimeFormatInternalPrinter> underlying) {
  OrgJodaTimeFormatInternalPrinterDateTimePrinter_initialize();
  if ([underlying isKindOfClass:[OrgJodaTimeFormatDateTimePrinterInternalPrinter class]]) {
    return [((OrgJodaTimeFormatDateTimePrinterInternalPrinter *) nil_chk(((OrgJodaTimeFormatDateTimePrinterInternalPrinter *) cast_chk(underlying, [OrgJodaTimeFormatDateTimePrinterInternalPrinter class])))) getUnderlying];
  }
  if ([OrgJodaTimeFormatDateTimePrinter_class_() isInstance:underlying]) {
    return (id<OrgJodaTimeFormatDateTimePrinter>) cast_check(underlying, OrgJodaTimeFormatDateTimePrinter_class_());
  }
  if (underlying == nil) {
    return nil;
  }
  return create_OrgJodaTimeFormatInternalPrinterDateTimePrinter_initWithOrgJodaTimeFormatInternalPrinter_(underlying);
}

void OrgJodaTimeFormatInternalPrinterDateTimePrinter_initWithOrgJodaTimeFormatInternalPrinter_(OrgJodaTimeFormatInternalPrinterDateTimePrinter *self, id<OrgJodaTimeFormatInternalPrinter> underlying) {
  NSObject_init(self);
  JreStrongAssign(&self->underlying_, underlying);
}

OrgJodaTimeFormatInternalPrinterDateTimePrinter *new_OrgJodaTimeFormatInternalPrinterDateTimePrinter_initWithOrgJodaTimeFormatInternalPrinter_(id<OrgJodaTimeFormatInternalPrinter> underlying) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFormatInternalPrinterDateTimePrinter, initWithOrgJodaTimeFormatInternalPrinter_, underlying)
}

OrgJodaTimeFormatInternalPrinterDateTimePrinter *create_OrgJodaTimeFormatInternalPrinterDateTimePrinter_initWithOrgJodaTimeFormatInternalPrinter_(id<OrgJodaTimeFormatInternalPrinter> underlying) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFormatInternalPrinterDateTimePrinter, initWithOrgJodaTimeFormatInternalPrinter_, underlying)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFormatInternalPrinterDateTimePrinter)
