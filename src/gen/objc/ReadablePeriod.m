//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/ReadablePeriod.java
//

#include "DurationFieldType.h"
#include "MutablePeriod.h"
#include "Period.h"
#include "PeriodType.h"
#include "ReadablePeriod.h"

@interface OrgJodaTimeReadablePeriod : NSObject
@end

@implementation OrgJodaTimeReadablePeriod

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getPeriodType", NULL, "Lorg.joda.time.PeriodType;", 0x401, NULL },
    { "size", NULL, "I", 0x401, NULL },
    { "getFieldTypeWithInt:", "getFieldType", "Lorg.joda.time.DurationFieldType;", 0x401, NULL },
    { "getValueWithInt:", "getValue", "I", 0x401, NULL },
    { "getWithOrgJodaTimeDurationFieldType:", "get", "I", 0x401, NULL },
    { "isSupportedWithOrgJodaTimeDurationFieldType:", "isSupported", "Z", 0x401, NULL },
    { "toPeriod", NULL, "Lorg.joda.time.Period;", 0x401, NULL },
    { "toMutablePeriod", NULL, "Lorg.joda.time.MutablePeriod;", 0x401, NULL },
    { "isEqual:", "equals", "Z", 0x401, NULL },
    { "hash", "hashCode", "I", 0x401, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x401, NULL },
  };
  static J2ObjcClassInfo _OrgJodaTimeReadablePeriod = { "ReadablePeriod", "org.joda.time", NULL, 0x201, 11, methods, 0, NULL, 0, NULL};
  return &_OrgJodaTimeReadablePeriod;
}

@end
