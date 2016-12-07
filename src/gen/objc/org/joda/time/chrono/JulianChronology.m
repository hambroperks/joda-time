//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/Joda-Time/src/main/java/org/joda/time/chrono/JulianChronology.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/ArrayIndexOutOfBoundsException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeConstants.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DateTimeZone.h"
#include "org/joda/time/IllegalFieldValueException.h"
#include "org/joda/time/chrono/AssembledChronology.h"
#include "org/joda/time/chrono/BasicGJChronology.h"
#include "org/joda/time/chrono/JulianChronology.h"
#include "org/joda/time/chrono/ZonedChronology.h"
#include "org/joda/time/field/SkipDateTimeField.h"

@interface OrgJodaTimeChronoJulianChronology ()

/*!
 @brief Serialization singleton
 */
- (id)readResolve;

@end

/*!
 @brief Serialization lock
 */
inline jlong OrgJodaTimeChronoJulianChronology_get_serialVersionUID();
#define OrgJodaTimeChronoJulianChronology_serialVersionUID -8731039522547897247LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeChronoJulianChronology, serialVersionUID, jlong)

inline jlong OrgJodaTimeChronoJulianChronology_get_MILLIS_PER_YEAR();
#define OrgJodaTimeChronoJulianChronology_MILLIS_PER_YEAR 31557600000LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeChronoJulianChronology, MILLIS_PER_YEAR, jlong)

inline jlong OrgJodaTimeChronoJulianChronology_get_MILLIS_PER_MONTH();
#define OrgJodaTimeChronoJulianChronology_MILLIS_PER_MONTH 2629800000LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeChronoJulianChronology, MILLIS_PER_MONTH, jlong)

/*!
 @brief The lowest year that can be fully supported.
 */
inline jint OrgJodaTimeChronoJulianChronology_get_MIN_YEAR();
#define OrgJodaTimeChronoJulianChronology_MIN_YEAR -292269054
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeChronoJulianChronology, MIN_YEAR, jint)

/*!
 @brief The highest year that can be fully supported.
 */
inline jint OrgJodaTimeChronoJulianChronology_get_MAX_YEAR();
#define OrgJodaTimeChronoJulianChronology_MAX_YEAR 292272992
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeChronoJulianChronology, MAX_YEAR, jint)

/*!
 @brief Singleton instance of a UTC JulianChronology
 */
inline OrgJodaTimeChronoJulianChronology *OrgJodaTimeChronoJulianChronology_get_INSTANCE_UTC();
static OrgJodaTimeChronoJulianChronology *OrgJodaTimeChronoJulianChronology_INSTANCE_UTC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeChronoJulianChronology, INSTANCE_UTC, OrgJodaTimeChronoJulianChronology *)

/*!
 @brief Cache of zone to chronology arrays
 */
inline JavaUtilConcurrentConcurrentHashMap *OrgJodaTimeChronoJulianChronology_get_cCache();
static JavaUtilConcurrentConcurrentHashMap *OrgJodaTimeChronoJulianChronology_cCache;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeChronoJulianChronology, cCache, JavaUtilConcurrentConcurrentHashMap *)

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeChronoJulianChronology)

@implementation OrgJodaTimeChronoJulianChronology

+ (jint)adjustYearForSetWithInt:(jint)year {
  return OrgJodaTimeChronoJulianChronology_adjustYearForSetWithInt_(year);
}

+ (OrgJodaTimeChronoJulianChronology *)getInstanceUTC {
  return OrgJodaTimeChronoJulianChronology_getInstanceUTC();
}

+ (OrgJodaTimeChronoJulianChronology *)getInstance {
  return OrgJodaTimeChronoJulianChronology_getInstance();
}

+ (OrgJodaTimeChronoJulianChronology *)getInstanceWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  return OrgJodaTimeChronoJulianChronology_getInstanceWithOrgJodaTimeDateTimeZone_(zone);
}

+ (OrgJodaTimeChronoJulianChronology *)getInstanceWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone
                                                                      withInt:(jint)minDaysInFirstWeek {
  return OrgJodaTimeChronoJulianChronology_getInstanceWithOrgJodaTimeDateTimeZone_withInt_(zone, minDaysInFirstWeek);
}

- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base
                                       withId:(id)param
                                      withInt:(jint)minDaysInFirstWeek {
  OrgJodaTimeChronoJulianChronology_initWithOrgJodaTimeChronology_withId_withInt_(self, base, param, minDaysInFirstWeek);
  return self;
}

