//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/format/InternalPrinter.java
//

#include "J2ObjC_source.h"
#include "org/joda/time/format/InternalPrinter.h"

@interface OrgJodaTimeFormatInternalPrinter : NSObject

@end

@implementation OrgJodaTimeFormatInternalPrinter

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 3, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(estimatePrintedLength);
  methods[1].selector = @selector(printToWithJavaLangAppendable:withLong:withOrgJodaTimeChronology:withInt:withOrgJodaTimeDateTimeZone:withJavaUtilLocale:);
  methods[2].selector = @selector(printToWithJavaLangAppendable:withOrgJodaTimeReadablePartial:withJavaUtilLocale:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "printTo", "LJavaLangAppendable;JLOrgJodaTimeChronology;ILOrgJodaTimeDateTimeZone;LJavaUtilLocale;", "LJavaIoIOException;", "LJavaLangAppendable;LOrgJodaTimeReadablePartial;LJavaUtilLocale;" };
  static const J2ObjcClassInfo _OrgJodaTimeFormatInternalPrinter = { "InternalPrinter", "org.joda.time.format", ptrTable, methods, NULL, 7, 0x608, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeFormatInternalPrinter;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgJodaTimeFormatInternalPrinter)
