//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/chrono/BasicGJChronology.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeConstants.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/chrono/AssembledChronology.h"
#include "org/joda/time/chrono/BasicChronology.h"
#include "org/joda/time/chrono/BasicGJChronology.h"

#define OrgJodaTimeChronoBasicGJChronology_serialVersionUID 538276888268LL
#define OrgJodaTimeChronoBasicGJChronology_FEB_29 5097600000LL

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoBasicGJChronology, serialVersionUID, jlong)

static IOSIntArray *OrgJodaTimeChronoBasicGJChronology_MIN_DAYS_PER_MONTH_ARRAY_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoBasicGJChronology, MIN_DAYS_PER_MONTH_ARRAY_, IOSIntArray *)

static IOSIntArray *OrgJodaTimeChronoBasicGJChronology_MAX_DAYS_PER_MONTH_ARRAY_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoBasicGJChronology, MAX_DAYS_PER_MONTH_ARRAY_, IOSIntArray *)

static IOSLongArray *OrgJodaTimeChronoBasicGJChronology_MIN_TOTAL_MILLIS_BY_MONTH_ARRAY_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoBasicGJChronology, MIN_TOTAL_MILLIS_BY_MONTH_ARRAY_, IOSLongArray *)

static IOSLongArray *OrgJodaTimeChronoBasicGJChronology_MAX_TOTAL_MILLIS_BY_MONTH_ARRAY_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoBasicGJChronology, MAX_TOTAL_MILLIS_BY_MONTH_ARRAY_, IOSLongArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoBasicGJChronology, FEB_29, jlong)

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeChronoBasicGJChronology)

@implementation OrgJodaTimeChronoBasicGJChronology

- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base
                                       withId:(id)param
                                      withInt:(jint)minDaysInFirstWeek {
  OrgJodaTimeChronoBasicGJChronology_initWithOrgJodaTimeChronology_withId_withInt_(self, base, param, minDaysInFirstWeek);
  return self;
}

- (jboolean)isLeapDayWithLong:(jlong)instant {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self dayOfMonth])) getWithLong:instant] == 29 && [((OrgJodaTimeDateTimeField *) nil_chk([self monthOfYear])) isLeapWithLong:instant];
}

- (jint)getMonthOfYearWithLong:(jlong)millis
                       withInt:(jint)year {
  jint i = (jint) (JreRShift64((millis - [self getYearMillisWithInt:year]), 10));
  return ([self isLeapYearWithInt:year]) ? ((i < 182 * 84375) ? ((i < 91 * 84375) ? ((i < 31 * 84375) ? 1 : (i < 60 * 84375) ? 2 : 3) : ((i < 121 * 84375) ? 4 : (i < 152 * 84375) ? 5 : 6)) : ((i < 274 * 84375) ? ((i < 213 * 84375) ? 7 : (i < 244 * 84375) ? 8 : 9) : ((i < 305 * 84375) ? 10 : (i < 335 * 84375) ? 11 : 12))) : ((i < 181 * 84375) ? ((i < 90 * 84375) ? ((i < 31 * 84375) ? 1 : (i < 59 * 84375) ? 2 : 3) : ((i < 120 * 84375) ? 4 : (i < 151 * 84375) ? 5 : 6)) : ((i < 273 * 84375) ? ((i < 212 * 84375) ? 7 : (i < 243 * 84375) ? 8 : 9) : ((i < 304 * 84375) ? 10 : (i < 334 * 84375) ? 11 : 12)));
}

- (jint)getDaysInYearMonthWithInt:(jint)year
                          withInt:(jint)month {
  if ([self isLeapYearWithInt:year]) {
    return IOSIntArray_Get(nil_chk(OrgJodaTimeChronoBasicGJChronology_MAX_DAYS_PER_MONTH_ARRAY_), month - 1);
  }
  else {
    return IOSIntArray_Get(nil_chk(OrgJodaTimeChronoBasicGJChronology_MIN_DAYS_PER_MONTH_ARRAY_), month - 1);
  }
}

- (jint)getDaysInMonthMaxWithInt:(jint)month {
  return IOSIntArray_Get(nil_chk(OrgJodaTimeChronoBasicGJChronology_MAX_DAYS_PER_MONTH_ARRAY_), month - 1);
}

- (jint)getDaysInMonthMaxForSetWithLong:(jlong)instant
                                withInt:(jint)value {
  return ((value > 28 || value < 1) ? [self getDaysInMonthMaxWithLong:instant] : 28);
}

- (jlong)getTotalMillisByYearMonthWithInt:(jint)year
                                  withInt:(jint)month {
  if ([self isLeapYearWithInt:year]) {
    return IOSLongArray_Get(nil_chk(OrgJodaTimeChronoBasicGJChronology_MAX_TOTAL_MILLIS_BY_MONTH_ARRAY_), month - 1);
  }
  else {
    return IOSLongArray_Get(nil_chk(OrgJodaTimeChronoBasicGJChronology_MIN_TOTAL_MILLIS_BY_MONTH_ARRAY_), month - 1);
  }
}

- (jlong)getYearDifferenceWithLong:(jlong)minuendInstant
                          withLong:(jlong)subtrahendInstant {
  jint minuendYear = [self getYearWithLong:minuendInstant];
  jint subtrahendYear = [self getYearWithLong:subtrahendInstant];
  jlong minuendRem = minuendInstant - [self getYearMillisWithInt:minuendYear];
  jlong subtrahendRem = subtrahendInstant - [self getYearMillisWithInt:subtrahendYear];
  if (subtrahendRem >= OrgJodaTimeChronoBasicGJChronology_FEB_29) {
    if ([self isLeapYearWithInt:subtrahendYear]) {
      if (![self isLeapYearWithInt:minuendYear]) {
        subtrahendRem -= OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY;
      }
    }
    else if (minuendRem >= OrgJodaTimeChronoBasicGJChronology_FEB_29 && [self isLeapYearWithInt:minuendYear]) {
      minuendRem -= OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY;
    }
  }
  jint difference = minuendYear - subtrahendYear;
  if (minuendRem < subtrahendRem) {
    difference--;
  }
  return difference;
}

- (jlong)setYearWithLong:(jlong)instant
                 withInt:(jint)year {
  jint thisYear = [self getYearWithLong:instant];
  jint dayOfYear = [self getDayOfYearWithLong:instant withInt:thisYear];
  jint millisOfDay = [self getMillisOfDayWithLong:instant];
  if (dayOfYear > (31 + 28)) {
    if ([self isLeapYearWithInt:thisYear]) {
      if (![self isLeapYearWithInt:year]) {
        dayOfYear--;
      }
    }
    else {
      if ([self isLeapYearWithInt:year]) {
        dayOfYear++;
      }
    }
  }
  instant = [self getYearMonthDayMillisWithInt:year withInt:1 withInt:dayOfYear];
  instant += millisOfDay;
  return instant;
}

+ (void)initialize {
  if (self == [OrgJodaTimeChronoBasicGJChronology class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeChronoBasicGJChronology_MIN_DAYS_PER_MONTH_ARRAY_, [IOSIntArray newArrayWithInts:(jint[]){ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 } count:12]);
    JreStrongAssignAndConsume(&OrgJodaTimeChronoBasicGJChronology_MAX_DAYS_PER_MONTH_ARRAY_, [IOSIntArray newArrayWithInts:(jint[]){ 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 } count:12]);
    {
      JreStrongAssignAndConsume(&OrgJodaTimeChronoBasicGJChronology_MIN_TOTAL_MILLIS_BY_MONTH_ARRAY_, [IOSLongArray newArrayWithLength:12]);
      JreStrongAssignAndConsume(&OrgJodaTimeChronoBasicGJChronology_MAX_TOTAL_MILLIS_BY_MONTH_ARRAY_, [IOSLongArray newArrayWithLength:12]);
      jlong minSum = 0;
      jlong maxSum = 0;
      for (jint i = 0; i < 11; i++) {
        jlong millis = IOSIntArray_Get(OrgJodaTimeChronoBasicGJChronology_MIN_DAYS_PER_MONTH_ARRAY_, i) * (jlong) OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY;
        minSum += millis;
        *IOSLongArray_GetRef(OrgJodaTimeChronoBasicGJChronology_MIN_TOTAL_MILLIS_BY_MONTH_ARRAY_, i + 1) = minSum;
        millis = IOSIntArray_Get(OrgJodaTimeChronoBasicGJChronology_MAX_DAYS_PER_MONTH_ARRAY_, i) * (jlong) OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY;
        maxSum += millis;
        *IOSLongArray_GetRef(OrgJodaTimeChronoBasicGJChronology_MAX_TOTAL_MILLIS_BY_MONTH_ARRAY_, i + 1) = maxSum;
      }
    }
    J2OBJC_SET_INITIALIZED(OrgJodaTimeChronoBasicGJChronology)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgJodaTimeChronology:withId:withInt:", "BasicGJChronology", NULL, 0x0, NULL, NULL },
    { "isLeapDayWithLong:", "isLeapDay", "Z", 0x0, NULL, NULL },
    { "getMonthOfYearWithLong:withInt:", "getMonthOfYear", "I", 0x0, NULL, NULL },
    { "getDaysInYearMonthWithInt:withInt:", "getDaysInYearMonth", "I", 0x0, NULL, NULL },
    { "getDaysInMonthMaxWithInt:", "getDaysInMonthMax", "I", 0x0, NULL, NULL },
    { "getDaysInMonthMaxForSetWithLong:withInt:", "getDaysInMonthMaxForSet", "I", 0x0, NULL, NULL },
    { "getTotalMillisByYearMonthWithInt:withInt:", "getTotalMillisByYearMonth", "J", 0x0, NULL, NULL },
    { "getYearDifferenceWithLong:withLong:", "getYearDifference", "J", 0x0, NULL, NULL },
    { "setYearWithLong:withInt:", "setYear", "J", 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoBasicGJChronology_serialVersionUID },
    { "MIN_DAYS_PER_MONTH_ARRAY_", NULL, 0x1a, "[I", &OrgJodaTimeChronoBasicGJChronology_MIN_DAYS_PER_MONTH_ARRAY_, NULL, .constantValue.asLong = 0 },
    { "MAX_DAYS_PER_MONTH_ARRAY_", NULL, 0x1a, "[I", &OrgJodaTimeChronoBasicGJChronology_MAX_DAYS_PER_MONTH_ARRAY_, NULL, .constantValue.asLong = 0 },
    { "MIN_TOTAL_MILLIS_BY_MONTH_ARRAY_", NULL, 0x1a, "[J", &OrgJodaTimeChronoBasicGJChronology_MIN_TOTAL_MILLIS_BY_MONTH_ARRAY_, NULL, .constantValue.asLong = 0 },
    { "MAX_TOTAL_MILLIS_BY_MONTH_ARRAY_", NULL, 0x1a, "[J", &OrgJodaTimeChronoBasicGJChronology_MAX_TOTAL_MILLIS_BY_MONTH_ARRAY_, NULL, .constantValue.asLong = 0 },
    { "FEB_29", "FEB_29", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoBasicGJChronology_FEB_29 },
  };
  static const J2ObjcClassInfo _OrgJodaTimeChronoBasicGJChronology = { 2, "BasicGJChronology", "org.joda.time.chrono", NULL, 0x400, 9, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeChronoBasicGJChronology;
}

@end

void OrgJodaTimeChronoBasicGJChronology_initWithOrgJodaTimeChronology_withId_withInt_(OrgJodaTimeChronoBasicGJChronology *self, OrgJodaTimeChronology *base, id param, jint minDaysInFirstWeek) {
  OrgJodaTimeChronoBasicChronology_initWithOrgJodaTimeChronology_withId_withInt_(self, base, param, minDaysInFirstWeek);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeChronoBasicGJChronology)
