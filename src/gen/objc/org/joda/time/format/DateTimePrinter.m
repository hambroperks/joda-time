//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/format/DateTimePrinter.java
//

#include "J2ObjC_source.h"
#include "org/joda/time/format/DateTimePrinter.h"

@interface OrgJodaTimeFormatDateTimePrinter : NSObject

@end

@implementation OrgJodaTimeFormatDateTimePrinter

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 5, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(estimatePrintedLength);
  methods[1].selector = @selector(printToWithJavaLangStringBuffer:withLong:withOrgJodaTimeChronology:withInt:withOrgJodaTimeDateTimeZone:withJavaUtilLocale:);
  methods[2].selector = @selector(printToWithJavaIoWriter:withLong:withOrgJodaTimeChronology:withInt:withOrgJodaTimeDateTimeZone:withJavaUtilLocale:);
  methods[3].selector = @selector(printToWithJavaLangStringBuffer:withOrgJodaTimeReadablePartial:withJavaUtilLocale:);
  methods[4].selector = @selector(printToWithJavaIoWriter:withOrgJodaTimeReadablePartial:withJavaUtilLocale:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "printTo", "LJavaLangStringBuffer;JLOrgJodaTimeChronology;ILOrgJodaTimeDateTimeZone;LJavaUtilLocale;", "LJavaIoWriter;JLOrgJodaTimeChronology;ILOrgJodaTimeDateTimeZone;LJavaUtilLocale;", "LJavaIoIOException;", "LJavaLangStringBuffer;LOrgJodaTimeReadablePartial;LJavaUtilLocale;", "LJavaIoWriter;LOrgJodaTimeReadablePartial;LJavaUtilLocale;" };
  static const J2ObjcClassInfo _OrgJodaTimeFormatDateTimePrinter = { "DateTimePrinter", "org.joda.time.format", ptrTable, methods, NULL, 7, 0x609, 5, 0, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeFormatDateTimePrinter;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgJodaTimeFormatDateTimePrinter)
