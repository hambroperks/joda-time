//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/YearMonthDay.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/util/Calendar.h"
#include "java/util/Date.h"
#include "java/util/Locale.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateMidnight.h"
#include "org/joda/time/DateTime.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/DateTimeZone.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/Interval.h"
#include "org/joda/time/LocalDate.h"
#include "org/joda/time/ReadablePartial.h"
#include "org/joda/time/ReadablePeriod.h"
#include "org/joda/time/TimeOfDay.h"
#include "org/joda/time/YearMonthDay.h"
#include "org/joda/time/base/AbstractPartial.h"
#include "org/joda/time/base/BasePartial.h"
#include "org/joda/time/chrono/ISOChronology.h"
#include "org/joda/time/field/AbstractPartialFieldProperty.h"
#include "org/joda/time/field/FieldUtils.h"
#include "org/joda/time/format/DateTimeFormatter.h"
#include "org/joda/time/format/ISODateTimeFormat.h"

#define OrgJodaTimeYearMonthDay_serialVersionUID 797544782896179LL

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeYearMonthDay, serialVersionUID, jlong)

static IOSObjectArray *OrgJodaTimeYearMonthDay_FIELD_TYPES_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeYearMonthDay, FIELD_TYPES_, IOSObjectArray *)

#define OrgJodaTimeYearMonthDay_Property_serialVersionUID 5727734012190224363LL

@interface OrgJodaTimeYearMonthDay_Property () {
 @public
  /**
   @brief The partial
   */
  OrgJodaTimeYearMonthDay *iYearMonthDay_;
  /**
   @brief The field index
   */
  jint iFieldIndex_;
}

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeYearMonthDay_Property, iYearMonthDay_, OrgJodaTimeYearMonthDay *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeYearMonthDay_Property, serialVersionUID, jlong)

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeYearMonthDay)

@implementation OrgJodaTimeYearMonthDay

+ (OrgJodaTimeYearMonthDay *)fromCalendarFieldsWithJavaUtilCalendar:(JavaUtilCalendar *)calendar {
  return OrgJodaTimeYearMonthDay_fromCalendarFieldsWithJavaUtilCalendar_(calendar);
}

+ (OrgJodaTimeYearMonthDay *)fromDateFieldsWithJavaUtilDate:(JavaUtilDate *)date {
  return OrgJodaTimeYearMonthDay_fromDateFieldsWithJavaUtilDate_(date);
}

- (instancetype)init {
  OrgJodaTimeYearMonthDay_init(self);
  return self;
}

- (instancetype)initWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  OrgJodaTimeYearMonthDay_initWithOrgJodaTimeDateTimeZone_(self, zone);
  return self;
}

- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology {
  OrgJodaTimeYearMonthDay_initWithOrgJodaTimeChronology_(self, chronology);
  return self;
}

- (instancetype)initWithLong:(jlong)instant {
  OrgJodaTimeYearMonthDay_initWithLong_(self, instant);
  return self;
}

- (instancetype)initWithLong:(jlong)instant
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology {
  OrgJodaTimeYearMonthDay_initWithLong_withOrgJodaTimeChronology_(self, instant, chronology);
  return self;
}

- (instancetype)initWithId:(id)instant {
  OrgJodaTimeYearMonthDay_initWithId_(self, instant);
  return self;
}

- (instancetype)initWithId:(id)instant
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology {
  OrgJodaTimeYearMonthDay_initWithId_withOrgJodaTimeChronology_(self, instant, chronology);
  return self;
}

- (instancetype)initWithInt:(jint)year
                    withInt:(jint)monthOfYear
                    withInt:(jint)dayOfMonth {
  OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_(self, year, monthOfYear, dayOfMonth);
  return self;
}

- (instancetype)initWithInt:(jint)year
                    withInt:(jint)monthOfYear
                    withInt:(jint)dayOfMonth
  withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology {
  OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_withOrgJodaTimeChronology_(self, year, monthOfYear, dayOfMonth, chronology);
  return self;
}

- (instancetype)initWithOrgJodaTimeYearMonthDay:(OrgJodaTimeYearMonthDay *)partial
                                   withIntArray:(IOSIntArray *)values {
  OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(self, partial, values);
  return self;
}

- (instancetype)initWithOrgJodaTimeYearMonthDay:(OrgJodaTimeYearMonthDay *)partial
                      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withOrgJodaTimeChronology_(self, partial, chrono);
  return self;
}

- (jint)size {
  return 3;
}

- (OrgJodaTimeDateTimeField *)getFieldWithInt:(jint)index
                    withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  switch (index) {
    case OrgJodaTimeYearMonthDay_YEAR:
    return [((OrgJodaTimeChronology *) nil_chk(chrono)) year];
    case OrgJodaTimeYearMonthDay_MONTH_OF_YEAR:
    return [((OrgJodaTimeChronology *) nil_chk(chrono)) monthOfYear];
    case OrgJodaTimeYearMonthDay_DAY_OF_MONTH:
    return [((OrgJodaTimeChronology *) nil_chk(chrono)) dayOfMonth];
    default:
    @throw [new_JavaLangIndexOutOfBoundsException_initWithNSString_(JreStrcat("$I", @"Invalid index: ", index)) autorelease];
  }
}

- (OrgJodaTimeDateTimeFieldType *)getFieldTypeWithInt:(jint)index {
  return IOSObjectArray_Get(nil_chk(OrgJodaTimeYearMonthDay_FIELD_TYPES_), index);
}

- (IOSObjectArray *)getFieldTypes {
  return (IOSObjectArray *) check_class_cast([((IOSObjectArray *) nil_chk(OrgJodaTimeYearMonthDay_FIELD_TYPES_)) clone], [IOSObjectArray class]);
}

- (OrgJodaTimeYearMonthDay *)withChronologyRetainFieldsWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)newChronology {
  newChronology = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(newChronology);
  newChronology = [((OrgJodaTimeChronology *) nil_chk(newChronology)) withUTC];
  if (newChronology == [self getChronology]) {
    return self;
  }
  else {
    OrgJodaTimeYearMonthDay *newYearMonthDay = [new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withOrgJodaTimeChronology_(self, newChronology) autorelease];
    [((OrgJodaTimeChronology *) nil_chk(newChronology)) validateWithOrgJodaTimeReadablePartial:newYearMonthDay withIntArray:[self getValues]];
    return newYearMonthDay;
  }
}

- (OrgJodaTimeYearMonthDay *)withFieldWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)fieldType
                                                               withInt:(jint)value {
  jint index = [self indexOfSupportedWithOrgJodaTimeDateTimeFieldType:fieldType];
  if (value == [self getValueWithInt:index]) {
    return self;
  }
  IOSIntArray *newValues = [self getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([self getFieldWithInt:index])) setWithOrgJodaTimeReadablePartial:self withInt:index withIntArray:newValues withInt:value];
  return [new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(self, newValues) autorelease];
}

- (OrgJodaTimeYearMonthDay *)withFieldAddedWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)fieldType
                                                                    withInt:(jint)amount {
  jint index = [self indexOfSupportedWithOrgJodaTimeDurationFieldType:fieldType];
  if (amount == 0) {
    return self;
  }
  IOSIntArray *newValues = [self getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([self getFieldWithInt:index])) addWithOrgJodaTimeReadablePartial:self withInt:index withIntArray:newValues withInt:amount];
  return [new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(self, newValues) autorelease];
}

- (OrgJodaTimeYearMonthDay *)withPeriodAddedWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                                                  withInt:(jint)scalar {
  if (period == nil || scalar == 0) {
    return self;
  }
  IOSIntArray *newValues = [self getValues];
  for (jint i = 0; i < [((id<OrgJodaTimeReadablePeriod>) nil_chk(period)) size]; i++) {
    OrgJodaTimeDurationFieldType *fieldType = [period getFieldTypeWithInt:i];
    jint index = [self indexOfWithOrgJodaTimeDurationFieldType:fieldType];
    if (index >= 0) {
      newValues = [((OrgJodaTimeDateTimeField *) nil_chk([self getFieldWithInt:index])) addWithOrgJodaTimeReadablePartial:self withInt:index withIntArray:newValues withInt:OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([period getValueWithInt:i], scalar)];
    }
  }
  return [new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(self, newValues) autorelease];
}

- (OrgJodaTimeYearMonthDay *)plusWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  return [self withPeriodAddedWithOrgJodaTimeReadablePeriod:period withInt:1];
}

- (OrgJodaTimeYearMonthDay *)plusYearsWithInt:(jint)years {
  return [self withFieldAddedWithOrgJodaTimeDurationFieldType:OrgJodaTimeDurationFieldType_years() withInt:years];
}

- (OrgJodaTimeYearMonthDay *)plusMonthsWithInt:(jint)months {
  return [self withFieldAddedWithOrgJodaTimeDurationFieldType:OrgJodaTimeDurationFieldType_months() withInt:months];
}

- (OrgJodaTimeYearMonthDay *)plusDaysWithInt:(jint)days {
  return [self withFieldAddedWithOrgJodaTimeDurationFieldType:OrgJodaTimeDurationFieldType_days() withInt:days];
}

- (OrgJodaTimeYearMonthDay *)minusWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  return [self withPeriodAddedWithOrgJodaTimeReadablePeriod:period withInt:-1];
}

- (OrgJodaTimeYearMonthDay *)minusYearsWithInt:(jint)years {
  return [self withFieldAddedWithOrgJodaTimeDurationFieldType:OrgJodaTimeDurationFieldType_years() withInt:OrgJodaTimeFieldFieldUtils_safeNegateWithInt_(years)];
}

- (OrgJodaTimeYearMonthDay *)minusMonthsWithInt:(jint)months {
  return [self withFieldAddedWithOrgJodaTimeDurationFieldType:OrgJodaTimeDurationFieldType_months() withInt:OrgJodaTimeFieldFieldUtils_safeNegateWithInt_(months)];
}

- (OrgJodaTimeYearMonthDay *)minusDaysWithInt:(jint)days {
  return [self withFieldAddedWithOrgJodaTimeDurationFieldType:OrgJodaTimeDurationFieldType_days() withInt:OrgJodaTimeFieldFieldUtils_safeNegateWithInt_(days)];
}

- (OrgJodaTimeYearMonthDay_Property *)propertyWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type {
  return [new_OrgJodaTimeYearMonthDay_Property_initWithOrgJodaTimeYearMonthDay_withInt_(self, [self indexOfSupportedWithOrgJodaTimeDateTimeFieldType:type]) autorelease];
}

- (OrgJodaTimeLocalDate *)toLocalDate {
  return [new_OrgJodaTimeLocalDate_initWithInt_withInt_withInt_withOrgJodaTimeChronology_([self getYear], [self getMonthOfYear], [self getDayOfMonth], [self getChronology]) autorelease];
}

- (OrgJodaTimeDateTime *)toDateTimeAtMidnight {
  return [self toDateTimeAtMidnightWithOrgJodaTimeDateTimeZone:nil];
}

- (OrgJodaTimeDateTime *)toDateTimeAtMidnightWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  OrgJodaTimeChronology *chrono = [((OrgJodaTimeChronology *) nil_chk([self getChronology])) withZoneWithOrgJodaTimeDateTimeZone:zone];
  return [new_OrgJodaTimeDateTime_initWithInt_withInt_withInt_withInt_withInt_withInt_withInt_withOrgJodaTimeChronology_([self getYear], [self getMonthOfYear], [self getDayOfMonth], 0, 0, 0, 0, chrono) autorelease];
}

- (OrgJodaTimeDateTime *)toDateTimeAtCurrentTime {
  return [self toDateTimeAtCurrentTimeWithOrgJodaTimeDateTimeZone:nil];
}

- (OrgJodaTimeDateTime *)toDateTimeAtCurrentTimeWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  OrgJodaTimeChronology *chrono = [((OrgJodaTimeChronology *) nil_chk([self getChronology])) withZoneWithOrgJodaTimeDateTimeZone:zone];
  jlong instantMillis = OrgJodaTimeDateTimeUtils_currentTimeMillis();
  jlong resolved = [((OrgJodaTimeChronology *) nil_chk(chrono)) setWithOrgJodaTimeReadablePartial:self withLong:instantMillis];
  return [new_OrgJodaTimeDateTime_initWithLong_withOrgJodaTimeChronology_(resolved, chrono) autorelease];
}

- (OrgJodaTimeDateMidnight *)toDateMidnight {
  return [self toDateMidnightWithOrgJodaTimeDateTimeZone:nil];
}

- (OrgJodaTimeDateMidnight *)toDateMidnightWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  OrgJodaTimeChronology *chrono = [((OrgJodaTimeChronology *) nil_chk([self getChronology])) withZoneWithOrgJodaTimeDateTimeZone:zone];
  return [new_OrgJodaTimeDateMidnight_initWithInt_withInt_withInt_withOrgJodaTimeChronology_([self getYear], [self getMonthOfYear], [self getDayOfMonth], chrono) autorelease];
}

- (OrgJodaTimeDateTime *)toDateTimeWithOrgJodaTimeTimeOfDay:(OrgJodaTimeTimeOfDay *)time {
  return [self toDateTimeWithOrgJodaTimeTimeOfDay:time withOrgJodaTimeDateTimeZone:nil];
}

- (OrgJodaTimeDateTime *)toDateTimeWithOrgJodaTimeTimeOfDay:(OrgJodaTimeTimeOfDay *)time
                                withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  OrgJodaTimeChronology *chrono = [((OrgJodaTimeChronology *) nil_chk([self getChronology])) withZoneWithOrgJodaTimeDateTimeZone:zone];
  jlong instant = OrgJodaTimeDateTimeUtils_currentTimeMillis();
  instant = [((OrgJodaTimeChronology *) nil_chk(chrono)) setWithOrgJodaTimeReadablePartial:self withLong:instant];
  if (time != nil) {
    instant = [chrono setWithOrgJodaTimeReadablePartial:time withLong:instant];
  }
  return [new_OrgJodaTimeDateTime_initWithLong_withOrgJodaTimeChronology_(instant, chrono) autorelease];
}

- (OrgJodaTimeInterval *)toInterval {
  return [self toIntervalWithOrgJodaTimeDateTimeZone:nil];
}

- (OrgJodaTimeInterval *)toIntervalWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  zone = OrgJodaTimeDateTimeUtils_getZoneWithOrgJodaTimeDateTimeZone_(zone);
  return [((OrgJodaTimeDateMidnight *) nil_chk([self toDateMidnightWithOrgJodaTimeDateTimeZone:zone])) toInterval];
}

- (jint)getYear {
  return [self getValueWithInt:OrgJodaTimeYearMonthDay_YEAR];
}

- (jint)getMonthOfYear {
  return [self getValueWithInt:OrgJodaTimeYearMonthDay_MONTH_OF_YEAR];
}

- (jint)getDayOfMonth {
  return [self getValueWithInt:OrgJodaTimeYearMonthDay_DAY_OF_MONTH];
}

- (OrgJodaTimeYearMonthDay *)withYearWithInt:(jint)year {
  IOSIntArray *newValues = [self getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([((OrgJodaTimeChronology *) nil_chk([self getChronology])) year])) setWithOrgJodaTimeReadablePartial:self withInt:OrgJodaTimeYearMonthDay_YEAR withIntArray:newValues withInt:year];
  return [new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(self, newValues) autorelease];
}

- (OrgJodaTimeYearMonthDay *)withMonthOfYearWithInt:(jint)monthOfYear {
  IOSIntArray *newValues = [self getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([((OrgJodaTimeChronology *) nil_chk([self getChronology])) monthOfYear])) setWithOrgJodaTimeReadablePartial:self withInt:OrgJodaTimeYearMonthDay_MONTH_OF_YEAR withIntArray:newValues withInt:monthOfYear];
  return [new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(self, newValues) autorelease];
}

- (OrgJodaTimeYearMonthDay *)withDayOfMonthWithInt:(jint)dayOfMonth {
  IOSIntArray *newValues = [self getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([((OrgJodaTimeChronology *) nil_chk([self getChronology])) dayOfMonth])) setWithOrgJodaTimeReadablePartial:self withInt:OrgJodaTimeYearMonthDay_DAY_OF_MONTH withIntArray:newValues withInt:dayOfMonth];
  return [new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(self, newValues) autorelease];
}

- (OrgJodaTimeYearMonthDay_Property *)year {
  return [new_OrgJodaTimeYearMonthDay_Property_initWithOrgJodaTimeYearMonthDay_withInt_(self, OrgJodaTimeYearMonthDay_YEAR) autorelease];
}

- (OrgJodaTimeYearMonthDay_Property *)monthOfYear {
  return [new_OrgJodaTimeYearMonthDay_Property_initWithOrgJodaTimeYearMonthDay_withInt_(self, OrgJodaTimeYearMonthDay_MONTH_OF_YEAR) autorelease];
}

- (OrgJodaTimeYearMonthDay_Property *)dayOfMonth {
  return [new_OrgJodaTimeYearMonthDay_Property_initWithOrgJodaTimeYearMonthDay_withInt_(self, OrgJodaTimeYearMonthDay_DAY_OF_MONTH) autorelease];
}

- (NSString *)description {
  return [((OrgJodaTimeFormatDateTimeFormatter *) nil_chk(OrgJodaTimeFormatISODateTimeFormat_yearMonthDay())) printWithOrgJodaTimeReadablePartial:self];
}

+ (void)initialize {
  if (self == [OrgJodaTimeYearMonthDay class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeYearMonthDay_FIELD_TYPES_, nil, [IOSObjectArray newArrayWithObjects:(id[]){ OrgJodaTimeDateTimeFieldType_year(), OrgJodaTimeDateTimeFieldType_monthOfYear(), OrgJodaTimeDateTimeFieldType_dayOfMonth() } count:3 type:OrgJodaTimeDateTimeFieldType_class_()]);
    J2OBJC_SET_INITIALIZED(OrgJodaTimeYearMonthDay)
  }
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecated alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromCalendarFieldsWithJavaUtilCalendar:", "fromCalendarFields", "Lorg.joda.time.YearMonthDay;", 0x9, NULL, NULL },
    { "fromDateFieldsWithJavaUtilDate:", "fromDateFields", "Lorg.joda.time.YearMonthDay;", 0x9, NULL, NULL },
    { "init", "YearMonthDay", NULL, 0x1, NULL, NULL },
    { "initWithOrgJodaTimeDateTimeZone:", "YearMonthDay", NULL, 0x1, NULL, NULL },
    { "initWithOrgJodaTimeChronology:", "YearMonthDay", NULL, 0x1, NULL, NULL },
    { "initWithLong:", "YearMonthDay", NULL, 0x1, NULL, NULL },
    { "initWithLong:withOrgJodaTimeChronology:", "YearMonthDay", NULL, 0x1, NULL, NULL },
    { "initWithId:", "YearMonthDay", NULL, 0x1, NULL, NULL },
    { "initWithId:withOrgJodaTimeChronology:", "YearMonthDay", NULL, 0x1, NULL, NULL },
    { "initWithInt:withInt:withInt:", "YearMonthDay", NULL, 0x1, NULL, NULL },
    { "initWithInt:withInt:withInt:withOrgJodaTimeChronology:", "YearMonthDay", NULL, 0x1, NULL, NULL },
    { "initWithOrgJodaTimeYearMonthDay:withIntArray:", "YearMonthDay", NULL, 0x0, NULL, NULL },
    { "initWithOrgJodaTimeYearMonthDay:withOrgJodaTimeChronology:", "YearMonthDay", NULL, 0x0, NULL, NULL },
    { "size", NULL, "I", 0x1, NULL, NULL },
    { "getFieldWithInt:withOrgJodaTimeChronology:", "getField", "Lorg.joda.time.DateTimeField;", 0x4, NULL, NULL },
    { "getFieldTypeWithInt:", "getFieldType", "Lorg.joda.time.DateTimeFieldType;", 0x1, NULL, NULL },
    { "getFieldTypes", NULL, "[Lorg.joda.time.DateTimeFieldType;", 0x1, NULL, NULL },
    { "withChronologyRetainFieldsWithOrgJodaTimeChronology:", "withChronologyRetainFields", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "withFieldWithOrgJodaTimeDateTimeFieldType:withInt:", "withField", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "withFieldAddedWithOrgJodaTimeDurationFieldType:withInt:", "withFieldAdded", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "withPeriodAddedWithOrgJodaTimeReadablePeriod:withInt:", "withPeriodAdded", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "plusWithOrgJodaTimeReadablePeriod:", "plus", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "plusYearsWithInt:", "plusYears", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "plusMonthsWithInt:", "plusMonths", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "plusDaysWithInt:", "plusDays", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "minusWithOrgJodaTimeReadablePeriod:", "minus", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "minusYearsWithInt:", "minusYears", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "minusMonthsWithInt:", "minusMonths", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "minusDaysWithInt:", "minusDays", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "propertyWithOrgJodaTimeDateTimeFieldType:", "property", "Lorg.joda.time.YearMonthDay$Property;", 0x1, NULL, NULL },
    { "toLocalDate", NULL, "Lorg.joda.time.LocalDate;", 0x1, NULL, NULL },
    { "toDateTimeAtMidnight", NULL, "Lorg.joda.time.DateTime;", 0x1, NULL, NULL },
    { "toDateTimeAtMidnightWithOrgJodaTimeDateTimeZone:", "toDateTimeAtMidnight", "Lorg.joda.time.DateTime;", 0x1, NULL, NULL },
    { "toDateTimeAtCurrentTime", NULL, "Lorg.joda.time.DateTime;", 0x1, NULL, NULL },
    { "toDateTimeAtCurrentTimeWithOrgJodaTimeDateTimeZone:", "toDateTimeAtCurrentTime", "Lorg.joda.time.DateTime;", 0x1, NULL, NULL },
    { "toDateMidnight", NULL, "Lorg.joda.time.DateMidnight;", 0x1, NULL, NULL },
    { "toDateMidnightWithOrgJodaTimeDateTimeZone:", "toDateMidnight", "Lorg.joda.time.DateMidnight;", 0x1, NULL, NULL },
    { "toDateTimeWithOrgJodaTimeTimeOfDay:", "toDateTime", "Lorg.joda.time.DateTime;", 0x1, NULL, NULL },
    { "toDateTimeWithOrgJodaTimeTimeOfDay:withOrgJodaTimeDateTimeZone:", "toDateTime", "Lorg.joda.time.DateTime;", 0x1, NULL, NULL },
    { "toInterval", NULL, "Lorg.joda.time.Interval;", 0x1, NULL, NULL },
    { "toIntervalWithOrgJodaTimeDateTimeZone:", "toInterval", "Lorg.joda.time.Interval;", 0x1, NULL, NULL },
    { "getYear", NULL, "I", 0x1, NULL, NULL },
    { "getMonthOfYear", NULL, "I", 0x1, NULL, NULL },
    { "getDayOfMonth", NULL, "I", 0x1, NULL, NULL },
    { "withYearWithInt:", "withYear", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "withMonthOfYearWithInt:", "withMonthOfYear", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "withDayOfMonthWithInt:", "withDayOfMonth", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "year", NULL, "Lorg.joda.time.YearMonthDay$Property;", 0x1, NULL, NULL },
    { "monthOfYear", NULL, "Lorg.joda.time.YearMonthDay$Property;", 0x1, NULL, NULL },
    { "dayOfMonth", NULL, "Lorg.joda.time.YearMonthDay$Property;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeYearMonthDay_serialVersionUID },
    { "FIELD_TYPES_", NULL, 0x1a, "[Lorg.joda.time.DateTimeFieldType;", &OrgJodaTimeYearMonthDay_FIELD_TYPES_, NULL,  },
    { "YEAR", "YEAR", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgJodaTimeYearMonthDay_YEAR },
    { "MONTH_OF_YEAR", "MONTH_OF_YEAR", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgJodaTimeYearMonthDay_MONTH_OF_YEAR },
    { "DAY_OF_MONTH", "DAY_OF_MONTH", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgJodaTimeYearMonthDay_DAY_OF_MONTH },
  };
  static const char *inner_classes[] = {"Lorg.joda.time.YearMonthDay$Property;"};
  static const J2ObjcClassInfo _OrgJodaTimeYearMonthDay = { 2, "YearMonthDay", "org.joda.time", NULL, 0x11, 51, methods, 5, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgJodaTimeYearMonthDay;
}

@end

OrgJodaTimeYearMonthDay *OrgJodaTimeYearMonthDay_fromCalendarFieldsWithJavaUtilCalendar_(JavaUtilCalendar *calendar) {
  OrgJodaTimeYearMonthDay_initialize();
  if (calendar == nil) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"The calendar must not be null") autorelease];
  }
  return [new_OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_([((JavaUtilCalendar *) nil_chk(calendar)) getWithInt:JavaUtilCalendar_YEAR], [calendar getWithInt:JavaUtilCalendar_MONTH] + 1, [calendar getWithInt:JavaUtilCalendar_DAY_OF_MONTH]) autorelease];
}