- (id)readResolve {
  OrgJodaTimeChronology *base = [self getBase];
  jint minDays = [self getMinimumDaysInFirstWeek];
  minDays = (minDays == 0 ? 4 : minDays);
  return base == nil ? OrgJodaTimeChronoJulianChronology_getInstanceWithOrgJodaTimeDateTimeZone_withInt_(JreLoadStatic(OrgJodaTimeDateTimeZone, UTC), minDays) : OrgJodaTimeChronoJulianChronology_getInstanceWithOrgJodaTimeDateTimeZone_withInt_([base getZone], minDays);
}

- (OrgJodaTimeChronology *)withUTC {
  return OrgJodaTimeChronoJulianChronology_INSTANCE_UTC;
}

- (OrgJodaTimeChronology *)withZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  if (zone == nil) {
    zone = OrgJodaTimeDateTimeZone_getDefault();
  }
  if (zone == [self getZone]) {
    return self;
  }
  return OrgJodaTimeChronoJulianChronology_getInstanceWithOrgJodaTimeDateTimeZone_(zone);
}

- (jlong)getDateMidnightMillisWithInt:(jint)year
                              withInt:(jint)monthOfYear
                              withInt:(jint)dayOfMonth {
  return [super getDateMidnightMillisWithInt:OrgJodaTimeChronoJulianChronology_adjustYearForSetWithInt_(year) withInt:monthOfYear withInt:dayOfMonth];
}

- (jboolean)isLeapYearWithInt:(jint)year {
  return (year & 3) == 0;
}

- (jlong)calculateFirstDayOfYearMillisWithInt:(jint)year {
  jint relativeYear = year - 1968;
  jint leapYears;
  if (relativeYear <= 0) {
    leapYears = JreRShift32((relativeYear + 3), 2);
  }
  else {
    leapYears = JreRShift32(relativeYear, 2);
    if (![self isLeapYearWithInt:year]) {
      leapYears++;
    }
  }
  jlong millis = (relativeYear * 365LL + leapYears) * (jlong) OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY;
  return millis - (366LL + 352) * OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY;
}

- (jint)getMinYear {
  return OrgJodaTimeChronoJulianChronology_MIN_YEAR;
}

- (jint)getMaxYear {
  return OrgJodaTimeChronoJulianChronology_MAX_YEAR;
}

- (jlong)getAverageMillisPerYear {
  return OrgJodaTimeChronoJulianChronology_MILLIS_PER_YEAR;
}

- (jlong)getAverageMillisPerYearDividedByTwo {
  return OrgJodaTimeChronoJulianChronology_MILLIS_PER_YEAR / 2;
}

- (jlong)getAverageMillisPerMonth {
  return OrgJodaTimeChronoJulianChronology_MILLIS_PER_MONTH;
}

- (jlong)getApproxMillisAtEpochDividedByTwo {
  return (1969LL * OrgJodaTimeChronoJulianChronology_MILLIS_PER_YEAR + 352LL * OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY) / 2;
}

- (void)assembleWithOrgJodaTimeChronoAssembledChronology_Fields:(OrgJodaTimeChronoAssembledChronology_Fields *)fields {
  if ([self getBase] == nil) {
    [super assembleWithOrgJodaTimeChronoAssembledChronology_Fields:fields];
    JreStrongAssignAndConsume(&((OrgJodaTimeChronoAssembledChronology_Fields *) nil_chk(fields))->year_, new_OrgJodaTimeFieldSkipDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_(self, fields->year_));
    JreStrongAssignAndConsume(&fields->weekyear_, new_OrgJodaTimeFieldSkipDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_(self, fields->weekyear_));
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x8, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronoJulianChronology;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronoJulianChronology;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronoJulianChronology;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronoJulianChronology;", 0x9, 2, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 5, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronology;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronology;", 0x1, 6, 3, -1, -1, -1, -1 },
    { NULL, "J", 0x0, 7, 8, 9, -1, -1, -1 },
    { NULL, "Z", 0x0, 10, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x0, 11, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 12, 13, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(adjustYearForSetWithInt:);
  methods[1].selector = @selector(getInstanceUTC);
  methods[2].selector = @selector(getInstance);
  methods[3].selector = @selector(getInstanceWithOrgJodaTimeDateTimeZone:);
  methods[4].selector = @selector(getInstanceWithOrgJodaTimeDateTimeZone:withInt:);
  methods[5].selector = @selector(initWithOrgJodaTimeChronology:withId:withInt:);
  methods[6].selector = @selector(readResolve);
  methods[7].selector = @selector(withUTC);
  methods[8].selector = @selector(withZoneWithOrgJodaTimeDateTimeZone:);
  methods[9].selector = @selector(getDateMidnightMillisWithInt:withInt:withInt:);
  methods[10].selector = @selector(isLeapYearWithInt:);
  methods[11].selector = @selector(calculateFirstDayOfYearMillisWithInt:);
  methods[12].selector = @selector(getMinYear);
  methods[13].selector = @selector(getMaxYear);
  methods[14].selector = @selector(getAverageMillisPerYear);
  methods[15].selector = @selector(getAverageMillisPerYearDividedByTwo);
  methods[16].selector = @selector(getAverageMillisPerMonth);
  methods[17].selector = @selector(getApproxMillisAtEpochDividedByTwo);
  methods[18].selector = @selector(assembleWithOrgJodaTimeChronoAssembledChronology_Fields:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeChronoJulianChronology_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "MILLIS_PER_YEAR", "J", .constantValue.asLong = OrgJodaTimeChronoJulianChronology_MILLIS_PER_YEAR, 0x1a, -1, -1, -1, -1 },
    { "MILLIS_PER_MONTH", "J", .constantValue.asLong = OrgJodaTimeChronoJulianChronology_MILLIS_PER_MONTH, 0x1a, -1, -1, -1, -1 },
    { "MIN_YEAR", "I", .constantValue.asInt = OrgJodaTimeChronoJulianChronology_MIN_YEAR, 0x1a, -1, -1, -1, -1 },
    { "MAX_YEAR", "I", .constantValue.asInt = OrgJodaTimeChronoJulianChronology_MAX_YEAR, 0x1a, -1, -1, -1, -1 },
    { "INSTANCE_UTC", "LOrgJodaTimeChronoJulianChronology;", .constantValue.asLong = 0, 0x1a, -1, 14, -1, -1 },
    { "cCache", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0x1a, -1, 15, 16, -1 },
  };
  static const void *ptrTable[] = { "adjustYearForSet", "I", "getInstance", "LOrgJodaTimeDateTimeZone;", "LOrgJodaTimeDateTimeZone;I", "LOrgJodaTimeChronology;LNSObject;I", "withZone", "getDateMidnightMillis", "III", "LJavaLangIllegalArgumentException;", "isLeapYear", "calculateFirstDayOfYearMillis", "assemble", "LOrgJodaTimeChronoAssembledChronology_Fields;", &OrgJodaTimeChronoJulianChronology_INSTANCE_UTC, &OrgJodaTimeChronoJulianChronology_cCache, "Ljava/util/concurrent/ConcurrentHashMap<Lorg/joda/time/DateTimeZone;[Lorg/joda/time/chrono/JulianChronology;>;" };
  static const J2ObjcClassInfo _OrgJodaTimeChronoJulianChronology = { "JulianChronology", "org.joda.time.chrono", ptrTable, methods, fields, 7, 0x11, 19, 7, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeChronoJulianChronology;
}

+ (void)initialize {
  if (self == [OrgJodaTimeChronoJulianChronology class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeChronoJulianChronology_cCache, new_JavaUtilConcurrentConcurrentHashMap_init());
    {
      JreStrongAssign(&OrgJodaTimeChronoJulianChronology_INSTANCE_UTC, OrgJodaTimeChronoJulianChronology_getInstanceWithOrgJodaTimeDateTimeZone_(JreLoadStatic(OrgJodaTimeDateTimeZone, UTC)));
    }
    J2OBJC_SET_INITIALIZED(OrgJodaTimeChronoJulianChronology)
  }
}

@end

jint OrgJodaTimeChronoJulianChronology_adjustYearForSetWithInt_(jint year) {
  OrgJodaTimeChronoJulianChronology_initialize();
  if (year <= 0) {
    if (year == 0) {
      @throw create_OrgJodaTimeIllegalFieldValueException_initWithOrgJodaTimeDateTimeFieldType_withNSNumber_withNSNumber_withNSNumber_(OrgJodaTimeDateTimeFieldType_year(), JavaLangInteger_valueOfWithInt_(year), nil, nil);
    }
    year++;
  }
  return year;
}

OrgJodaTimeChronoJulianChronology *OrgJodaTimeChronoJulianChronology_getInstanceUTC() {
  OrgJodaTimeChronoJulianChronology_initialize();
  return OrgJodaTimeChronoJulianChronology_INSTANCE_UTC;
}

OrgJodaTimeChronoJulianChronology *OrgJodaTimeChronoJulianChronology_getInstance() {
  OrgJodaTimeChronoJulianChronology_initialize();
  return OrgJodaTimeChronoJulianChronology_getInstanceWithOrgJodaTimeDateTimeZone_withInt_(OrgJodaTimeDateTimeZone_getDefault(), 4);
}

OrgJodaTimeChronoJulianChronology *OrgJodaTimeChronoJulianChronology_getInstanceWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone) {
  OrgJodaTimeChronoJulianChronology_initialize();
  return OrgJodaTimeChronoJulianChronology_getInstanceWithOrgJodaTimeDateTimeZone_withInt_(zone, 4);
}

OrgJodaTimeChronoJulianChronology *OrgJodaTimeChronoJulianChronology_getInstanceWithOrgJodaTimeDateTimeZone_withInt_(OrgJodaTimeDateTimeZone *zone, jint minDaysInFirstWeek) {
  OrgJodaTimeChronoJulianChronology_initialize();
  if (zone == nil) {
    zone = OrgJodaTimeDateTimeZone_getDefault();
  }
  OrgJodaTimeChronoJulianChronology *chrono;
  IOSObjectArray *chronos = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(OrgJodaTimeChronoJulianChronology_cCache)) getWithId:zone];
  if (chronos == nil) {
    chronos = [IOSObjectArray arrayWithLength:7 type:OrgJodaTimeChronoJulianChronology_class_()];
    IOSObjectArray *oldChronos = [OrgJodaTimeChronoJulianChronology_cCache putIfAbsentWithId:zone withId:chronos];
    if (oldChronos != nil) {
      chronos = oldChronos;
    }
  }
  @try {
    chrono = IOSObjectArray_Get(chronos, minDaysInFirstWeek - 1);
  }
  @catch (JavaLangArrayIndexOutOfBoundsException *e) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"Invalid min days in first week: ", minDaysInFirstWeek));
  }
  if (chrono == nil) {
    @synchronized(chronos) {
      chrono = IOSObjectArray_Get(chronos, minDaysInFirstWeek - 1);
      if (chrono == nil) {
        if (zone == JreLoadStatic(OrgJodaTimeDateTimeZone, UTC)) {
          chrono = create_OrgJodaTimeChronoJulianChronology_initWithOrgJodaTimeChronology_withId_withInt_(nil, nil, minDaysInFirstWeek);
        }
        else {
          chrono = OrgJodaTimeChronoJulianChronology_getInstanceWithOrgJodaTimeDateTimeZone_withInt_(JreLoadStatic(OrgJodaTimeDateTimeZone, UTC), minDaysInFirstWeek);
          chrono = create_OrgJodaTimeChronoJulianChronology_initWithOrgJodaTimeChronology_withId_withInt_(OrgJodaTimeChronoZonedChronology_getInstanceWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeZone_(chrono, zone), nil, minDaysInFirstWeek);
        }
        IOSObjectArray_Set(chronos, minDaysInFirstWeek - 1, chrono);
      }
    }
  }
  return chrono;
}

void OrgJodaTimeChronoJulianChronology_initWithOrgJodaTimeChronology_withId_withInt_(OrgJodaTimeChronoJulianChronology *self, OrgJodaTimeChronology *base, id param, jint minDaysInFirstWeek) {
  OrgJodaTimeChronoBasicGJChronology_initWithOrgJodaTimeChronology_withId_withInt_(self, base, param, minDaysInFirstWeek);
}

OrgJodaTimeChronoJulianChronology *new_OrgJodaTimeChronoJulianChronology_initWithOrgJodaTimeChronology_withId_withInt_(OrgJodaTimeChronology *base, id param, jint minDaysInFirstWeek) {
  J2OBJC_NEW_IMPL(OrgJodaTimeChronoJulianChronology, initWithOrgJodaTimeChronology_withId_withInt_, base, param, minDaysInFirstWeek)
}

OrgJodaTimeChronoJulianChronology *create_OrgJodaTimeChronoJulianChronology_initWithOrgJodaTimeChronology_withId_withInt_(OrgJodaTimeChronology *base, id param, jint minDaysInFirstWeek) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeChronoJulianChronology, initWithOrgJodaTimeChronology_withId_withInt_, base, param, minDaysInFirstWeek)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeChronoJulianChronology)
