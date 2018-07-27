//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/chrono/BasicFixedMonthChronology.java
//

#include "J2ObjC_source.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeConstants.h"
#include "org/joda/time/chrono/BasicChronology.h"
#include "org/joda/time/chrono/BasicFixedMonthChronology.h"

inline jlong OrgJodaTimeChronoBasicFixedMonthChronology_get_serialVersionUID();
#define OrgJodaTimeChronoBasicFixedMonthChronology_serialVersionUID 261387371998LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeChronoBasicFixedMonthChronology, serialVersionUID, jlong)

@implementation OrgJodaTimeChronoBasicFixedMonthChronology

- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base
                                       withId:(id)param
                                      withInt:(jint)minDaysInFirstWeek {
  OrgJodaTimeChronoBasicFixedMonthChronology_initWithOrgJodaTimeChronology_withId_withInt_(self, base, param, minDaysInFirstWeek);
  return self;
}

- (jlong)setYearWithLong:(jlong)instant
                 withInt:(jint)year {
  jint thisYear = [self getYearWithLong:instant];
  jint dayOfYear = [self getDayOfYearWithLong:instant withInt:thisYear];
  jint millisOfDay = [self getMillisOfDayWithLong:instant];
  if (dayOfYear > 365) {
    if (![self isLeapYearWithInt:year]) {
      dayOfYear--;
    }
  }
  instant = [self getYearMonthDayMillisWithInt:year withInt:1 withInt:dayOfYear];
  instant += millisOfDay;
  return instant;
}

- (jlong)getYearDifferenceWithLong:(jlong)minuendInstant
                          withLong:(jlong)subtrahendInstant {
  jint minuendYear = [self getYearWithLong:minuendInstant];
  jint subtrahendYear = [self getYearWithLong:subtrahendInstant];
  jlong minuendRem = minuendInstant - [self getYearMillisWithInt:minuendYear];
  jlong subtrahendRem = subtrahendInstant - [self getYearMillisWithInt:subtrahendYear];
  jint difference = minuendYear - subtrahendYear;
  if (minuendRem < subtrahendRem) {
    difference--;
  }
  return difference;
}

- (jlong)getTotalMillisByYearMonthWithInt:(jint)year
                                  withInt:(jint)month {
  return ((month - 1) * OrgJodaTimeChronoBasicFixedMonthChronology_MILLIS_PER_MONTH);
}

- (jint)getDayOfMonthWithLong:(jlong)millis {
  return ([self getDayOfYearWithLong:millis] - 1) % OrgJodaTimeChronoBasicFixedMonthChronology_MONTH_LENGTH + 1;
}

- (jboolean)isLeapYearWithInt:(jint)year {
  return (year & 3) == 3;
}

- (jint)getDaysInYearMonthWithInt:(jint)year
                          withInt:(jint)month {
  return (month != 13) ? OrgJodaTimeChronoBasicFixedMonthChronology_MONTH_LENGTH : ([self isLeapYearWithInt:year] ? 6 : 5);
}

- (jint)getDaysInMonthMax {
  return OrgJodaTimeChronoBasicFixedMonthChronology_MONTH_LENGTH;
}

- (jint)getDaysInMonthMaxWithInt:(jint)month {
  return (month != 13 ? OrgJodaTimeChronoBasicFixedMonthChronology_MONTH_LENGTH : 6);
}

- (jint)getMonthOfYearWithLong:(jlong)millis {
  return ([self getDayOfYearWithLong:millis] - 1) / OrgJodaTimeChronoBasicFixedMonthChronology_MONTH_LENGTH + 1;
}

- (jint)getMonthOfYearWithLong:(jlong)millis
                       withInt:(jint)year {
  jlong monthZeroBased = (millis - [self getYearMillisWithInt:year]) / OrgJodaTimeChronoBasicFixedMonthChronology_MILLIS_PER_MONTH;
  return ((jint) monthZeroBased) + 1;
}

- (jint)getMaxMonth {
  return 13;
}

- (jlong)getAverageMillisPerYear {
  return OrgJodaTimeChronoBasicFixedMonthChronology_MILLIS_PER_YEAR;
}

- (jlong)getAverageMillisPerYearDividedByTwo {
  return OrgJodaTimeChronoBasicFixedMonthChronology_MILLIS_PER_YEAR / 2;
}

- (jlong)getAverageMillisPerMonth {
  return OrgJodaTimeChronoBasicFixedMonthChronology_MILLIS_PER_MONTH;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "J", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x0, 3, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x0, 5, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 7, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 11, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 12, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 13, 8, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 13, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJodaTimeChronology:withId:withInt:);
  methods[1].selector = @selector(setYearWithLong:withInt:);
  methods[2].selector = @selector(getYearDifferenceWithLong:withLong:);
  methods[3].selector = @selector(getTotalMillisByYearMonthWithInt:withInt:);
  methods[4].selector = @selector(getDayOfMonthWithLong:);
  methods[5].selector = @selector(isLeapYearWithInt:);
  methods[6].selector = @selector(getDaysInYearMonthWithInt:withInt:);
  methods[7].selector = @selector(getDaysInMonthMax);
  methods[8].selector = @selector(getDaysInMonthMaxWithInt:);
  methods[9].selector = @selector(getMonthOfYearWithLong:);
  methods[10].selector = @selector(getMonthOfYearWithLong:withInt:);
  methods[11].selector = @selector(getMaxMonth);
  methods[12].selector = @selector(getAverageMillisPerYear);
  methods[13].selector = @selector(getAverageMillisPerYearDividedByTwo);
  methods[14].selector = @selector(getAverageMillisPerMonth);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeChronoBasicFixedMonthChronology_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "MONTH_LENGTH", "I", .constantValue.asInt = OrgJodaTimeChronoBasicFixedMonthChronology_MONTH_LENGTH, 0x18, -1, -1, -1, -1 },
    { "MILLIS_PER_YEAR", "J", .constantValue.asLong = OrgJodaTimeChronoBasicFixedMonthChronology_MILLIS_PER_YEAR, 0x18, -1, -1, -1, -1 },
    { "MILLIS_PER_MONTH", "J", .constantValue.asLong = OrgJodaTimeChronoBasicFixedMonthChronology_MILLIS_PER_MONTH, 0x18, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgJodaTimeChronology;LNSObject;I", "setYear", "JI", "getYearDifference", "JJ", "getTotalMillisByYearMonth", "II", "getDayOfMonth", "J", "isLeapYear", "I", "getDaysInYearMonth", "getDaysInMonthMax", "getMonthOfYear" };
  static const J2ObjcClassInfo _OrgJodaTimeChronoBasicFixedMonthChronology = { "BasicFixedMonthChronology", "org.joda.time.chrono", ptrTable, methods, fields, 7, 0x400, 15, 4, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeChronoBasicFixedMonthChronology;
}

@end

void OrgJodaTimeChronoBasicFixedMonthChronology_initWithOrgJodaTimeChronology_withId_withInt_(OrgJodaTimeChronoBasicFixedMonthChronology *self, OrgJodaTimeChronology *base, id param, jint minDaysInFirstWeek) {
  OrgJodaTimeChronoBasicChronology_initWithOrgJodaTimeChronology_withId_withInt_(self, base, param, minDaysInFirstWeek);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeChronoBasicFixedMonthChronology)
