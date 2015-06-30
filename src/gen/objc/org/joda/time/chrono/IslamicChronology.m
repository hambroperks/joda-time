//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/chrono/IslamicChronology.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/ArithmeticException.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTime.h"
#include "org/joda/time/DateTimeConstants.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeZone.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/chrono/AssembledChronology.h"
#include "org/joda/time/chrono/BasicChronology.h"
#include "org/joda/time/chrono/BasicMonthOfYearDateTimeField.h"
#include "org/joda/time/chrono/BasicSingleEraDateTimeField.h"
#include "org/joda/time/chrono/IslamicChronology.h"
#include "org/joda/time/chrono/LimitChronology.h"
#include "org/joda/time/chrono/ZonedChronology.h"

#define OrgJodaTimeChronoIslamicChronology_serialVersionUID -3663823829888LL
#define OrgJodaTimeChronoIslamicChronology_MIN_YEAR -292269337
#define OrgJodaTimeChronoIslamicChronology_MAX_YEAR 292271022
#define OrgJodaTimeChronoIslamicChronology_MONTH_PAIR_LENGTH 59
#define OrgJodaTimeChronoIslamicChronology_LONG_MONTH_LENGTH 30
#define OrgJodaTimeChronoIslamicChronology_SHORT_MONTH_LENGTH 29
#define OrgJodaTimeChronoIslamicChronology_MILLIS_PER_MONTH_PAIR 5097600000LL
#define OrgJodaTimeChronoIslamicChronology_MILLIS_PER_MONTH 2551440384LL
#define OrgJodaTimeChronoIslamicChronology_MILLIS_PER_LONG_MONTH 2592000000LL
#define OrgJodaTimeChronoIslamicChronology_MILLIS_PER_YEAR 30617280288LL
#define OrgJodaTimeChronoIslamicChronology_MILLIS_PER_SHORT_YEAR 30585600000LL
#define OrgJodaTimeChronoIslamicChronology_MILLIS_PER_LONG_YEAR 30672000000LL
#define OrgJodaTimeChronoIslamicChronology_MILLIS_YEAR_1 -42521587200000LL
#define OrgJodaTimeChronoIslamicChronology_CYCLE 30
#define OrgJodaTimeChronoIslamicChronology_MILLIS_PER_CYCLE 918518400000LL

@interface OrgJodaTimeChronoIslamicChronology () {
 @public
  /**
   @brief The leap years to use.
   */
  OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *iLeapYears_;
}

/**
 @brief Serialization singleton.
 */
- (id)readResolve;

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeChronoIslamicChronology, iLeapYears_, OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, serialVersionUID, jlong)

static OrgJodaTimeDateTimeField *OrgJodaTimeChronoIslamicChronology_ERA_FIELD_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, ERA_FIELD_, OrgJodaTimeDateTimeField *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, MIN_YEAR, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, MAX_YEAR, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, MONTH_PAIR_LENGTH, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, LONG_MONTH_LENGTH, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, SHORT_MONTH_LENGTH, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, MILLIS_PER_MONTH_PAIR, jlong)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, MILLIS_PER_MONTH, jlong)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, MILLIS_PER_LONG_MONTH, jlong)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, MILLIS_PER_YEAR, jlong)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, MILLIS_PER_SHORT_YEAR, jlong)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, MILLIS_PER_LONG_YEAR, jlong)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, MILLIS_YEAR_1, jlong)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, CYCLE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, MILLIS_PER_CYCLE, jlong)

static JavaUtilConcurrentConcurrentHashMap *OrgJodaTimeChronoIslamicChronology_cCache_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, cCache_, JavaUtilConcurrentConcurrentHashMap *)

static OrgJodaTimeChronoIslamicChronology *OrgJodaTimeChronoIslamicChronology_INSTANCE_UTC_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology, INSTANCE_UTC_, OrgJodaTimeChronoIslamicChronology *)

#define OrgJodaTimeChronoIslamicChronology_LeapYearPatternType_serialVersionUID 26581275372698LL

@interface OrgJodaTimeChronoIslamicChronology_LeapYearPatternType ()

/**
 @brief Ensure a singleton is returned if possible.
 @return the singleton instance
 */
- (id)readResolve;

@end

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoIslamicChronology_LeapYearPatternType, serialVersionUID, jlong)

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeChronoIslamicChronology)

OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_15_BASED_;
OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_16_BASED_;
OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_INDIAN_;
OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_HABASH_AL_HASIB_;

@implementation OrgJodaTimeChronoIslamicChronology

+ (OrgJodaTimeChronoIslamicChronology *)getInstanceUTC {
  return OrgJodaTimeChronoIslamicChronology_getInstanceUTC();
}

+ (OrgJodaTimeChronoIslamicChronology *)getInstance {
  return OrgJodaTimeChronoIslamicChronology_getInstance();
}

+ (OrgJodaTimeChronoIslamicChronology *)getInstanceWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  return OrgJodaTimeChronoIslamicChronology_getInstanceWithOrgJodaTimeDateTimeZone_(zone);
}

+ (OrgJodaTimeChronoIslamicChronology *)getInstanceWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone
                    withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType:(OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *)leapYears {
  return OrgJodaTimeChronoIslamicChronology_getInstanceWithOrgJodaTimeDateTimeZone_withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType_(zone, leapYears);
}

- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base
                                       withId:(id)param
withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType:(OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *)leapYears {
  OrgJodaTimeChronoIslamicChronology_initWithOrgJodaTimeChronology_withId_withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType_(self, base, param, leapYears);
  return self;
}

- (id)readResolve {
  OrgJodaTimeChronology *base = [self getBase];
  return base == nil ? OrgJodaTimeChronoIslamicChronology_getInstanceUTC() : OrgJodaTimeChronoIslamicChronology_getInstanceWithOrgJodaTimeDateTimeZone_([base getZone]);
}

- (OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *)getLeapYearPatternType {
  return iLeapYears_;
}

- (OrgJodaTimeChronology *)withUTC {
  return OrgJodaTimeChronoIslamicChronology_INSTANCE_UTC_;
}

- (OrgJodaTimeChronology *)withZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  if (zone == nil) {
    zone = OrgJodaTimeDateTimeZone_getDefault();
  }
  if (zone == [self getZone]) {
    return self;
  }
  return OrgJodaTimeChronoIslamicChronology_getInstanceWithOrgJodaTimeDateTimeZone_(zone);
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) {
    return YES;
  }
  if ([obj isKindOfClass:[OrgJodaTimeChronoIslamicChronology class]]) {
    OrgJodaTimeChronoIslamicChronology *chrono = (OrgJodaTimeChronoIslamicChronology *) check_class_cast(obj, [OrgJodaTimeChronoIslamicChronology class]);
    return ((OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *) nil_chk([self getLeapYearPatternType]))->index_ == ((OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *) nil_chk([((OrgJodaTimeChronoIslamicChronology *) nil_chk(chrono)) getLeapYearPatternType]))->index_ && [super isEqual:obj];
  }
  return NO;
}

- (NSUInteger)hash {
  return ((jint) [super hash]) * 13 + ((jint) [((OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *) nil_chk([self getLeapYearPatternType])) hash]);
}

- (jint)getYearWithLong:(jlong)instant {
  jlong millisIslamic = instant - OrgJodaTimeChronoIslamicChronology_MILLIS_YEAR_1;
  jlong cycles = millisIslamic / OrgJodaTimeChronoIslamicChronology_MILLIS_PER_CYCLE;
  jlong cycleRemainder = millisIslamic % OrgJodaTimeChronoIslamicChronology_MILLIS_PER_CYCLE;
  jint year = (jint) ((cycles * OrgJodaTimeChronoIslamicChronology_CYCLE) + 1LL);
  jlong yearMillis = ([self isLeapYearWithInt:year] ? OrgJodaTimeChronoIslamicChronology_MILLIS_PER_LONG_YEAR : OrgJodaTimeChronoIslamicChronology_MILLIS_PER_SHORT_YEAR);
  while (cycleRemainder >= yearMillis) {
    cycleRemainder -= yearMillis;
    yearMillis = ([self isLeapYearWithInt:++year] ? OrgJodaTimeChronoIslamicChronology_MILLIS_PER_LONG_YEAR : OrgJodaTimeChronoIslamicChronology_MILLIS_PER_SHORT_YEAR);
  }
  return year;
}

- (jlong)setYearWithLong:(jlong)instant
                 withInt:(jint)year {
  jint thisYear = [self getYearWithLong:instant];
  jint dayOfYear = [self getDayOfYearWithLong:instant withInt:thisYear];
  jint millisOfDay = [self getMillisOfDayWithLong:instant];
  if (dayOfYear > 354) {
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
  if (--month % 2 == 1) {
    month /= 2;
    return month * OrgJodaTimeChronoIslamicChronology_MILLIS_PER_MONTH_PAIR + OrgJodaTimeChronoIslamicChronology_MILLIS_PER_LONG_MONTH;
  }
  else {
    month /= 2;
    return month * OrgJodaTimeChronoIslamicChronology_MILLIS_PER_MONTH_PAIR;
  }
}

- (jint)getDayOfMonthWithLong:(jlong)millis {
  jint doy = [self getDayOfYearWithLong:millis] - 1;
  if (doy == 354) {
    return 30;
  }
  return (doy % OrgJodaTimeChronoIslamicChronology_MONTH_PAIR_LENGTH) % OrgJodaTimeChronoIslamicChronology_LONG_MONTH_LENGTH + 1;
}

- (jboolean)isLeapYearWithInt:(jint)year {
  return [((OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *) nil_chk(iLeapYears_)) isLeapYearWithInt:year];
}

- (jint)getDaysInYearMax {
  return 355;
}

- (jint)getDaysInYearWithInt:(jint)year {
  return [self isLeapYearWithInt:year] ? 355 : 354;
}

- (jint)getDaysInYearMonthWithInt:(jint)year
                          withInt:(jint)month {
  if (month == 12 && [self isLeapYearWithInt:year]) {
    return OrgJodaTimeChronoIslamicChronology_LONG_MONTH_LENGTH;
  }
  return (--month % 2 == 0 ? OrgJodaTimeChronoIslamicChronology_LONG_MONTH_LENGTH : OrgJodaTimeChronoIslamicChronology_SHORT_MONTH_LENGTH);
}

- (jint)getDaysInMonthMax {
  return OrgJodaTimeChronoIslamicChronology_LONG_MONTH_LENGTH;
}

- (jint)getDaysInMonthMaxWithInt:(jint)month {
  if (month == 12) {
    return OrgJodaTimeChronoIslamicChronology_LONG_MONTH_LENGTH;
  }
  return (--month % 2 == 0 ? OrgJodaTimeChronoIslamicChronology_LONG_MONTH_LENGTH : OrgJodaTimeChronoIslamicChronology_SHORT_MONTH_LENGTH);
}

- (jint)getMonthOfYearWithLong:(jlong)millis
                       withInt:(jint)year {
  jint doyZeroBased = (jint) ((millis - [self getYearMillisWithInt:year]) / OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY);
  if (doyZeroBased == 354) {
    return 12;
  }
  return ((doyZeroBased * 2) / OrgJodaTimeChronoIslamicChronology_MONTH_PAIR_LENGTH) + 1;
}

- (jlong)getAverageMillisPerYear {
  return OrgJodaTimeChronoIslamicChronology_MILLIS_PER_YEAR;
}

- (jlong)getAverageMillisPerYearDividedByTwo {
  return OrgJodaTimeChronoIslamicChronology_MILLIS_PER_YEAR / 2;
}

- (jlong)getAverageMillisPerMonth {
  return OrgJodaTimeChronoIslamicChronology_MILLIS_PER_MONTH;
}

- (jlong)calculateFirstDayOfYearMillisWithInt:(jint)year {
  if (year > OrgJodaTimeChronoIslamicChronology_MAX_YEAR) {
    @throw [new_JavaLangArithmeticException_initWithNSString_(JreStrcat("$I$I", @"Year is too large: ", year, @" > ", OrgJodaTimeChronoIslamicChronology_MAX_YEAR)) autorelease];
  }
  if (year < OrgJodaTimeChronoIslamicChronology_MIN_YEAR) {
    @throw [new_JavaLangArithmeticException_initWithNSString_(JreStrcat("$I$I", @"Year is too small: ", year, @" < ", OrgJodaTimeChronoIslamicChronology_MIN_YEAR)) autorelease];
  }
  year--;
  jlong cycle = year / OrgJodaTimeChronoIslamicChronology_CYCLE;
  jlong millis = OrgJodaTimeChronoIslamicChronology_MILLIS_YEAR_1 + cycle * OrgJodaTimeChronoIslamicChronology_MILLIS_PER_CYCLE;
  jint cycleRemainder = (year % OrgJodaTimeChronoIslamicChronology_CYCLE) + 1;
  for (jint i = 1; i < cycleRemainder; i++) {
    millis += ([self isLeapYearWithInt:i] ? OrgJodaTimeChronoIslamicChronology_MILLIS_PER_LONG_YEAR : OrgJodaTimeChronoIslamicChronology_MILLIS_PER_SHORT_YEAR);
  }
  return millis;
}

- (jint)getMinYear {
  return 1;
}

- (jint)getMaxYear {
  return OrgJodaTimeChronoIslamicChronology_MAX_YEAR;
}

- (jlong)getApproxMillisAtEpochDividedByTwo {
  return (-OrgJodaTimeChronoIslamicChronology_MILLIS_YEAR_1) / 2;
}

- (void)assembleWithOrgJodaTimeChronoAssembledChronology_Fields:(OrgJodaTimeChronoAssembledChronology_Fields *)fields {
  if ([self getBase] == nil) {
    [super assembleWithOrgJodaTimeChronoAssembledChronology_Fields:fields];
    OrgJodaTimeChronoAssembledChronology_Fields_set_era_(nil_chk(fields), OrgJodaTimeChronoIslamicChronology_ERA_FIELD_);
    OrgJodaTimeChronoAssembledChronology_Fields_setAndConsume_monthOfYear_(fields, new_OrgJodaTimeChronoBasicMonthOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withInt_(self, 12));
    OrgJodaTimeChronoAssembledChronology_Fields_set_months_(fields, [fields->monthOfYear_ getDurationField]);
  }
}

- (void)dealloc {
  RELEASE_(iLeapYears_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgJodaTimeChronoIslamicChronology class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeChronoIslamicChronology_ERA_FIELD_, nil, new_OrgJodaTimeChronoBasicSingleEraDateTimeField_initWithNSString_(@"AH"));
    JreStrongAssignAndConsume(&OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_15_BASED_, nil, new_OrgJodaTimeChronoIslamicChronology_LeapYearPatternType_initWithInt_withInt_(0, 623158436));
    JreStrongAssignAndConsume(&OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_16_BASED_, nil, new_OrgJodaTimeChronoIslamicChronology_LeapYearPatternType_initWithInt_withInt_(1, 623191204));
    JreStrongAssignAndConsume(&OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_INDIAN_, nil, new_OrgJodaTimeChronoIslamicChronology_LeapYearPatternType_initWithInt_withInt_(2, 690562340));
    JreStrongAssignAndConsume(&OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_HABASH_AL_HASIB_, nil, new_OrgJodaTimeChronoIslamicChronology_LeapYearPatternType_initWithInt_withInt_(3, 153692453));
    JreStrongAssignAndConsume(&OrgJodaTimeChronoIslamicChronology_cCache_, nil, new_JavaUtilConcurrentConcurrentHashMap_init());
    {
      JreStrongAssign(&OrgJodaTimeChronoIslamicChronology_INSTANCE_UTC_, nil, OrgJodaTimeChronoIslamicChronology_getInstanceWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone_get_UTC_()));
    }
    J2OBJC_SET_INITIALIZED(OrgJodaTimeChronoIslamicChronology)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getInstanceUTC", NULL, "Lorg.joda.time.chrono.IslamicChronology;", 0x9, NULL, NULL },
    { "getInstance", NULL, "Lorg.joda.time.chrono.IslamicChronology;", 0x9, NULL, NULL },
    { "getInstanceWithOrgJodaTimeDateTimeZone:", "getInstance", "Lorg.joda.time.chrono.IslamicChronology;", 0x9, NULL, NULL },
    { "getInstanceWithOrgJodaTimeDateTimeZone:withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType:", "getInstance", "Lorg.joda.time.chrono.IslamicChronology;", 0x9, NULL, NULL },
    { "initWithOrgJodaTimeChronology:withId:withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType:", "IslamicChronology", NULL, 0x0, NULL, NULL },
    { "readResolve", NULL, "Ljava.lang.Object;", 0x2, NULL, NULL },
    { "getLeapYearPatternType", NULL, "Lorg.joda.time.chrono.IslamicChronology$LeapYearPatternType;", 0x1, NULL, NULL },
    { "withUTC", NULL, "Lorg.joda.time.Chronology;", 0x1, NULL, NULL },
    { "withZoneWithOrgJodaTimeDateTimeZone:", "withZone", "Lorg.joda.time.Chronology;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "getYearWithLong:", "getYear", "I", 0x0, NULL, NULL },
    { "setYearWithLong:withInt:", "setYear", "J", 0x0, NULL, NULL },
    { "getYearDifferenceWithLong:withLong:", "getYearDifference", "J", 0x0, NULL, NULL },
    { "getTotalMillisByYearMonthWithInt:withInt:", "getTotalMillisByYearMonth", "J", 0x0, NULL, NULL },
    { "getDayOfMonthWithLong:", "getDayOfMonth", "I", 0x0, NULL, NULL },
    { "isLeapYearWithInt:", "isLeapYear", "Z", 0x0, NULL, NULL },
    { "getDaysInYearMax", NULL, "I", 0x0, NULL, NULL },
    { "getDaysInYearWithInt:", "getDaysInYear", "I", 0x0, NULL, NULL },
    { "getDaysInYearMonthWithInt:withInt:", "getDaysInYearMonth", "I", 0x0, NULL, NULL },
    { "getDaysInMonthMax", NULL, "I", 0x0, NULL, NULL },
    { "getDaysInMonthMaxWithInt:", "getDaysInMonthMax", "I", 0x0, NULL, NULL },
    { "getMonthOfYearWithLong:withInt:", "getMonthOfYear", "I", 0x0, NULL, NULL },
    { "getAverageMillisPerYear", NULL, "J", 0x0, NULL, NULL },
    { "getAverageMillisPerYearDividedByTwo", NULL, "J", 0x0, NULL, NULL },
    { "getAverageMillisPerMonth", NULL, "J", 0x0, NULL, NULL },
    { "calculateFirstDayOfYearMillisWithInt:", "calculateFirstDayOfYearMillis", "J", 0x0, NULL, NULL },
    { "getMinYear", NULL, "I", 0x0, NULL, NULL },
    { "getMaxYear", NULL, "I", 0x0, NULL, NULL },
    { "getApproxMillisAtEpochDividedByTwo", NULL, "J", 0x0, NULL, NULL },
    { "assembleWithOrgJodaTimeChronoAssembledChronology_Fields:", "assemble", "V", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoIslamicChronology_serialVersionUID },
    { "AH", "AH", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgJodaTimeChronoIslamicChronology_AH },
    { "ERA_FIELD_", NULL, 0x1a, "Lorg.joda.time.DateTimeField;", &OrgJodaTimeChronoIslamicChronology_ERA_FIELD_, NULL,  },
    { "LEAP_YEAR_15_BASED_", NULL, 0x19, "Lorg.joda.time.chrono.IslamicChronology$LeapYearPatternType;", &OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_15_BASED_, NULL,  },
    { "LEAP_YEAR_16_BASED_", NULL, 0x19, "Lorg.joda.time.chrono.IslamicChronology$LeapYearPatternType;", &OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_16_BASED_, NULL,  },
    { "LEAP_YEAR_INDIAN_", NULL, 0x19, "Lorg.joda.time.chrono.IslamicChronology$LeapYearPatternType;", &OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_INDIAN_, NULL,  },
    { "LEAP_YEAR_HABASH_AL_HASIB_", NULL, 0x19, "Lorg.joda.time.chrono.IslamicChronology$LeapYearPatternType;", &OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_HABASH_AL_HASIB_, NULL,  },
    { "MIN_YEAR", "MIN_YEAR", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgJodaTimeChronoIslamicChronology_MIN_YEAR },
    { "MAX_YEAR", "MAX_YEAR", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgJodaTimeChronoIslamicChronology_MAX_YEAR },
    { "MONTH_PAIR_LENGTH", "MONTH_PAIR_LENGTH", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgJodaTimeChronoIslamicChronology_MONTH_PAIR_LENGTH },
    { "LONG_MONTH_LENGTH", "LONG_MONTH_LENGTH", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgJodaTimeChronoIslamicChronology_LONG_MONTH_LENGTH },
    { "SHORT_MONTH_LENGTH", "SHORT_MONTH_LENGTH", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgJodaTimeChronoIslamicChronology_SHORT_MONTH_LENGTH },
    { "MILLIS_PER_MONTH_PAIR", "MILLIS_PER_MONTH_PAIR", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoIslamicChronology_MILLIS_PER_MONTH_PAIR },
    { "MILLIS_PER_MONTH", "MILLIS_PER_MONTH", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoIslamicChronology_MILLIS_PER_MONTH },
    { "MILLIS_PER_LONG_MONTH", "MILLIS_PER_LONG_MONTH", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoIslamicChronology_MILLIS_PER_LONG_MONTH },
    { "MILLIS_PER_YEAR", "MILLIS_PER_YEAR", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoIslamicChronology_MILLIS_PER_YEAR },
    { "MILLIS_PER_SHORT_YEAR", "MILLIS_PER_SHORT_YEAR", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoIslamicChronology_MILLIS_PER_SHORT_YEAR },
    { "MILLIS_PER_LONG_YEAR", "MILLIS_PER_LONG_YEAR", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoIslamicChronology_MILLIS_PER_LONG_YEAR },
    { "MILLIS_YEAR_1", "MILLIS_YEAR_1", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoIslamicChronology_MILLIS_YEAR_1 },
    { "CYCLE", "CYCLE", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgJodaTimeChronoIslamicChronology_CYCLE },
    { "MILLIS_PER_CYCLE", "MILLIS_PER_CYCLE", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoIslamicChronology_MILLIS_PER_CYCLE },
    { "cCache_", NULL, 0x1a, "Ljava.util.concurrent.ConcurrentHashMap;", &OrgJodaTimeChronoIslamicChronology_cCache_, "Ljava/util/concurrent/ConcurrentHashMap<Lorg/joda/time/DateTimeZone;L[Lorg/joda/time/chrono/IslamicChronology;;>;",  },
    { "INSTANCE_UTC_", NULL, 0x1a, "Lorg.joda.time.chrono.IslamicChronology;", &OrgJodaTimeChronoIslamicChronology_INSTANCE_UTC_, NULL,  },
    { "iLeapYears_", NULL, 0x12, "Lorg.joda.time.chrono.IslamicChronology$LeapYearPatternType;", NULL, NULL,  },
  };
  static const char *inner_classes[] = {"Lorg.joda.time.chrono.IslamicChronology$LeapYearPatternType;"};
  static const J2ObjcClassInfo _OrgJodaTimeChronoIslamicChronology = { 2, "IslamicChronology", "org.joda.time.chrono", NULL, 0x11, 31, methods, 24, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgJodaTimeChronoIslamicChronology;
}

@end

OrgJodaTimeChronoIslamicChronology *OrgJodaTimeChronoIslamicChronology_getInstanceUTC() {
  OrgJodaTimeChronoIslamicChronology_initialize();
  return OrgJodaTimeChronoIslamicChronology_INSTANCE_UTC_;
}

OrgJodaTimeChronoIslamicChronology *OrgJodaTimeChronoIslamicChronology_getInstance() {
  OrgJodaTimeChronoIslamicChronology_initialize();
  return OrgJodaTimeChronoIslamicChronology_getInstanceWithOrgJodaTimeDateTimeZone_withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType_(OrgJodaTimeDateTimeZone_getDefault(), OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_16_BASED_);
}

OrgJodaTimeChronoIslamicChronology *OrgJodaTimeChronoIslamicChronology_getInstanceWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone) {
  OrgJodaTimeChronoIslamicChronology_initialize();
  return OrgJodaTimeChronoIslamicChronology_getInstanceWithOrgJodaTimeDateTimeZone_withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType_(zone, OrgJodaTimeChronoIslamicChronology_LEAP_YEAR_16_BASED_);
}

OrgJodaTimeChronoIslamicChronology *OrgJodaTimeChronoIslamicChronology_getInstanceWithOrgJodaTimeDateTimeZone_withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType_(OrgJodaTimeDateTimeZone *zone, OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *leapYears) {
  OrgJodaTimeChronoIslamicChronology_initialize();
  if (zone == nil) {
    zone = OrgJodaTimeDateTimeZone_getDefault();
  }
  OrgJodaTimeChronoIslamicChronology *chrono;
  IOSObjectArray *chronos = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(OrgJodaTimeChronoIslamicChronology_cCache_)) getWithId:zone];
  if (chronos == nil) {
    chronos = [IOSObjectArray arrayWithLength:4 type:OrgJodaTimeChronoIslamicChronology_class_()];
    IOSObjectArray *oldChronos = [OrgJodaTimeChronoIslamicChronology_cCache_ putIfAbsentWithId:zone withId:chronos];
    if (oldChronos != nil) {
      chronos = oldChronos;
    }
  }
  chrono = IOSObjectArray_Get(nil_chk(chronos), ((OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *) nil_chk(leapYears))->index_);
  if (chrono == nil) {
    @synchronized(chronos) {
      chrono = IOSObjectArray_Get(chronos, leapYears->index_);
      if (chrono == nil) {
        if (zone == OrgJodaTimeDateTimeZone_get_UTC_()) {
          chrono = [new_OrgJodaTimeChronoIslamicChronology_initWithOrgJodaTimeChronology_withId_withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType_(nil, nil, leapYears) autorelease];
          OrgJodaTimeDateTime *lowerLimit = [new_OrgJodaTimeDateTime_initWithInt_withInt_withInt_withInt_withInt_withInt_withInt_withOrgJodaTimeChronology_(1, 1, 1, 0, 0, 0, 0, chrono) autorelease];
          chrono = [new_OrgJodaTimeChronoIslamicChronology_initWithOrgJodaTimeChronology_withId_withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType_(OrgJodaTimeChronoLimitChronology_getInstanceWithOrgJodaTimeChronology_withOrgJodaTimeReadableDateTime_withOrgJodaTimeReadableDateTime_(chrono, lowerLimit, nil), nil, leapYears) autorelease];
        }
        else {
          chrono = OrgJodaTimeChronoIslamicChronology_getInstanceWithOrgJodaTimeDateTimeZone_withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType_(OrgJodaTimeDateTimeZone_get_UTC_(), leapYears);
          chrono = [new_OrgJodaTimeChronoIslamicChronology_initWithOrgJodaTimeChronology_withId_withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType_(OrgJodaTimeChronoZonedChronology_getInstanceWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeZone_(chrono, zone), nil, leapYears) autorelease];
        }
        IOSObjectArray_Set(chronos, leapYears->index_, chrono);
      }
    }
  }
  return chrono;
}

void OrgJodaTimeChronoIslamicChronology_initWithOrgJodaTimeChronology_withId_withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType_(OrgJodaTimeChronoIslamicChronology *self, OrgJodaTimeChronology *base, id param, OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *leapYears) {
  OrgJodaTimeChronoBasicChronology_initWithOrgJodaTimeChronology_withId_withInt_(self, base, param, 4);
  OrgJodaTimeChronoIslamicChronology_set_iLeapYears_(self, leapYears);
}

OrgJodaTimeChronoIslamicChronology *new_OrgJodaTimeChronoIslamicChronology_initWithOrgJodaTimeChronology_withId_withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType_(OrgJodaTimeChronology *base, id param, OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *leapYears) {
  OrgJodaTimeChronoIslamicChronology *self = [OrgJodaTimeChronoIslamicChronology alloc];
  OrgJodaTimeChronoIslamicChronology_initWithOrgJodaTimeChronology_withId_withOrgJodaTimeChronoIslamicChronology_LeapYearPatternType_(self, base, param, leapYears);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeChronoIslamicChronology)

@implementation OrgJodaTimeChronoIslamicChronology_LeapYearPatternType

- (instancetype)initWithInt:(jint)index
                    withInt:(jint)pattern {
  OrgJodaTimeChronoIslamicChronology_LeapYearPatternType_initWithInt_withInt_(self, index, pattern);
  return self;
}

- (jboolean)isLeapYearWithInt:(jint)year {
  jint key = LShift32(1, (year % 30));
  return ((pattern_ & key) > 0);
}

- (id)readResolve {
  switch (index_) {
    case 0:
    return OrgJodaTimeChronoIslamicChronology_get_LEAP_YEAR_15_BASED_();
    case 1:
    return OrgJodaTimeChronoIslamicChronology_get_LEAP_YEAR_16_BASED_();
    case 2:
    return OrgJodaTimeChronoIslamicChronology_get_LEAP_YEAR_INDIAN_();
    case 3:
    return OrgJodaTimeChronoIslamicChronology_get_LEAP_YEAR_HABASH_AL_HASIB_();
    default:
    return self;
  }
}

- (jboolean)isEqual:(id)obj {
  if ([obj isKindOfClass:[OrgJodaTimeChronoIslamicChronology_LeapYearPatternType class]]) {
    return index_ == ((OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *) nil_chk(((OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *) check_class_cast(obj, [OrgJodaTimeChronoIslamicChronology_LeapYearPatternType class]))))->index_;
  }
  return NO;
}

- (NSUInteger)hash {
  return index_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:", "LeapYearPatternType", NULL, 0x0, NULL, NULL },
    { "isLeapYearWithInt:", "isLeapYear", "Z", 0x0, NULL, NULL },
    { "readResolve", NULL, "Ljava.lang.Object;", 0x2, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoIslamicChronology_LeapYearPatternType_serialVersionUID },
    { "index_", NULL, 0x10, "B", NULL, NULL,  },
    { "pattern_", NULL, 0x10, "I", NULL, NULL,  },
  };
  static const J2ObjcClassInfo _OrgJodaTimeChronoIslamicChronology_LeapYearPatternType = { 2, "LeapYearPatternType", "org.joda.time.chrono", "IslamicChronology", 0x9, 5, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeChronoIslamicChronology_LeapYearPatternType;
}

@end

void OrgJodaTimeChronoIslamicChronology_LeapYearPatternType_initWithInt_withInt_(OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *self, jint index, jint pattern) {
  NSObject_init(self);
  self->index_ = (jbyte) index;
  self->pattern_ = pattern;
}

OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *new_OrgJodaTimeChronoIslamicChronology_LeapYearPatternType_initWithInt_withInt_(jint index, jint pattern) {
  OrgJodaTimeChronoIslamicChronology_LeapYearPatternType *self = [OrgJodaTimeChronoIslamicChronology_LeapYearPatternType alloc];
  OrgJodaTimeChronoIslamicChronology_LeapYearPatternType_initWithInt_withInt_(self, index, pattern);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeChronoIslamicChronology_LeapYearPatternType)
