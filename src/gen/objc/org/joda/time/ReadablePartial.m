//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/ReadablePartial.java
//

#include "J2ObjC_source.h"
#include "org/joda/time/ReadablePartial.h"

@interface OrgJodaTimeReadablePartial : NSObject

@end

@implementation OrgJodaTimeReadablePartial

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTimeFieldType;", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTimeField;", 0x401, 2, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 3, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronology;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 4, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 6, 5, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTime;", 0x401, 7, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 11, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 12, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(size);
  methods[1].selector = @selector(getFieldTypeWithInt:);
  methods[2].selector = @selector(getFieldWithInt:);
  methods[3].selector = @selector(getValueWithInt:);
  methods[4].selector = @selector(getChronology);
  methods[5].selector = @selector(getWithOrgJodaTimeDateTimeFieldType:);
  methods[6].selector = @selector(isSupportedWithOrgJodaTimeDateTimeFieldType:);
  methods[7].selector = @selector(toDateTimeWithOrgJodaTimeReadableInstant:);
  methods[8].selector = @selector(isEqual:);
  methods[9].selector = @selector(hash);
  methods[10].selector = @selector(description);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getFieldType", "I", "getField", "getValue", "get", "LOrgJodaTimeDateTimeFieldType;", "isSupported", "toDateTime", "LOrgJodaTimeReadableInstant;", "equals", "LNSObject;", "hashCode", "toString", "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/joda/time/ReadablePartial;>;" };
  static const J2ObjcClassInfo _OrgJodaTimeReadablePartial = { "ReadablePartial", "org.joda.time", ptrTable, methods, NULL, 7, 0x609, 11, 0, -1, -1, -1, 13, -1 };
  return &_OrgJodaTimeReadablePartial;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgJodaTimeReadablePartial)
