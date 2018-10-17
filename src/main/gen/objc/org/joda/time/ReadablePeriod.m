//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/ReadablePeriod.java
//

#include "J2ObjC_source.h"
#include "org/joda/time/ReadablePeriod.h"

@interface OrgJodaTimeReadablePeriod : NSObject

@end

@implementation OrgJodaTimeReadablePeriod

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgJodaTimePeriodType;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationFieldType;", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 2, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 5, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimePeriod;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMutablePeriod;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 8, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 9, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getPeriodType);
  methods[1].selector = @selector(size);
  methods[2].selector = @selector(getFieldTypeWithInt:);
  methods[3].selector = @selector(getValueWithInt:);
  methods[4].selector = @selector(getWithOrgJodaTimeDurationFieldType:);
  methods[5].selector = @selector(isSupportedWithOrgJodaTimeDurationFieldType:);
  methods[6].selector = @selector(toPeriod);
  methods[7].selector = @selector(toMutablePeriod);
  methods[8].selector = @selector(isEqual:);
  methods[9].selector = @selector(hash);
  methods[10].selector = @selector(description);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getFieldType", "I", "getValue", "get", "LOrgJodaTimeDurationFieldType;", "isSupported", "equals", "LNSObject;", "hashCode", "toString" };
  static const J2ObjcClassInfo _OrgJodaTimeReadablePeriod = { "ReadablePeriod", "org.joda.time", ptrTable, methods, NULL, 7, 0x609, 11, 0, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeReadablePeriod;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgJodaTimeReadablePeriod)
