//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/ReadWritableInterval.java
//

#include "Chronology.h"
#include "ReadWritableInterval.h"
#include "ReadableDuration.h"
#include "ReadableInstant.h"
#include "ReadableInterval.h"
#include "ReadablePeriod.h"

@interface OrgJodaTimeReadWritableInterval : NSObject
@end

@implementation OrgJodaTimeReadWritableInterval

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "setIntervalWithLong:withLong:", "setInterval", "V", 0x401, NULL },
    { "setIntervalWithOrgJodaTimeReadableInterval:", "setInterval", "V", 0x401, NULL },
    { "setIntervalWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableInstant:", "setInterval", "V", 0x401, NULL },
    { "setChronologyWithOrgJodaTimeChronology:", "setChronology", "V", 0x401, NULL },
    { "setStartMillisWithLong:", "setStartMillis", "V", 0x401, NULL },
    { "setStartWithOrgJodaTimeReadableInstant:", "setStart", "V", 0x401, NULL },
    { "setEndMillisWithLong:", "setEndMillis", "V", 0x401, NULL },
    { "setEndWithOrgJodaTimeReadableInstant:", "setEnd", "V", 0x401, NULL },
    { "setDurationAfterStartWithOrgJodaTimeReadableDuration:", "setDurationAfterStart", "V", 0x401, NULL },
    { "setDurationBeforeEndWithOrgJodaTimeReadableDuration:", "setDurationBeforeEnd", "V", 0x401, NULL },
    { "setPeriodAfterStartWithOrgJodaTimeReadablePeriod:", "setPeriodAfterStart", "V", 0x401, NULL },
    { "setPeriodBeforeEndWithOrgJodaTimeReadablePeriod:", "setPeriodBeforeEnd", "V", 0x401, NULL },
  };
  static J2ObjcClassInfo _OrgJodaTimeReadWritableInterval = { "ReadWritableInterval", "org.joda.time", NULL, 0x201, 12, methods, 0, NULL, 0, NULL};
  return &_OrgJodaTimeReadWritableInterval;
}

@end
