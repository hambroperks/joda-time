//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/base/BaseInterval.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/MutableInterval.h"
#include "org/joda/time/ReadWritableInterval.h"
#include "org/joda/time/ReadableDuration.h"
#include "org/joda/time/ReadableInstant.h"
#include "org/joda/time/ReadableInterval.h"
#include "org/joda/time/ReadablePeriod.h"
#include "org/joda/time/base/AbstractInterval.h"
#include "org/joda/time/base/BaseInterval.h"
#include "org/joda/time/chrono/ISOChronology.h"
#include "org/joda/time/convert/ConverterManager.h"
#include "org/joda/time/convert/IntervalConverter.h"
#include "org/joda/time/field/FieldUtils.h"

#define OrgJodaTimeBaseBaseInterval_serialVersionUID 576586928732749278LL

@interface OrgJodaTimeBaseBaseInterval () {
 @public
  /*!
   @brief The chronology of the interval
   */
  volatile_id iChronology_;
  /*!
   @brief The start of the interval
   */
  volatile_jlong iStartMillis_;
  /*!
   @brief The end of the interval
   */
  volatile_jlong iEndMillis_;
}

@end

J2OBJC_VOLATILE_FIELD_SETTER(OrgJodaTimeBaseBaseInterval, iChronology_, OrgJodaTimeChronology *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeBaseBaseInterval, serialVersionUID, jlong)

@implementation OrgJodaTimeBaseBaseInterval

- (instancetype)initWithLong:(jlong)startInstant
                    withLong:(jlong)endInstant
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  OrgJodaTimeBaseBaseInterval_initWithLong_withLong_withOrgJodaTimeChronology_(self, startInstant, endInstant, chrono);
  return self;
}

- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                    withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end {
  OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(self, start, end);
  return self;
}

- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                   withOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration {
  OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableDuration_(self, start, duration);
  return self;
}

- (instancetype)initWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration
                     withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end {
  OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadableDuration_withOrgJodaTimeReadableInstant_(self, duration, end);
  return self;
}

- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                     withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadablePeriod_(self, start, period);
  return self;
}

- (instancetype)initWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                   withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end {
  OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadablePeriod_withOrgJodaTimeReadableInstant_(self, period, end);
  return self;
}

- (instancetype)initWithId:(id)interval
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  OrgJodaTimeBaseBaseInterval_initWithId_withOrgJodaTimeChronology_(self, interval, chrono);
  return self;
}

- (OrgJodaTimeChronology *)getChronology {
  return JreLoadVolatileId(&iChronology_);
}

- (jlong)getStartMillis {
  return JreLoadVolatileLong(&iStartMillis_);
}

- (jlong)getEndMillis {
  return JreLoadVolatileLong(&iEndMillis_);
}

- (void)setIntervalWithLong:(jlong)startInstant
                   withLong:(jlong)endInstant
  withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  [self checkIntervalWithLong:startInstant withLong:endInstant];
  JreAssignVolatileLong(&iStartMillis_, startInstant);
  JreAssignVolatileLong(&iEndMillis_, endInstant);
  JreVolatileStrongAssign(&iChronology_, OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(chrono));
}

- (void)dealloc {
  JreReleaseVolatile(&iChronology_);
  [super dealloc];
}

