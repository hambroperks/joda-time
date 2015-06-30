//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/Interval.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/DateTimeZone.h"
#include "org/joda/time/Interval.h"
#include "org/joda/time/ReadableDuration.h"
#include "org/joda/time/ReadableInstant.h"
#include "org/joda/time/ReadableInterval.h"
#include "org/joda/time/ReadablePeriod.h"
#include "org/joda/time/base/AbstractInterval.h"
#include "org/joda/time/base/BaseInterval.h"
#include "org/joda/time/chrono/ISOChronology.h"

#define OrgJodaTimeInterval_serialVersionUID 4922451897541386752LL

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeInterval, serialVersionUID, jlong)

@implementation OrgJodaTimeInterval

+ (OrgJodaTimeInterval *)parseWithNSString:(NSString *)str {
  return OrgJodaTimeInterval_parseWithNSString_(str);
}

- (instancetype)initWithLong:(jlong)startInstant
                    withLong:(jlong)endInstant {
  OrgJodaTimeInterval_initWithLong_withLong_(self, startInstant, endInstant);
  return self;
}

- (instancetype)initWithLong:(jlong)startInstant
                    withLong:(jlong)endInstant
 withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeDateTimeZone_(self, startInstant, endInstant, zone);
  return self;
}

- (instancetype)initWithLong:(jlong)startInstant
                    withLong:(jlong)endInstant
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology {
  OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeChronology_(self, startInstant, endInstant, chronology);
  return self;
}

- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                    withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end {
  OrgJodaTimeInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(self, start, end);
  return self;
}

- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                   withOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration {
  OrgJodaTimeInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableDuration_(self, start, duration);
  return self;
}

- (instancetype)initWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration
                     withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end {
  OrgJodaTimeInterval_initWithOrgJodaTimeReadableDuration_withOrgJodaTimeReadableInstant_(self, duration, end);
  return self;
}

- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                     withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  OrgJodaTimeInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadablePeriod_(self, start, period);
  return self;
}

- (instancetype)initWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                   withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end {
  OrgJodaTimeInterval_initWithOrgJodaTimeReadablePeriod_withOrgJodaTimeReadableInstant_(self, period, end);
  return self;
}

- (instancetype)initWithId:(id)interval {
  OrgJodaTimeInterval_initWithId_(self, interval);
  return self;
}

- (instancetype)initWithId:(id)interval
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology {
  OrgJodaTimeInterval_initWithId_withOrgJodaTimeChronology_(self, interval, chronology);
  return self;
}

- (OrgJodaTimeInterval *)toInterval {
  return self;
}

- (OrgJodaTimeInterval *)overlapWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval {
  interval = OrgJodaTimeDateTimeUtils_getReadableIntervalWithOrgJodaTimeReadableInterval_(interval);
  if ([self overlapsWithOrgJodaTimeReadableInterval:interval] == NO) {
    return nil;
  }
  jlong start = JavaLangMath_maxWithLong_withLong_([self getStartMillis], [((id<OrgJodaTimeReadableInterval>) nil_chk(interval)) getStartMillis]);
  jlong end = JavaLangMath_minWithLong_withLong_([self getEndMillis], [interval getEndMillis]);
  return [new_OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeChronology_(start, end, [self getChronology]) autorelease];
}

- (OrgJodaTimeInterval *)gapWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval {
  interval = OrgJodaTimeDateTimeUtils_getReadableIntervalWithOrgJodaTimeReadableInterval_(interval);
  jlong otherStart = [((id<OrgJodaTimeReadableInterval>) nil_chk(interval)) getStartMillis];
  jlong otherEnd = [interval getEndMillis];
  jlong thisStart = [self getStartMillis];
  jlong thisEnd = [self getEndMillis];
  if (thisStart > otherEnd) {
    return [new_OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeChronology_(otherEnd, thisStart, [self getChronology]) autorelease];
  }
  else if (otherStart > thisEnd) {
    return [new_OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeChronology_(thisEnd, otherStart, [self getChronology]) autorelease];
  }
  else {
    return nil;
  }
}

- (jboolean)abutsWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval {
  if (interval == nil) {
    jlong now = OrgJodaTimeDateTimeUtils_currentTimeMillis();
    return ([self getStartMillis] == now || [self getEndMillis] == now);
  }
  else {
    return ([interval getEndMillis] == [self getStartMillis] || [self getEndMillis] == [interval getStartMillis]);
  }
}

- (OrgJodaTimeInterval *)withChronologyWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology {
  if ([self getChronology] == chronology) {
    return self;
  }
  return [new_OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeChronology_([self getStartMillis], [self getEndMillis], chronology) autorelease];
}

- (OrgJodaTimeInterval *)withStartMillisWithLong:(jlong)startInstant {
  if (startInstant == [self getStartMillis]) {
    return self;
  }
  return [new_OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeChronology_(startInstant, [self getEndMillis], [self getChronology]) autorelease];
}

- (OrgJodaTimeInterval *)withStartWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start {
  jlong startMillis = OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(start);
  return [self withStartMillisWithLong:startMillis];
}

- (OrgJodaTimeInterval *)withEndMillisWithLong:(jlong)endInstant {
  if (endInstant == [self getEndMillis]) {
    return self;
  }
  return [new_OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeChronology_([self getStartMillis], endInstant, [self getChronology]) autorelease];
}

- (OrgJodaTimeInterval *)withEndWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end {
  jlong endMillis = OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(end);
  return [self withEndMillisWithLong:endMillis];
}

- (OrgJodaTimeInterval *)withDurationAfterStartWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration {
  jlong durationMillis = OrgJodaTimeDateTimeUtils_getDurationMillisWithOrgJodaTimeReadableDuration_(duration);
  if (durationMillis == [self toDurationMillis]) {
    return self;
  }
  OrgJodaTimeChronology *chrono = [self getChronology];
  jlong startMillis = [self getStartMillis];
  jlong endMillis = [((OrgJodaTimeChronology *) nil_chk(chrono)) addWithLong:startMillis withLong:durationMillis withInt:1];
  return [new_OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeChronology_(startMillis, endMillis, chrono) autorelease];
}

- (OrgJodaTimeInterval *)withDurationBeforeEndWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration {
  jlong durationMillis = OrgJodaTimeDateTimeUtils_getDurationMillisWithOrgJodaTimeReadableDuration_(duration);
  if (durationMillis == [self toDurationMillis]) {
    return self;
  }
  OrgJodaTimeChronology *chrono = [self getChronology];
  jlong endMillis = [self getEndMillis];
  jlong startMillis = [((OrgJodaTimeChronology *) nil_chk(chrono)) addWithLong:endMillis withLong:durationMillis withInt:-1];
  return [new_OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeChronology_(startMillis, endMillis, chrono) autorelease];
}

- (OrgJodaTimeInterval *)withPeriodAfterStartWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  if (period == nil) {
    return [self withDurationAfterStartWithOrgJodaTimeReadableDuration:nil];
  }
  OrgJodaTimeChronology *chrono = [self getChronology];
  jlong startMillis = [self getStartMillis];
  jlong endMillis = [((OrgJodaTimeChronology *) nil_chk(chrono)) addWithOrgJodaTimeReadablePeriod:period withLong:startMillis withInt:1];
  return [new_OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeChronology_(startMillis, endMillis, chrono) autorelease];
}

- (OrgJodaTimeInterval *)withPeriodBeforeEndWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  if (period == nil) {
    return [self withDurationBeforeEndWithOrgJodaTimeReadableDuration:nil];
  }
  OrgJodaTimeChronology *chrono = [self getChronology];
  jlong endMillis = [self getEndMillis];
  jlong startMillis = [((OrgJodaTimeChronology *) nil_chk(chrono)) addWithOrgJodaTimeReadablePeriod:period withLong:endMillis withInt:-1];
  return [new_OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeChronology_(startMillis, endMillis, chrono) autorelease];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "parseWithNSString:", "parse", "Lorg.joda.time.Interval;", 0x9, NULL, NULL },
    { "initWithLong:withLong:", "Interval", NULL, 0x1, NULL, NULL },
    { "initWithLong:withLong:withOrgJodaTimeDateTimeZone:", "Interval", NULL, 0x1, NULL, NULL },
    { "initWithLong:withLong:withOrgJodaTimeChronology:", "Interval", NULL, 0x1, NULL, NULL },
    { "initWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableInstant:", "Interval", NULL, 0x1, NULL, NULL },
    { "initWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableDuration:", "Interval", NULL, 0x1, NULL, NULL },
    { "initWithOrgJodaTimeReadableDuration:withOrgJodaTimeReadableInstant:", "Interval", NULL, 0x1, NULL, NULL },
    { "initWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadablePeriod:", "Interval", NULL, 0x1, NULL, NULL },
    { "initWithOrgJodaTimeReadablePeriod:withOrgJodaTimeReadableInstant:", "Interval", NULL, 0x1, NULL, NULL },
    { "initWithId:", "Interval", NULL, 0x1, NULL, NULL },
    { "initWithId:withOrgJodaTimeChronology:", "Interval", NULL, 0x1, NULL, NULL },
    { "toInterval", NULL, "Lorg.joda.time.Interval;", 0x1, NULL, NULL },
    { "overlapWithOrgJodaTimeReadableInterval:", "overlap", "Lorg.joda.time.Interval;", 0x1, NULL, NULL },
    { "gapWithOrgJodaTimeReadableInterval:", "gap", "Lorg.joda.time.Interval;", 0x1, NULL, NULL },
    { "abutsWithOrgJodaTimeReadableInterval:", "abuts", "Z", 0x1, NULL, NULL },
    { "withChronologyWithOrgJodaTimeChronology:", "withChronology", "Lorg.joda.time.Interval;", 0x1, NULL, NULL },
    { "withStartMillisWithLong:", "withStartMillis", "Lorg.joda.time.Interval;", 0x1, NULL, NULL },
    { "withStartWithOrgJodaTimeReadableInstant:", "withStart", "Lorg.joda.time.Interval;", 0x1, NULL, NULL },
    { "withEndMillisWithLong:", "withEndMillis", "Lorg.joda.time.Interval;", 0x1, NULL, NULL },
    { "withEndWithOrgJodaTimeReadableInstant:", "withEnd", "Lorg.joda.time.Interval;", 0x1, NULL, NULL },
    { "withDurationAfterStartWithOrgJodaTimeReadableDuration:", "withDurationAfterStart", "Lorg.joda.time.Interval;", 0x1, NULL, NULL },
    { "withDurationBeforeEndWithOrgJodaTimeReadableDuration:", "withDurationBeforeEnd", "Lorg.joda.time.Interval;", 0x1, NULL, NULL },
    { "withPeriodAfterStartWithOrgJodaTimeReadablePeriod:", "withPeriodAfterStart", "Lorg.joda.time.Interval;", 0x1, NULL, NULL },
    { "withPeriodBeforeEndWithOrgJodaTimeReadablePeriod:", "withPeriodBeforeEnd", "Lorg.joda.time.Interval;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeInterval_serialVersionUID },
  };
  static const J2ObjcClassInfo _OrgJodaTimeInterval = { 2, "Interval", "org.joda.time", NULL, 0x11, 24, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeInterval;
}

@end

OrgJodaTimeInterval *OrgJodaTimeInterval_parseWithNSString_(NSString *str) {
  OrgJodaTimeInterval_initialize();
  return [new_OrgJodaTimeInterval_initWithId_(str) autorelease];
}

void OrgJodaTimeInterval_initWithLong_withLong_(OrgJodaTimeInterval *self, jlong startInstant, jlong endInstant) {
  OrgJodaTimeBaseBaseInterval_initWithLong_withLong_withOrgJodaTimeChronology_(self, startInstant, endInstant, nil);
}

OrgJodaTimeInterval *new_OrgJodaTimeInterval_initWithLong_withLong_(jlong startInstant, jlong endInstant) {
  OrgJodaTimeInterval *self = [OrgJodaTimeInterval alloc];
  OrgJodaTimeInterval_initWithLong_withLong_(self, startInstant, endInstant);
  return self;
}

void OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeDateTimeZone_(OrgJodaTimeInterval *self, jlong startInstant, jlong endInstant, OrgJodaTimeDateTimeZone *zone) {
  OrgJodaTimeBaseBaseInterval_initWithLong_withLong_withOrgJodaTimeChronology_(self, startInstant, endInstant, OrgJodaTimeChronoISOChronology_getInstanceWithOrgJodaTimeDateTimeZone_(zone));
}

OrgJodaTimeInterval *new_OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeDateTimeZone_(jlong startInstant, jlong endInstant, OrgJodaTimeDateTimeZone *zone) {
  OrgJodaTimeInterval *self = [OrgJodaTimeInterval alloc];
  OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeDateTimeZone_(self, startInstant, endInstant, zone);
  return self;
}

void OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeChronology_(OrgJodaTimeInterval *self, jlong startInstant, jlong endInstant, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeBaseBaseInterval_initWithLong_withLong_withOrgJodaTimeChronology_(self, startInstant, endInstant, chronology);
}

OrgJodaTimeInterval *new_OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeChronology_(jlong startInstant, jlong endInstant, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeInterval *self = [OrgJodaTimeInterval alloc];
  OrgJodaTimeInterval_initWithLong_withLong_withOrgJodaTimeChronology_(self, startInstant, endInstant, chronology);
  return self;
}

void OrgJodaTimeInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(OrgJodaTimeInterval *self, id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(self, start, end);
}

OrgJodaTimeInterval *new_OrgJodaTimeInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeInterval *self = [OrgJodaTimeInterval alloc];
  OrgJodaTimeInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(self, start, end);
  return self;
}

void OrgJodaTimeInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableDuration_(OrgJodaTimeInterval *self, id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableDuration> duration) {
  OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableDuration_(self, start, duration);
}

OrgJodaTimeInterval *new_OrgJodaTimeInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableDuration_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableDuration> duration) {
  OrgJodaTimeInterval *self = [OrgJodaTimeInterval alloc];
  OrgJodaTimeInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableDuration_(self, start, duration);
  return self;
}

void OrgJodaTimeInterval_initWithOrgJodaTimeReadableDuration_withOrgJodaTimeReadableInstant_(OrgJodaTimeInterval *self, id<OrgJodaTimeReadableDuration> duration, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadableDuration_withOrgJodaTimeReadableInstant_(self, duration, end);
}

OrgJodaTimeInterval *new_OrgJodaTimeInterval_initWithOrgJodaTimeReadableDuration_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableDuration> duration, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeInterval *self = [OrgJodaTimeInterval alloc];
  OrgJodaTimeInterval_initWithOrgJodaTimeReadableDuration_withOrgJodaTimeReadableInstant_(self, duration, end);
  return self;
}

void OrgJodaTimeInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadablePeriod_(OrgJodaTimeInterval *self, id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadablePeriod> period) {
  OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadablePeriod_(self, start, period);
}

OrgJodaTimeInterval *new_OrgJodaTimeInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadablePeriod_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadablePeriod> period) {
  OrgJodaTimeInterval *self = [OrgJodaTimeInterval alloc];
  OrgJodaTimeInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadablePeriod_(self, start, period);
  return self;
}

void OrgJodaTimeInterval_initWithOrgJodaTimeReadablePeriod_withOrgJodaTimeReadableInstant_(OrgJodaTimeInterval *self, id<OrgJodaTimeReadablePeriod> period, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadablePeriod_withOrgJodaTimeReadableInstant_(self, period, end);
}

OrgJodaTimeInterval *new_OrgJodaTimeInterval_initWithOrgJodaTimeReadablePeriod_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadablePeriod> period, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeInterval *self = [OrgJodaTimeInterval alloc];
  OrgJodaTimeInterval_initWithOrgJodaTimeReadablePeriod_withOrgJodaTimeReadableInstant_(self, period, end);
  return self;
}

void OrgJodaTimeInterval_initWithId_(OrgJodaTimeInterval *self, id interval) {
  OrgJodaTimeBaseBaseInterval_initWithId_withOrgJodaTimeChronology_(self, interval, nil);
}

OrgJodaTimeInterval *new_OrgJodaTimeInterval_initWithId_(id interval) {
  OrgJodaTimeInterval *self = [OrgJodaTimeInterval alloc];
  OrgJodaTimeInterval_initWithId_(self, interval);
  return self;
}

void OrgJodaTimeInterval_initWithId_withOrgJodaTimeChronology_(OrgJodaTimeInterval *self, id interval, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeBaseBaseInterval_initWithId_withOrgJodaTimeChronology_(self, interval, chronology);
}

OrgJodaTimeInterval *new_OrgJodaTimeInterval_initWithId_withOrgJodaTimeChronology_(id interval, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeInterval *self = [OrgJodaTimeInterval alloc];
  OrgJodaTimeInterval_initWithId_withOrgJodaTimeChronology_(self, interval, chronology);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeInterval)