OrgJodaTimeYearMonthDay *OrgJodaTimeYearMonthDay_fromDateFieldsWithJavaUtilDate_(JavaUtilDate *date) {
  OrgJodaTimeYearMonthDay_initialize();
  if (date == nil) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"The date must not be null") autorelease];
  }
  return [new_OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_([((JavaUtilDate *) nil_chk(date)) getYear] + 1900, [date getMonth] + 1, [date getDate]) autorelease];
}

void OrgJodaTimeYearMonthDay_init(OrgJodaTimeYearMonthDay *self) {
  OrgJodaTimeBaseBasePartial_init(self);
}

OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_init() {
  OrgJodaTimeYearMonthDay *self = [OrgJodaTimeYearMonthDay alloc];
  OrgJodaTimeYearMonthDay_init(self);
  return self;
}

void OrgJodaTimeYearMonthDay_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeYearMonthDay *self, OrgJodaTimeDateTimeZone *zone) {
  OrgJodaTimeBaseBasePartial_initWithOrgJodaTimeChronology_(self, OrgJodaTimeChronoISOChronology_getInstanceWithOrgJodaTimeDateTimeZone_(zone));
}

OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone) {
  OrgJodaTimeYearMonthDay *self = [OrgJodaTimeYearMonthDay alloc];
  OrgJodaTimeYearMonthDay_initWithOrgJodaTimeDateTimeZone_(self, zone);
  return self;
}

void OrgJodaTimeYearMonthDay_initWithOrgJodaTimeChronology_(OrgJodaTimeYearMonthDay *self, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeBaseBasePartial_initWithOrgJodaTimeChronology_(self, chronology);
}

OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeChronology_(OrgJodaTimeChronology *chronology) {
  OrgJodaTimeYearMonthDay *self = [OrgJodaTimeYearMonthDay alloc];
  OrgJodaTimeYearMonthDay_initWithOrgJodaTimeChronology_(self, chronology);
  return self;
}

void OrgJodaTimeYearMonthDay_initWithLong_(OrgJodaTimeYearMonthDay *self, jlong instant) {
  OrgJodaTimeBaseBasePartial_initWithLong_(self, instant);
}

OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithLong_(jlong instant) {
  OrgJodaTimeYearMonthDay *self = [OrgJodaTimeYearMonthDay alloc];
  OrgJodaTimeYearMonthDay_initWithLong_(self, instant);
  return self;
}

void OrgJodaTimeYearMonthDay_initWithLong_withOrgJodaTimeChronology_(OrgJodaTimeYearMonthDay *self, jlong instant, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeBaseBasePartial_initWithLong_withOrgJodaTimeChronology_(self, instant, chronology);
}

OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithLong_withOrgJodaTimeChronology_(jlong instant, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeYearMonthDay *self = [OrgJodaTimeYearMonthDay alloc];
  OrgJodaTimeYearMonthDay_initWithLong_withOrgJodaTimeChronology_(self, instant, chronology);
  return self;
}

void OrgJodaTimeYearMonthDay_initWithId_(OrgJodaTimeYearMonthDay *self, id instant) {
  OrgJodaTimeBaseBasePartial_initWithId_withOrgJodaTimeChronology_withOrgJodaTimeFormatDateTimeFormatter_(self, instant, nil, OrgJodaTimeFormatISODateTimeFormat_dateOptionalTimeParser());
}

OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithId_(id instant) {
  OrgJodaTimeYearMonthDay *self = [OrgJodaTimeYearMonthDay alloc];
  OrgJodaTimeYearMonthDay_initWithId_(self, instant);
  return self;
}

void OrgJodaTimeYearMonthDay_initWithId_withOrgJodaTimeChronology_(OrgJodaTimeYearMonthDay *self, id instant, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeBaseBasePartial_initWithId_withOrgJodaTimeChronology_withOrgJodaTimeFormatDateTimeFormatter_(self, instant, OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(chronology), OrgJodaTimeFormatISODateTimeFormat_dateOptionalTimeParser());
}

OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithId_withOrgJodaTimeChronology_(id instant, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeYearMonthDay *self = [OrgJodaTimeYearMonthDay alloc];
  OrgJodaTimeYearMonthDay_initWithId_withOrgJodaTimeChronology_(self, instant, chronology);
  return self;
}

void OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_(OrgJodaTimeYearMonthDay *self, jint year, jint monthOfYear, jint dayOfMonth) {
  OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_withOrgJodaTimeChronology_(self, year, monthOfYear, dayOfMonth, nil);
}

OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_(jint year, jint monthOfYear, jint dayOfMonth) {
  OrgJodaTimeYearMonthDay *self = [OrgJodaTimeYearMonthDay alloc];
  OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_(self, year, monthOfYear, dayOfMonth);
  return self;
}

void OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_withOrgJodaTimeChronology_(OrgJodaTimeYearMonthDay *self, jint year, jint monthOfYear, jint dayOfMonth, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeBaseBasePartial_initWithIntArray_withOrgJodaTimeChronology_(self, [IOSIntArray arrayWithInts:(jint[]){ year, monthOfYear, dayOfMonth } count:3], chronology);
}

OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_withOrgJodaTimeChronology_(jint year, jint monthOfYear, jint dayOfMonth, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeYearMonthDay *self = [OrgJodaTimeYearMonthDay alloc];
  OrgJodaTimeYearMonthDay_initWithInt_withInt_withInt_withOrgJodaTimeChronology_(self, year, monthOfYear, dayOfMonth, chronology);
  return self;
}

void OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(OrgJodaTimeYearMonthDay *self, OrgJodaTimeYearMonthDay *partial, IOSIntArray *values) {
  OrgJodaTimeBaseBasePartial_initWithOrgJodaTimeBaseBasePartial_withIntArray_(self, partial, values);
}

OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(OrgJodaTimeYearMonthDay *partial, IOSIntArray *values) {
  OrgJodaTimeYearMonthDay *self = [OrgJodaTimeYearMonthDay alloc];
  OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(self, partial, values);
  return self;
}

void OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withOrgJodaTimeChronology_(OrgJodaTimeYearMonthDay *self, OrgJodaTimeYearMonthDay *partial, OrgJodaTimeChronology *chrono) {
  OrgJodaTimeBaseBasePartial_initWithOrgJodaTimeBaseBasePartial_withOrgJodaTimeChronology_(self, partial, chrono);
}

OrgJodaTimeYearMonthDay *new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withOrgJodaTimeChronology_(OrgJodaTimeYearMonthDay *partial, OrgJodaTimeChronology *chrono) {
  OrgJodaTimeYearMonthDay *self = [OrgJodaTimeYearMonthDay alloc];
  OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withOrgJodaTimeChronology_(self, partial, chrono);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeYearMonthDay)

@implementation OrgJodaTimeYearMonthDay_Property

- (instancetype)initWithOrgJodaTimeYearMonthDay:(OrgJodaTimeYearMonthDay *)partial
                                        withInt:(jint)fieldIndex {
  OrgJodaTimeYearMonthDay_Property_initWithOrgJodaTimeYearMonthDay_withInt_(self, partial, fieldIndex);
  return self;
}

- (OrgJodaTimeDateTimeField *)getField {
  return [((OrgJodaTimeYearMonthDay *) nil_chk(iYearMonthDay_)) getFieldWithInt:iFieldIndex_];
}

- (id<OrgJodaTimeReadablePartial>)getReadablePartial {
  return iYearMonthDay_;
}

- (OrgJodaTimeYearMonthDay *)getYearMonthDay {
  return iYearMonthDay_;
}

- (jint)get {
  return [((OrgJodaTimeYearMonthDay *) nil_chk(iYearMonthDay_)) getValueWithInt:iFieldIndex_];
}

- (OrgJodaTimeYearMonthDay *)addToCopyWithInt:(jint)valueToAdd {
  IOSIntArray *newValues = [((OrgJodaTimeYearMonthDay *) nil_chk(iYearMonthDay_)) getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) addWithOrgJodaTimeReadablePartial:iYearMonthDay_ withInt:iFieldIndex_ withIntArray:newValues withInt:valueToAdd];
  return [new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(iYearMonthDay_, newValues) autorelease];
}

- (OrgJodaTimeYearMonthDay *)addWrapFieldToCopyWithInt:(jint)valueToAdd {
  IOSIntArray *newValues = [((OrgJodaTimeYearMonthDay *) nil_chk(iYearMonthDay_)) getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) addWrapFieldWithOrgJodaTimeReadablePartial:iYearMonthDay_ withInt:iFieldIndex_ withIntArray:newValues withInt:valueToAdd];
  return [new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(iYearMonthDay_, newValues) autorelease];
}

- (OrgJodaTimeYearMonthDay *)setCopyWithInt:(jint)value {
  IOSIntArray *newValues = [((OrgJodaTimeYearMonthDay *) nil_chk(iYearMonthDay_)) getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) setWithOrgJodaTimeReadablePartial:iYearMonthDay_ withInt:iFieldIndex_ withIntArray:newValues withInt:value];
  return [new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(iYearMonthDay_, newValues) autorelease];
}

- (OrgJodaTimeYearMonthDay *)setCopyWithNSString:(NSString *)text
                              withJavaUtilLocale:(JavaUtilLocale *)locale {
  IOSIntArray *newValues = [((OrgJodaTimeYearMonthDay *) nil_chk(iYearMonthDay_)) getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) setWithOrgJodaTimeReadablePartial:iYearMonthDay_ withInt:iFieldIndex_ withIntArray:newValues withNSString:text withJavaUtilLocale:locale];
  return [new_OrgJodaTimeYearMonthDay_initWithOrgJodaTimeYearMonthDay_withIntArray_(iYearMonthDay_, newValues) autorelease];
}

- (OrgJodaTimeYearMonthDay *)setCopyWithNSString:(NSString *)text {
  return [self setCopyWithNSString:text withJavaUtilLocale:nil];
}

- (OrgJodaTimeYearMonthDay *)withMaximumValue {
  return [self setCopyWithInt:[self getMaximumValue]];
}

- (OrgJodaTimeYearMonthDay *)withMinimumValue {
  return [self setCopyWithInt:[self getMinimumValue]];
}

- (void)dealloc {
  RELEASE_(iYearMonthDay_);
  [super dealloc];
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecated alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgJodaTimeYearMonthDay:withInt:", "Property", NULL, 0x0, NULL, NULL },
    { "getField", NULL, "Lorg.joda.time.DateTimeField;", 0x1, NULL, NULL },
    { "getReadablePartial", NULL, "Lorg.joda.time.ReadablePartial;", 0x4, NULL, NULL },
    { "getYearMonthDay", NULL, "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "get", NULL, "I", 0x1, NULL, NULL },
    { "addToCopyWithInt:", "addToCopy", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "addWrapFieldToCopyWithInt:", "addWrapFieldToCopy", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "setCopyWithInt:", "setCopy", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "setCopyWithNSString:withJavaUtilLocale:", "setCopy", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "setCopyWithNSString:", "setCopy", "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "withMaximumValue", NULL, "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
    { "withMinimumValue", NULL, "Lorg.joda.time.YearMonthDay;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeYearMonthDay_Property_serialVersionUID },
    { "iYearMonthDay_", NULL, 0x12, "Lorg.joda.time.YearMonthDay;", NULL, NULL,  },
    { "iFieldIndex_", NULL, 0x12, "I", NULL, NULL,  },
  };
  static const J2ObjcClassInfo _OrgJodaTimeYearMonthDay_Property = { 2, "Property", "org.joda.time", "YearMonthDay", 0x9, 12, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeYearMonthDay_Property;
}

@end

void OrgJodaTimeYearMonthDay_Property_initWithOrgJodaTimeYearMonthDay_withInt_(OrgJodaTimeYearMonthDay_Property *self, OrgJodaTimeYearMonthDay *partial, jint fieldIndex) {
  OrgJodaTimeFieldAbstractPartialFieldProperty_init(self);
  OrgJodaTimeYearMonthDay_Property_set_iYearMonthDay_(self, partial);
  self->iFieldIndex_ = fieldIndex;
}

OrgJodaTimeYearMonthDay_Property *new_OrgJodaTimeYearMonthDay_Property_initWithOrgJodaTimeYearMonthDay_withInt_(OrgJodaTimeYearMonthDay *partial, jint fieldIndex) {
  OrgJodaTimeYearMonthDay_Property *self = [OrgJodaTimeYearMonthDay_Property alloc];
  OrgJodaTimeYearMonthDay_Property_initWithOrgJodaTimeYearMonthDay_withInt_(self, partial, fieldIndex);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeYearMonthDay_Property)
