//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/base/AbstractInterval.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuffer.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTime.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/Duration.h"
#include "org/joda/time/Interval.h"
#include "org/joda/time/MutableInterval.h"
#include "org/joda/time/Period.h"
#include "org/joda/time/PeriodType.h"
#include "org/joda/time/ReadableInstant.h"
#include "org/joda/time/ReadableInterval.h"
#include "org/joda/time/base/AbstractInterval.h"
#include "org/joda/time/field/FieldUtils.h"
#include "org/joda/time/format/DateTimeFormatter.h"
#include "org/joda/time/format/ISODateTimeFormat.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation OrgJodaTimeBaseAbstractInterval

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeBaseAbstractInterval_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)checkIntervalWithLong:(jlong)start
                     withLong:(jlong)end {
  if (end < start) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"The end instant must be greater than the start instant");
  }
}

- (OrgJodaTimeDateTime *)getStart {
  return create_OrgJodaTimeDateTime_initWithLong_withOrgJodaTimeChronology_([self getStartMillis], [self getChronology]);
}

- (OrgJodaTimeDateTime *)getEnd {
  return create_OrgJodaTimeDateTime_initWithLong_withOrgJodaTimeChronology_([self getEndMillis], [self getChronology]);
}

- (jboolean)containsWithLong:(jlong)millisInstant {
  jlong thisStart = [self getStartMillis];
  jlong thisEnd = [self getEndMillis];
  return (millisInstant >= thisStart && millisInstant < thisEnd);
}

- (jboolean)containsNow {
  return [self containsWithLong:OrgJodaTimeDateTimeUtils_currentTimeMillis()];
}

- (jboolean)containsWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant {
  if (instant == nil) {
    return [self containsNow];
  }
  return [self containsWithLong:[instant getMillis]];
}

- (jboolean)containsWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval {
  if (interval == nil) {
    return [self containsNow];
  }
  jlong otherStart = [interval getStartMillis];
  jlong otherEnd = [interval getEndMillis];
  jlong thisStart = [self getStartMillis];
  jlong thisEnd = [self getEndMillis];
  return (thisStart <= otherStart && otherStart < thisEnd && otherEnd <= thisEnd);
}

- (jboolean)overlapsWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval {
  jlong thisStart = [self getStartMillis];
  jlong thisEnd = [self getEndMillis];
  if (interval == nil) {
    jlong now = OrgJodaTimeDateTimeUtils_currentTimeMillis();
    return (thisStart < now && now < thisEnd);
  }
  else {
    jlong otherStart = [interval getStartMillis];
    jlong otherEnd = [interval getEndMillis];
    return (thisStart < otherEnd && otherStart < thisEnd);
  }
}

- (jboolean)isEqualWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)other {
  return [self getStartMillis] == [((id<OrgJodaTimeReadableInterval>) nil_chk(other)) getStartMillis] && [self getEndMillis] == [other getEndMillis];
}

- (jboolean)isBeforeWithLong:(jlong)millisInstant {
  return ([self getEndMillis] <= millisInstant);
}

- (jboolean)isBeforeNow {
  return [self isBeforeWithLong:OrgJodaTimeDateTimeUtils_currentTimeMillis()];
}

- (jboolean)isBeforeWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant {
  if (instant == nil) {
    return [self isBeforeNow];
  }
  return [self isBeforeWithLong:[instant getMillis]];
}

- (jboolean)isBeforeWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval {
  if (interval == nil) {
    return [self isBeforeNow];
  }
  return [self isBeforeWithLong:[interval getStartMillis]];
}

- (jboolean)isAfterWithLong:(jlong)millisInstant {
  return ([self getStartMillis] > millisInstant);
}

- (jboolean)isAfterNow {
  return [self isAfterWithLong:OrgJodaTimeDateTimeUtils_currentTimeMillis()];
}

- (jboolean)isAfterWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant {
  if (instant == nil) {
    return [self isAfterNow];
  }
  return [self isAfterWithLong:[instant getMillis]];
}

- (jboolean)isAfterWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval {
  jlong endMillis;
  if (interval == nil) {
    endMillis = OrgJodaTimeDateTimeUtils_currentTimeMillis();
  }
  else {
    endMillis = [interval getEndMillis];
  }
  return ([self getStartMillis] >= endMillis);
}

- (OrgJodaTimeInterval *)toInterval {
  return create_OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeChronology_([self getStartMillis], [self getEndMillis], [self getChronology]);
}

- (OrgJodaTimeMutableInterval *)toMutableInterval {
  return create_OrgJodaTimeMutableInterval_initWithLong_withLong_withOrgJodaTimeChronology_([self getStartMillis], [self getEndMillis], [self getChronology]);
}

- (jlong)toDurationMillis {
  return OrgJodaTimeFieldFieldUtils_safeSubtractWithLong_withLong_([self getEndMillis], [self getStartMillis]);
}

- (OrgJodaTimeDuration *)toDuration {
  jlong durMillis = [self toDurationMillis];
  if (durMillis == 0) {
    return JreLoadStatic(OrgJodaTimeDuration, ZERO);
  }
  else {
    return create_OrgJodaTimeDuration_initWithLong_(durMillis);
  }
}