- (void)__javaClone {
  [super __javaClone];
  JreRetainVolatile(&iChronology_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLong:withLong:withOrgJodaTimeChronology:", "BaseInterval", NULL, 0x4, NULL, NULL },
    { "initWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableInstant:", "BaseInterval", NULL, 0x4, NULL, NULL },
    { "initWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableDuration:", "BaseInterval", NULL, 0x4, NULL, NULL },
    { "initWithOrgJodaTimeReadableDuration:withOrgJodaTimeReadableInstant:", "BaseInterval", NULL, 0x4, NULL, NULL },
    { "initWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadablePeriod:", "BaseInterval", NULL, 0x4, NULL, NULL },
    { "initWithOrgJodaTimeReadablePeriod:withOrgJodaTimeReadableInstant:", "BaseInterval", NULL, 0x4, NULL, NULL },
    { "initWithId:withOrgJodaTimeChronology:", "BaseInterval", NULL, 0x4, NULL, NULL },
    { "getChronology", NULL, "Lorg.joda.time.Chronology;", 0x1, NULL, NULL },
    { "getStartMillis", NULL, "J", 0x1, NULL, NULL },
    { "getEndMillis", NULL, "J", 0x1, NULL, NULL },
    { "setIntervalWithLong:withLong:withOrgJodaTimeChronology:", "setInterval", "V", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeBaseBaseInterval_serialVersionUID },
    { "iChronology_", NULL, 0x42, "Lorg.joda.time.Chronology;", NULL, NULL, .constantValue.asLong = 0 },
    { "iStartMillis_", NULL, 0x42, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "iEndMillis_", NULL, 0x42, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgJodaTimeBaseBaseInterval = { 2, "BaseInterval", "org.joda.time.base", NULL, 0x401, 11, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeBaseBaseInterval;
}

@end

void OrgJodaTimeBaseBaseInterval_initWithLong_withLong_withOrgJodaTimeChronology_(OrgJodaTimeBaseBaseInterval *self, jlong startInstant, jlong endInstant, OrgJodaTimeChronology *chrono) {
  OrgJodaTimeBaseAbstractInterval_init(self);
  JreVolatileStrongAssign(&self->iChronology_, OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(chrono));
  [self checkIntervalWithLong:startInstant withLong:endInstant];
  JreAssignVolatileLong(&self->iStartMillis_, startInstant);
  JreAssignVolatileLong(&self->iEndMillis_, endInstant);
}

void OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(OrgJodaTimeBaseBaseInterval *self, id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeBaseAbstractInterval_init(self);
  if (start == nil && end == nil) {
    JreAssignVolatileLong(&self->iStartMillis_, JreAssignVolatileLong(&self->iEndMillis_, OrgJodaTimeDateTimeUtils_currentTimeMillis()));
    JreVolatileStrongAssign(&self->iChronology_, OrgJodaTimeChronoISOChronology_getInstance());
  }
  else {
    JreVolatileStrongAssign(&self->iChronology_, OrgJodaTimeDateTimeUtils_getInstantChronologyWithOrgJodaTimeReadableInstant_(start));
    JreAssignVolatileLong(&self->iStartMillis_, OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(start));
    JreAssignVolatileLong(&self->iEndMillis_, OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(end));
    [self checkIntervalWithLong:JreLoadVolatileLong(&self->iStartMillis_) withLong:JreLoadVolatileLong(&self->iEndMillis_)];
  }
}

void OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableDuration_(OrgJodaTimeBaseBaseInterval *self, id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableDuration> duration) {
  OrgJodaTimeBaseAbstractInterval_init(self);
  JreVolatileStrongAssign(&self->iChronology_, OrgJodaTimeDateTimeUtils_getInstantChronologyWithOrgJodaTimeReadableInstant_(start));
  JreAssignVolatileLong(&self->iStartMillis_, OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(start));
  jlong durationMillis = OrgJodaTimeDateTimeUtils_getDurationMillisWithOrgJodaTimeReadableDuration_(duration);
  JreAssignVolatileLong(&self->iEndMillis_, OrgJodaTimeFieldFieldUtils_safeAddWithLong_withLong_(JreLoadVolatileLong(&self->iStartMillis_), durationMillis));
  [self checkIntervalWithLong:JreLoadVolatileLong(&self->iStartMillis_) withLong:JreLoadVolatileLong(&self->iEndMillis_)];
}

void OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadableDuration_withOrgJodaTimeReadableInstant_(OrgJodaTimeBaseBaseInterval *self, id<OrgJodaTimeReadableDuration> duration, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeBaseAbstractInterval_init(self);
  JreVolatileStrongAssign(&self->iChronology_, OrgJodaTimeDateTimeUtils_getInstantChronologyWithOrgJodaTimeReadableInstant_(end));
  JreAssignVolatileLong(&self->iEndMillis_, OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(end));
  jlong durationMillis = OrgJodaTimeDateTimeUtils_getDurationMillisWithOrgJodaTimeReadableDuration_(duration);
  JreAssignVolatileLong(&self->iStartMillis_, OrgJodaTimeFieldFieldUtils_safeAddWithLong_withLong_(JreLoadVolatileLong(&self->iEndMillis_), -durationMillis));
  [self checkIntervalWithLong:JreLoadVolatileLong(&self->iStartMillis_) withLong:JreLoadVolatileLong(&self->iEndMillis_)];
}

void OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadablePeriod_(OrgJodaTimeBaseBaseInterval *self, id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadablePeriod> period) {
  OrgJodaTimeBaseAbstractInterval_init(self);
  OrgJodaTimeChronology *chrono = OrgJodaTimeDateTimeUtils_getInstantChronologyWithOrgJodaTimeReadableInstant_(start);
  JreVolatileStrongAssign(&self->iChronology_, chrono);
  JreAssignVolatileLong(&self->iStartMillis_, OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(start));
  if (period == nil) {
    JreAssignVolatileLong(&self->iEndMillis_, JreLoadVolatileLong(&self->iStartMillis_));
  }
  else {
    JreAssignVolatileLong(&self->iEndMillis_, [((OrgJodaTimeChronology *) nil_chk(chrono)) addWithOrgJodaTimeReadablePeriod:period withLong:JreLoadVolatileLong(&self->iStartMillis_) withInt:1]);
  }
  [self checkIntervalWithLong:JreLoadVolatileLong(&self->iStartMillis_) withLong:JreLoadVolatileLong(&self->iEndMillis_)];
}

void OrgJodaTimeBaseBaseInterval_initWithOrgJodaTimeReadablePeriod_withOrgJodaTimeReadableInstant_(OrgJodaTimeBaseBaseInterval *self, id<OrgJodaTimeReadablePeriod> period, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeBaseAbstractInterval_init(self);
  OrgJodaTimeChronology *chrono = OrgJodaTimeDateTimeUtils_getInstantChronologyWithOrgJodaTimeReadableInstant_(end);
  JreVolatileStrongAssign(&self->iChronology_, chrono);
  JreAssignVolatileLong(&self->iEndMillis_, OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(end));
  if (period == nil) {
    JreAssignVolatileLong(&self->iStartMillis_, JreLoadVolatileLong(&self->iEndMillis_));
  }
  else {
    JreAssignVolatileLong(&self->iStartMillis_, [((OrgJodaTimeChronology *) nil_chk(chrono)) addWithOrgJodaTimeReadablePeriod:period withLong:JreLoadVolatileLong(&self->iEndMillis_) withInt:-1]);
  }
  [self checkIntervalWithLong:JreLoadVolatileLong(&self->iStartMillis_) withLong:JreLoadVolatileLong(&self->iEndMillis_)];
}

void OrgJodaTimeBaseBaseInterval_initWithId_withOrgJodaTimeChronology_(OrgJodaTimeBaseBaseInterval *self, id interval, OrgJodaTimeChronology *chrono) {
  OrgJodaTimeBaseAbstractInterval_init(self);
  id<OrgJodaTimeConvertIntervalConverter> converter = [((OrgJodaTimeConvertConverterManager *) nil_chk(OrgJodaTimeConvertConverterManager_getInstance())) getIntervalConverterWithId:interval];
  if ([((id<OrgJodaTimeConvertIntervalConverter>) nil_chk(converter)) isReadableIntervalWithId:interval withOrgJodaTimeChronology:chrono]) {
    id<OrgJodaTimeReadableInterval> input = (id<OrgJodaTimeReadableInterval>) check_protocol_cast(interval, OrgJodaTimeReadableInterval_class_());
    JreVolatileStrongAssign(&self->iChronology_, (chrono != nil ? chrono : [((id<OrgJodaTimeReadableInterval>) nil_chk(input)) getChronology]));
    JreAssignVolatileLong(&self->iStartMillis_, [((id<OrgJodaTimeReadableInterval>) nil_chk(input)) getStartMillis]);
    JreAssignVolatileLong(&self->iEndMillis_, [input getEndMillis]);
  }
  else if ([OrgJodaTimeReadWritableInterval_class_() isInstance:self]) {
    [converter setIntoWithOrgJodaTimeReadWritableInterval:(id<OrgJodaTimeReadWritableInterval>) check_protocol_cast(self, OrgJodaTimeReadWritableInterval_class_()) withId:interval withOrgJodaTimeChronology:chrono];
  }
  else {
    OrgJodaTimeMutableInterval *mi = [new_OrgJodaTimeMutableInterval_init() autorelease];
    [converter setIntoWithOrgJodaTimeReadWritableInterval:mi withId:interval withOrgJodaTimeChronology:chrono];
    JreVolatileStrongAssign(&self->iChronology_, [mi getChronology]);
    JreAssignVolatileLong(&self->iStartMillis_, [mi getStartMillis]);
    JreAssignVolatileLong(&self->iEndMillis_, [mi getEndMillis]);
  }
  [self checkIntervalWithLong:JreLoadVolatileLong(&self->iStartMillis_) withLong:JreLoadVolatileLong(&self->iEndMillis_)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeBaseBaseInterval)