- (OrgJodaTimePeriod *)toPeriod {
  return create_OrgJodaTimePeriod_initWithLong_withLong_withOrgJodaTimeChronology_([self getStartMillis], [self getEndMillis], [self getChronology]);
}

- (OrgJodaTimePeriod *)toPeriodWithOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type {
  return create_OrgJodaTimePeriod_initWithLong_withLong_withOrgJodaTimePeriodType_withOrgJodaTimeChronology_([self getStartMillis], [self getEndMillis], type, [self getChronology]);
}

- (jboolean)isEqual:(id)readableInterval {
  if (self == readableInterval) {
    return true;
  }
  if ([OrgJodaTimeReadableInterval_class_() isInstance:readableInterval] == false) {
    return false;
  }
  id<OrgJodaTimeReadableInterval> other = (id<OrgJodaTimeReadableInterval>) cast_check(readableInterval, OrgJodaTimeReadableInterval_class_());
  return [self getStartMillis] == [((id<OrgJodaTimeReadableInterval>) nil_chk(other)) getStartMillis] && [self getEndMillis] == [other getEndMillis] && OrgJodaTimeFieldFieldUtils_equalsWithId_withId_([self getChronology], [other getChronology]);
}

- (NSUInteger)hash {
  jlong start = [self getStartMillis];
  jlong end = [self getEndMillis];
  jint result = 97;
  result = 31 * result + ((jint) (start ^ (JreURShift64(start, 32))));
  result = 31 * result + ((jint) (end ^ (JreURShift64(end, 32))));
  result = 31 * result + ((jint) [((OrgJodaTimeChronology *) nil_chk([self getChronology])) hash]);
  return result;
}

- (NSString *)description {
  OrgJodaTimeFormatDateTimeFormatter *printer = OrgJodaTimeFormatISODateTimeFormat_dateTime();
  printer = [((OrgJodaTimeFormatDateTimeFormatter *) nil_chk(printer)) withChronologyWithOrgJodaTimeChronology:[self getChronology]];
  JavaLangStringBuffer *buf = create_JavaLangStringBuffer_initWithInt_(48);
  [((OrgJodaTimeFormatDateTimeFormatter *) nil_chk(printer)) printToWithJavaLangStringBuffer:buf withLong:[self getStartMillis]];
  [buf appendWithChar:'/'];
  [printer printToWithJavaLangStringBuffer:buf withLong:[self getEndMillis]];
  return [buf description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTime;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTime;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 9, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 9, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 9, 5, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeInterval;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMutableInterval;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimePeriod;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimePeriod;", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 14, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 15, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(checkIntervalWithLong:withLong:);
  methods[2].selector = @selector(getStart);
  methods[3].selector = @selector(getEnd);
  methods[4].selector = @selector(containsWithLong:);
  methods[5].selector = @selector(containsNow);
  methods[6].selector = @selector(containsWithOrgJodaTimeReadableInstant:);
  methods[7].selector = @selector(containsWithOrgJodaTimeReadableInterval:);
  methods[8].selector = @selector(overlapsWithOrgJodaTimeReadableInterval:);
  methods[9].selector = @selector(isEqualWithOrgJodaTimeReadableInterval:);
  methods[10].selector = @selector(isBeforeWithLong:);
  methods[11].selector = @selector(isBeforeNow);
  methods[12].selector = @selector(isBeforeWithOrgJodaTimeReadableInstant:);
  methods[13].selector = @selector(isBeforeWithOrgJodaTimeReadableInterval:);
  methods[14].selector = @selector(isAfterWithLong:);
  methods[15].selector = @selector(isAfterNow);
  methods[16].selector = @selector(isAfterWithOrgJodaTimeReadableInstant:);
  methods[17].selector = @selector(isAfterWithOrgJodaTimeReadableInterval:);
  methods[18].selector = @selector(toInterval);
  methods[19].selector = @selector(toMutableInterval);
  methods[20].selector = @selector(toDurationMillis);
  methods[21].selector = @selector(toDuration);
  methods[22].selector = @selector(toPeriod);
  methods[23].selector = @selector(toPeriodWithOrgJodaTimePeriodType:);
  methods[24].selector = @selector(isEqual:);
  methods[25].selector = @selector(hash);
  methods[26].selector = @selector(description);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "checkInterval", "JJ", "contains", "J", "LOrgJodaTimeReadableInstant;", "LOrgJodaTimeReadableInterval;", "overlaps", "isEqual", "isBefore", "isAfter", "toPeriod", "LOrgJodaTimePeriodType;", "equals", "LNSObject;", "hashCode", "toString" };
  static const J2ObjcClassInfo _OrgJodaTimeBaseAbstractInterval = { "AbstractInterval", "org.joda.time.base", ptrTable, methods, NULL, 7, 0x401, 27, 0, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeBaseAbstractInterval;
}

@end

void OrgJodaTimeBaseAbstractInterval_init(OrgJodaTimeBaseAbstractInterval *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeBaseAbstractInterval)
