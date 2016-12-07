//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/Joda-Time/src/main/java/org/joda/time/YearMonth.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Calendar.h"
#include "java/util/Date.h"
#include "java/util/Locale.h"
#include "org/joda/convert/FromString.h"
#include "org/joda/convert/ToString.h"
#include "org/joda/time/Chronology.h"
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
#include "org/joda/time/YearMonth.h"
#include "org/joda/time/base/BasePartial.h"
#include "org/joda/time/chrono/ISOChronology.h"
#include "org/joda/time/field/AbstractPartialFieldProperty.h"
#include "org/joda/time/field/FieldUtils.h"
#include "org/joda/time/format/DateTimeFormat.h"
#include "org/joda/time/format/DateTimeFormatter.h"
#include "org/joda/time/format/ISODateTimeFormat.h"

@interface OrgJodaTimeYearMonth ()

/*!
 @brief Handle broken serialization from other tools.
 @return the resolved object, not null
 */
- (id)readResolve;

@end

/*!
 @brief Serialization version
 */
inline jlong OrgJodaTimeYearMonth_get_serialVersionUID();
#define OrgJodaTimeYearMonth_serialVersionUID 797544782896179LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeYearMonth, serialVersionUID, jlong)

/*!
 @brief The singleton set of field types
 */
inline IOSObjectArray *OrgJodaTimeYearMonth_get_FIELD_TYPES();
static IOSObjectArray *OrgJodaTimeYearMonth_FIELD_TYPES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeYearMonth, FIELD_TYPES, IOSObjectArray *)

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeYearMonth__Annotations$0();

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeYearMonth__Annotations$1();

@interface OrgJodaTimeYearMonth_Property () {
 @public
  /*!
   @brief The partial
   */
  OrgJodaTimeYearMonth *iBase_;
  /*!
   @brief The field index
   */
  jint iFieldIndex_;
}

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeYearMonth_Property, iBase_, OrgJodaTimeYearMonth *)

/*!
 @brief Serialization version
 */
inline jlong OrgJodaTimeYearMonth_Property_get_serialVersionUID();
#define OrgJodaTimeYearMonth_Property_serialVersionUID 5727734012190224363LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeYearMonth_Property, serialVersionUID, jlong)

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeYearMonth)

@implementation OrgJodaTimeYearMonth

+ (OrgJodaTimeYearMonth *)now {
  return OrgJodaTimeYearMonth_now();
}

+ (OrgJodaTimeYearMonth *)nowWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  return OrgJodaTimeYearMonth_nowWithOrgJodaTimeDateTimeZone_(zone);
}

+ (OrgJodaTimeYearMonth *)nowWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology {
  return OrgJodaTimeYearMonth_nowWithOrgJodaTimeChronology_(chronology);
}

+ (OrgJodaTimeYearMonth *)parseWithNSString:(NSString *)str {
  return OrgJodaTimeYearMonth_parseWithNSString_(str);
}

+ (OrgJodaTimeYearMonth *)parseWithNSString:(NSString *)str
     withOrgJodaTimeFormatDateTimeFormatter:(OrgJodaTimeFormatDateTimeFormatter *)formatter {
  return OrgJodaTimeYearMonth_parseWithNSString_withOrgJodaTimeFormatDateTimeFormatter_(str, formatter);
}

+ (OrgJodaTimeYearMonth *)fromCalendarFieldsWithJavaUtilCalendar:(JavaUtilCalendar *)calendar {
  return OrgJodaTimeYearMonth_fromCalendarFieldsWithJavaUtilCalendar_(calendar);
}

+ (OrgJodaTimeYearMonth *)fromDateFieldsWithJavaUtilDate:(JavaUtilDate *)date {
  return OrgJodaTimeYearMonth_fromDateFieldsWithJavaUtilDate_(date);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeYearMonth_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  OrgJodaTimeYearMonth_initWithOrgJodaTimeDateTimeZone_(self, zone);
  return self;
}

- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology {
  OrgJodaTimeYearMonth_initWithOrgJodaTimeChronology_(self, chronology);
  return self;
}

- (instancetype)initWithLong:(jlong)instant {
  OrgJodaTimeYearMonth_initWithLong_(self, instant);
  return self;
}

- (instancetype)initWithLong:(jlong)instant
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology {
  OrgJodaTimeYearMonth_initWithLong_withOrgJodaTimeChronology_(self, instant, chronology);
  return self;
}

- (instancetype)initWithId:(id)instant {
  OrgJodaTimeYearMonth_initWithId_(self, instant);
  return self;
}

- (instancetype)initWithId:(id)instant
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology {
  OrgJodaTimeYearMonth_initWithId_withOrgJodaTimeChronology_(self, instant, chronology);
  return self;
}

- (instancetype)initWithInt:(jint)year
                    withInt:(jint)monthOfYear {
  OrgJodaTimeYearMonth_initWithInt_withInt_(self, year, monthOfYear);
  return self;
}

- (instancetype)initWithInt:(jint)year
                    withInt:(jint)monthOfYear
  withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology {
  OrgJodaTimeYearMonth_initWithInt_withInt_withOrgJodaTimeChronology_(self, year, monthOfYear, chronology);
  return self;
}

- (instancetype)initWithOrgJodaTimeYearMonth:(OrgJodaTimeYearMonth *)partial
                                withIntArray:(IOSIntArray *)values {
  OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withIntArray_(self, partial, values);
  return self;
}

- (instancetype)initWithOrgJodaTimeYearMonth:(OrgJodaTimeYearMonth *)partial
                   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withOrgJodaTimeChronology_(self, partial, chrono);
  return self;
}

- (id)readResolve {
  if ([((OrgJodaTimeDateTimeZone *) nil_chk(JreLoadStatic(OrgJodaTimeDateTimeZone, UTC))) isEqual:[((OrgJodaTimeChronology *) nil_chk([self getChronology])) getZone]] == false) {
    return create_OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withOrgJodaTimeChronology_(self, [((OrgJodaTimeChronology *) nil_chk([self getChronology])) withUTC]);
  }
  return self;
}

- (jint)size {
  return 2;
}

- (OrgJodaTimeDateTimeField *)getFieldWithInt:(jint)index
                    withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  switch (index) {
    case OrgJodaTimeYearMonth_YEAR:
    return [((OrgJodaTimeChronology *) nil_chk(chrono)) year];
    case OrgJodaTimeYearMonth_MONTH_OF_YEAR:
    return [((OrgJodaTimeChronology *) nil_chk(chrono)) monthOfYear];
    default:
    @throw create_JavaLangIndexOutOfBoundsException_initWithNSString_(JreStrcat("$I", @"Invalid index: ", index));
  }
}

- (OrgJodaTimeDateTimeFieldType *)getFieldTypeWithInt:(jint)index {
  return IOSObjectArray_Get(nil_chk(OrgJodaTimeYearMonth_FIELD_TYPES), index);
}

- (IOSObjectArray *)getFieldTypes {
  return [((IOSObjectArray *) nil_chk(OrgJodaTimeYearMonth_FIELD_TYPES)) clone];
}

- (OrgJodaTimeYearMonth *)withChronologyRetainFieldsWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)newChronology {
  newChronology = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(newChronology);
  newChronology = [((OrgJodaTimeChronology *) nil_chk(newChronology)) withUTC];
  if (newChronology == [self getChronology]) {
    return self;
  }
  else {
    OrgJodaTimeYearMonth *newYearMonth = create_OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withOrgJodaTimeChronology_(self, newChronology);
    [((OrgJodaTimeChronology *) nil_chk(newChronology)) validateWithOrgJodaTimeReadablePartial:newYearMonth withIntArray:[self getValues]];
    return newYearMonth;
  }
}

- (OrgJodaTimeYearMonth *)withFieldWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)fieldType
                                                            withInt:(jint)value {
  jint index = [self indexOfSupportedWithOrgJodaTimeDateTimeFieldType:fieldType];
  if (value == [self getValueWithInt:index]) {
    return self;
  }
  IOSIntArray *newValues = [self getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([self getFieldWithInt:index])) setWithOrgJodaTimeReadablePartial:self withInt:index withIntArray:newValues withInt:value];
  return create_OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withIntArray_(self, newValues);
}

- (OrgJodaTimeYearMonth *)withFieldAddedWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)fieldType
                                                                 withInt:(jint)amount {
  jint index = [self indexOfSupportedWithOrgJodaTimeDurationFieldType:fieldType];
  if (amount == 0) {
    return self;
  }
  IOSIntArray *newValues = [self getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([self getFieldWithInt:index])) addWithOrgJodaTimeReadablePartial:self withInt:index withIntArray:newValues withInt:amount];
  return create_OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withIntArray_(self, newValues);
}

- (OrgJodaTimeYearMonth *)withPeriodAddedWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                                               withInt:(jint)scalar {
  if (period == nil || scalar == 0) {
    return self;
  }
  IOSIntArray *newValues = [self getValues];
  for (jint i = 0; i < [period size]; i++) {
    OrgJodaTimeDurationFieldType *fieldType = [period getFieldTypeWithInt:i];
    jint index = [self indexOfWithOrgJodaTimeDurationFieldType:fieldType];
    if (index >= 0) {
      newValues = [((OrgJodaTimeDateTimeField *) nil_chk([self getFieldWithInt:index])) addWithOrgJodaTimeReadablePartial:self withInt:index withIntArray:newValues withInt:OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([period getValueWithInt:i], scalar)];
    }
  }
  return create_OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withIntArray_(self, newValues);
}

- (OrgJodaTimeYearMonth *)plusWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  return [self withPeriodAddedWithOrgJodaTimeReadablePeriod:period withInt:1];
}

- (OrgJodaTimeYearMonth *)plusYearsWithInt:(jint)years {
  return [self withFieldAddedWithOrgJodaTimeDurationFieldType:OrgJodaTimeDurationFieldType_years() withInt:years];
}

- (OrgJodaTimeYearMonth *)plusMonthsWithInt:(jint)months {
  return [self withFieldAddedWithOrgJodaTimeDurationFieldType:OrgJodaTimeDurationFieldType_months() withInt:months];
}

- (OrgJodaTimeYearMonth *)minusWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  return [self withPeriodAddedWithOrgJodaTimeReadablePeriod:period withInt:-1];
}

- (OrgJodaTimeYearMonth *)minusYearsWithInt:(jint)years {
  return [self withFieldAddedWithOrgJodaTimeDurationFieldType:OrgJodaTimeDurationFieldType_years() withInt:OrgJodaTimeFieldFieldUtils_safeNegateWithInt_(years)];
}

- (OrgJodaTimeYearMonth *)minusMonthsWithInt:(jint)months {
  return [self withFieldAddedWithOrgJodaTimeDurationFieldType:OrgJodaTimeDurationFieldType_months() withInt:OrgJodaTimeFieldFieldUtils_safeNegateWithInt_(months)];
}

- (OrgJodaTimeLocalDate *)toLocalDateWithInt:(jint)dayOfMonth {
  return create_OrgJodaTimeLocalDate_initWithInt_withInt_withInt_withOrgJodaTimeChronology_([self getYear], [self getMonthOfYear], dayOfMonth, [self getChronology]);
}

- (OrgJodaTimeInterval *)toInterval {
  return [self toIntervalWithOrgJodaTimeDateTimeZone:nil];
}

- (OrgJodaTimeInterval *)toIntervalWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  zone = OrgJodaTimeDateTimeUtils_getZoneWithOrgJodaTimeDateTimeZone_(zone);
  OrgJodaTimeDateTime *start = [((OrgJodaTimeLocalDate *) nil_chk([self toLocalDateWithInt:1])) toDateTimeAtStartOfDayWithOrgJodaTimeDateTimeZone:zone];
  OrgJodaTimeDateTime *end = [((OrgJodaTimeLocalDate *) nil_chk([((OrgJodaTimeYearMonth *) nil_chk([self plusMonthsWithInt:1])) toLocalDateWithInt:1])) toDateTimeAtStartOfDayWithOrgJodaTimeDateTimeZone:zone];
  return create_OrgJodaTimeInterval_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(start, end);
}

- (jint)getYear {
  return [self getValueWithInt:OrgJodaTimeYearMonth_YEAR];
}

- (jint)getMonthOfYear {
  return [self getValueWithInt:OrgJodaTimeYearMonth_MONTH_OF_YEAR];
}

- (OrgJodaTimeYearMonth *)withYearWithInt:(jint)year {
  IOSIntArray *newValues = [self getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([((OrgJodaTimeChronology *) nil_chk([self getChronology])) year])) setWithOrgJodaTimeReadablePartial:self withInt:OrgJodaTimeYearMonth_YEAR withIntArray:newValues withInt:year];
  return create_OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withIntArray_(self, newValues);
}

- (OrgJodaTimeYearMonth *)withMonthOfYearWithInt:(jint)monthOfYear {
  IOSIntArray *newValues = [self getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([((OrgJodaTimeChronology *) nil_chk([self getChronology])) monthOfYear])) setWithOrgJodaTimeReadablePartial:self withInt:OrgJodaTimeYearMonth_MONTH_OF_YEAR withIntArray:newValues withInt:monthOfYear];
  return create_OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withIntArray_(self, newValues);
}

- (OrgJodaTimeYearMonth_Property *)propertyWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type {
  return create_OrgJodaTimeYearMonth_Property_initWithOrgJodaTimeYearMonth_withInt_(self, [self indexOfSupportedWithOrgJodaTimeDateTimeFieldType:type]);
}

- (OrgJodaTimeYearMonth_Property *)year {
  return create_OrgJodaTimeYearMonth_Property_initWithOrgJodaTimeYearMonth_withInt_(self, OrgJodaTimeYearMonth_YEAR);
}

- (OrgJodaTimeYearMonth_Property *)monthOfYear {
  return create_OrgJodaTimeYearMonth_Property_initWithOrgJodaTimeYearMonth_withInt_(self, OrgJodaTimeYearMonth_MONTH_OF_YEAR);
}

- (NSString *)description {
  return [((OrgJodaTimeFormatDateTimeFormatter *) nil_chk(OrgJodaTimeFormatISODateTimeFormat_yearMonth())) printWithOrgJodaTimeReadablePartial:self];
}

- (NSString *)toStringWithNSString:(NSString *)pattern {
  if (pattern == nil) {
    return [self description];
  }
  return [((OrgJodaTimeFormatDateTimeFormatter *) nil_chk(OrgJodaTimeFormatDateTimeFormat_forPatternWithNSString_(pattern))) printWithOrgJodaTimeReadablePartial:self];
}

- (NSString *)toStringWithNSString:(NSString *)pattern
                withJavaUtilLocale:(JavaUtilLocale *)locale {
  if (pattern == nil) {
    return [self description];
  }
  return [((OrgJodaTimeFormatDateTimeFormatter *) nil_chk([((OrgJodaTimeFormatDateTimeFormatter *) nil_chk(OrgJodaTimeFormatDateTimeFormat_forPatternWithNSString_(pattern))) withLocaleWithJavaUtilLocale:locale])) printWithOrgJodaTimeReadablePartial:self];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgJodaTimeYearMonth;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x9, 3, 4, -1, -1, 5, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x9, 3, 6, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x9, 7, 8, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x9, 9, 10, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 11, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 12, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 13, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 14, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 15, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 16, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 17, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 18, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTimeField;", 0x4, 19, 20, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTimeFieldType;", 0x1, 21, 22, -1, -1, -1, -1 },
    { NULL, "[LOrgJodaTimeDateTimeFieldType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 23, 2, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 24, 25, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 26, 27, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 28, 29, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 30, 31, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 32, 22, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 33, 22, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 34, 31, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 35, 22, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 36, 22, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeLocalDate;", 0x1, 37, 22, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeInterval;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeInterval;", 0x1, 38, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 39, 22, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 40, 22, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth_Property;", 0x1, 41, 42, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth_Property;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth_Property;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 43, -1, -1, -1, 44, -1 },
    { NULL, "LNSString;", 0x1, 43, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 43, 45, 46, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(now);
  methods[1].selector = @selector(nowWithOrgJodaTimeDateTimeZone:);
  methods[2].selector = @selector(nowWithOrgJodaTimeChronology:);
  methods[3].selector = @selector(parseWithNSString:);
  methods[4].selector = @selector(parseWithNSString:withOrgJodaTimeFormatDateTimeFormatter:);
  methods[5].selector = @selector(fromCalendarFieldsWithJavaUtilCalendar:);
  methods[6].selector = @selector(fromDateFieldsWithJavaUtilDate:);
  methods[7].selector = @selector(init);
  methods[8].selector = @selector(initWithOrgJodaTimeDateTimeZone:);
  methods[9].selector = @selector(initWithOrgJodaTimeChronology:);
  methods[10].selector = @selector(initWithLong:);
  methods[11].selector = @selector(initWithLong:withOrgJodaTimeChronology:);
  methods[12].selector = @selector(initWithId:);
  methods[13].selector = @selector(initWithId:withOrgJodaTimeChronology:);
  methods[14].selector = @selector(initWithInt:withInt:);
  methods[15].selector = @selector(initWithInt:withInt:withOrgJodaTimeChronology:);
  methods[16].selector = @selector(initWithOrgJodaTimeYearMonth:withIntArray:);
  methods[17].selector = @selector(initWithOrgJodaTimeYearMonth:withOrgJodaTimeChronology:);
  methods[18].selector = @selector(readResolve);
  methods[19].selector = @selector(size);
  methods[20].selector = @selector(getFieldWithInt:withOrgJodaTimeChronology:);
  methods[21].selector = @selector(getFieldTypeWithInt:);
  methods[22].selector = @selector(getFieldTypes);
  methods[23].selector = @selector(withChronologyRetainFieldsWithOrgJodaTimeChronology:);
  methods[24].selector = @selector(withFieldWithOrgJodaTimeDateTimeFieldType:withInt:);
  methods[25].selector = @selector(withFieldAddedWithOrgJodaTimeDurationFieldType:withInt:);
  methods[26].selector = @selector(withPeriodAddedWithOrgJodaTimeReadablePeriod:withInt:);
  methods[27].selector = @selector(plusWithOrgJodaTimeReadablePeriod:);
  methods[28].selector = @selector(plusYearsWithInt:);
  methods[29].selector = @selector(plusMonthsWithInt:);
  methods[30].selector = @selector(minusWithOrgJodaTimeReadablePeriod:);
  methods[31].selector = @selector(minusYearsWithInt:);
  methods[32].selector = @selector(minusMonthsWithInt:);
  methods[33].selector = @selector(toLocalDateWithInt:);
  methods[34].selector = @selector(toInterval);
  methods[35].selector = @selector(toIntervalWithOrgJodaTimeDateTimeZone:);
  methods[36].selector = @selector(getYear);
  methods[37].selector = @selector(getMonthOfYear);
  methods[38].selector = @selector(withYearWithInt:);
  methods[39].selector = @selector(withMonthOfYearWithInt:);
  methods[40].selector = @selector(propertyWithOrgJodaTimeDateTimeFieldType:);
  methods[41].selector = @selector(year);
  methods[42].selector = @selector(monthOfYear);
  methods[43].selector = @selector(description);
  methods[44].selector = @selector(toStringWithNSString:);
  methods[45].selector = @selector(toStringWithNSString:withJavaUtilLocale:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeYearMonth_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "FIELD_TYPES", "[LOrgJodaTimeDateTimeFieldType;", .constantValue.asLong = 0, 0x1a, -1, 47, -1, -1 },
    { "YEAR", "I", .constantValue.asInt = OrgJodaTimeYearMonth_YEAR, 0x19, -1, -1, -1, -1 },
    { "MONTH_OF_YEAR", "I", .constantValue.asInt = OrgJodaTimeYearMonth_MONTH_OF_YEAR, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "now", "LOrgJodaTimeDateTimeZone;", "LOrgJodaTimeChronology;", "parse", "LNSString;", (void *)&OrgJodaTimeYearMonth__Annotations$0, "LNSString;LOrgJodaTimeFormatDateTimeFormatter;", "fromCalendarFields", "LJavaUtilCalendar;", "fromDateFields", "LJavaUtilDate;", "J", "JLOrgJodaTimeChronology;", "LNSObject;", "LNSObject;LOrgJodaTimeChronology;", "II", "IILOrgJodaTimeChronology;", "LOrgJodaTimeYearMonth;[I", "LOrgJodaTimeYearMonth;LOrgJodaTimeChronology;", "getField", "ILOrgJodaTimeChronology;", "getFieldType", "I", "withChronologyRetainFields", "withField", "LOrgJodaTimeDateTimeFieldType;I", "withFieldAdded", "LOrgJodaTimeDurationFieldType;I", "withPeriodAdded", "LOrgJodaTimeReadablePeriod;I", "plus", "LOrgJodaTimeReadablePeriod;", "plusYears", "plusMonths", "minus", "minusYears", "minusMonths", "toLocalDate", "toInterval", "withYear", "withMonthOfYear", "property", "LOrgJodaTimeDateTimeFieldType;", "toString", (void *)&OrgJodaTimeYearMonth__Annotations$1, "LNSString;LJavaUtilLocale;", "LJavaLangIllegalArgumentException;", &OrgJodaTimeYearMonth_FIELD_TYPES, "LOrgJodaTimeYearMonth_Property;" };
  static const J2ObjcClassInfo _OrgJodaTimeYearMonth = { "YearMonth", "org.joda.time", ptrTable, methods, fields, 7, 0x11, 46, 4, -1, 48, -1, -1, -1 };
  return &_OrgJodaTimeYearMonth;
}

+ (void)initialize {
  if (self == [OrgJodaTimeYearMonth class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeYearMonth_FIELD_TYPES, [IOSObjectArray newArrayWithObjects:(id[]){ OrgJodaTimeDateTimeFieldType_year(), OrgJodaTimeDateTimeFieldType_monthOfYear() } count:2 type:OrgJodaTimeDateTimeFieldType_class_()]);
    J2OBJC_SET_INITIALIZED(OrgJodaTimeYearMonth)
  }
}

@end

OrgJodaTimeYearMonth *OrgJodaTimeYearMonth_now() {
  OrgJodaTimeYearMonth_initialize();
  return create_OrgJodaTimeYearMonth_init();
}

OrgJodaTimeYearMonth *OrgJodaTimeYearMonth_nowWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone) {
  OrgJodaTimeYearMonth_initialize();
  if (zone == nil) {
    @throw create_JavaLangNullPointerException_initWithNSString_(@"Zone must not be null");
  }
  return create_OrgJodaTimeYearMonth_initWithOrgJodaTimeDateTimeZone_(zone);
}

OrgJodaTimeYearMonth *OrgJodaTimeYearMonth_nowWithOrgJodaTimeChronology_(OrgJodaTimeChronology *chronology) {
  OrgJodaTimeYearMonth_initialize();
  if (chronology == nil) {
    @throw create_JavaLangNullPointerException_initWithNSString_(@"Chronology must not be null");
  }
  return create_OrgJodaTimeYearMonth_initWithOrgJodaTimeChronology_(chronology);
}

OrgJodaTimeYearMonth *OrgJodaTimeYearMonth_parseWithNSString_(NSString *str) {
  OrgJodaTimeYearMonth_initialize();
  return OrgJodaTimeYearMonth_parseWithNSString_withOrgJodaTimeFormatDateTimeFormatter_(str, OrgJodaTimeFormatISODateTimeFormat_localDateParser());
}

OrgJodaTimeYearMonth *OrgJodaTimeYearMonth_parseWithNSString_withOrgJodaTimeFormatDateTimeFormatter_(NSString *str, OrgJodaTimeFormatDateTimeFormatter *formatter) {
  OrgJodaTimeYearMonth_initialize();
  OrgJodaTimeLocalDate *date = [((OrgJodaTimeFormatDateTimeFormatter *) nil_chk(formatter)) parseLocalDateWithNSString:str];
  return create_OrgJodaTimeYearMonth_initWithInt_withInt_([((OrgJodaTimeLocalDate *) nil_chk(date)) getYear], [date getMonthOfYear]);
}

OrgJodaTimeYearMonth *OrgJodaTimeYearMonth_fromCalendarFieldsWithJavaUtilCalendar_(JavaUtilCalendar *calendar) {
  OrgJodaTimeYearMonth_initialize();
  if (calendar == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"The calendar must not be null");
  }
  return create_OrgJodaTimeYearMonth_initWithInt_withInt_([calendar getWithInt:JavaUtilCalendar_YEAR], [calendar getWithInt:JavaUtilCalendar_MONTH] + 1);
}

OrgJodaTimeYearMonth *OrgJodaTimeYearMonth_fromDateFieldsWithJavaUtilDate_(JavaUtilDate *date) {
  OrgJodaTimeYearMonth_initialize();
  if (date == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"The date must not be null");
  }
  return create_OrgJodaTimeYearMonth_initWithInt_withInt_([date getYear] + 1900, [date getMonth] + 1);
}

void OrgJodaTimeYearMonth_init(OrgJodaTimeYearMonth *self) {
  OrgJodaTimeBaseBasePartial_init(self);
}

OrgJodaTimeYearMonth *new_OrgJodaTimeYearMonth_init() {
  J2OBJC_NEW_IMPL(OrgJodaTimeYearMonth, init)
}

OrgJodaTimeYearMonth *create_OrgJodaTimeYearMonth_init() {
  J2OBJC_CREATE_IMPL(OrgJodaTimeYearMonth, init)
}

void OrgJodaTimeYearMonth_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeYearMonth *self, OrgJodaTimeDateTimeZone *zone) {
  OrgJodaTimeBaseBasePartial_initWithOrgJodaTimeChronology_(self, OrgJodaTimeChronoISOChronology_getInstanceWithOrgJodaTimeDateTimeZone_(zone));
}

OrgJodaTimeYearMonth *new_OrgJodaTimeYearMonth_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone) {
  J2OBJC_NEW_IMPL(OrgJodaTimeYearMonth, initWithOrgJodaTimeDateTimeZone_, zone)
}

OrgJodaTimeYearMonth *create_OrgJodaTimeYearMonth_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeYearMonth, initWithOrgJodaTimeDateTimeZone_, zone)
}

void OrgJodaTimeYearMonth_initWithOrgJodaTimeChronology_(OrgJodaTimeYearMonth *self, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeBaseBasePartial_initWithOrgJodaTimeChronology_(self, chronology);
}

OrgJodaTimeYearMonth *new_OrgJodaTimeYearMonth_initWithOrgJodaTimeChronology_(OrgJodaTimeChronology *chronology) {
  J2OBJC_NEW_IMPL(OrgJodaTimeYearMonth, initWithOrgJodaTimeChronology_, chronology)
}

OrgJodaTimeYearMonth *create_OrgJodaTimeYearMonth_initWithOrgJodaTimeChronology_(OrgJodaTimeChronology *chronology) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeYearMonth, initWithOrgJodaTimeChronology_, chronology)
}

void OrgJodaTimeYearMonth_initWithLong_(OrgJodaTimeYearMonth *self, jlong instant) {
  OrgJodaTimeBaseBasePartial_initWithLong_(self, instant);
}

OrgJodaTimeYearMonth *new_OrgJodaTimeYearMonth_initWithLong_(jlong instant) {
  J2OBJC_NEW_IMPL(OrgJodaTimeYearMonth, initWithLong_, instant)
}

OrgJodaTimeYearMonth *create_OrgJodaTimeYearMonth_initWithLong_(jlong instant) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeYearMonth, initWithLong_, instant)
}

void OrgJodaTimeYearMonth_initWithLong_withOrgJodaTimeChronology_(OrgJodaTimeYearMonth *self, jlong instant, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeBaseBasePartial_initWithLong_withOrgJodaTimeChronology_(self, instant, chronology);
}

OrgJodaTimeYearMonth *new_OrgJodaTimeYearMonth_initWithLong_withOrgJodaTimeChronology_(jlong instant, OrgJodaTimeChronology *chronology) {
  J2OBJC_NEW_IMPL(OrgJodaTimeYearMonth, initWithLong_withOrgJodaTimeChronology_, instant, chronology)
}

OrgJodaTimeYearMonth *create_OrgJodaTimeYearMonth_initWithLong_withOrgJodaTimeChronology_(jlong instant, OrgJodaTimeChronology *chronology) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeYearMonth, initWithLong_withOrgJodaTimeChronology_, instant, chronology)
}

void OrgJodaTimeYearMonth_initWithId_(OrgJodaTimeYearMonth *self, id instant) {
  OrgJodaTimeBaseBasePartial_initWithId_withOrgJodaTimeChronology_withOrgJodaTimeFormatDateTimeFormatter_(self, instant, nil, OrgJodaTimeFormatISODateTimeFormat_localDateParser());
}

OrgJodaTimeYearMonth *new_OrgJodaTimeYearMonth_initWithId_(id instant) {
  J2OBJC_NEW_IMPL(OrgJodaTimeYearMonth, initWithId_, instant)
}

OrgJodaTimeYearMonth *create_OrgJodaTimeYearMonth_initWithId_(id instant) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeYearMonth, initWithId_, instant)
}

void OrgJodaTimeYearMonth_initWithId_withOrgJodaTimeChronology_(OrgJodaTimeYearMonth *self, id instant, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeBaseBasePartial_initWithId_withOrgJodaTimeChronology_withOrgJodaTimeFormatDateTimeFormatter_(self, instant, OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(chronology), OrgJodaTimeFormatISODateTimeFormat_localDateParser());
}

OrgJodaTimeYearMonth *new_OrgJodaTimeYearMonth_initWithId_withOrgJodaTimeChronology_(id instant, OrgJodaTimeChronology *chronology) {
  J2OBJC_NEW_IMPL(OrgJodaTimeYearMonth, initWithId_withOrgJodaTimeChronology_, instant, chronology)
}

OrgJodaTimeYearMonth *create_OrgJodaTimeYearMonth_initWithId_withOrgJodaTimeChronology_(id instant, OrgJodaTimeChronology *chronology) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeYearMonth, initWithId_withOrgJodaTimeChronology_, instant, chronology)
}

void OrgJodaTimeYearMonth_initWithInt_withInt_(OrgJodaTimeYearMonth *self, jint year, jint monthOfYear) {
  OrgJodaTimeYearMonth_initWithInt_withInt_withOrgJodaTimeChronology_(self, year, monthOfYear, nil);
}

OrgJodaTimeYearMonth *new_OrgJodaTimeYearMonth_initWithInt_withInt_(jint year, jint monthOfYear) {
  J2OBJC_NEW_IMPL(OrgJodaTimeYearMonth, initWithInt_withInt_, year, monthOfYear)
}

OrgJodaTimeYearMonth *create_OrgJodaTimeYearMonth_initWithInt_withInt_(jint year, jint monthOfYear) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeYearMonth, initWithInt_withInt_, year, monthOfYear)
}

void OrgJodaTimeYearMonth_initWithInt_withInt_withOrgJodaTimeChronology_(OrgJodaTimeYearMonth *self, jint year, jint monthOfYear, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeBaseBasePartial_initWithIntArray_withOrgJodaTimeChronology_(self, [IOSIntArray arrayWithInts:(jint[]){ year, monthOfYear } count:2], chronology);
}

OrgJodaTimeYearMonth *new_OrgJodaTimeYearMonth_initWithInt_withInt_withOrgJodaTimeChronology_(jint year, jint monthOfYear, OrgJodaTimeChronology *chronology) {
  J2OBJC_NEW_IMPL(OrgJodaTimeYearMonth, initWithInt_withInt_withOrgJodaTimeChronology_, year, monthOfYear, chronology)
}

OrgJodaTimeYearMonth *create_OrgJodaTimeYearMonth_initWithInt_withInt_withOrgJodaTimeChronology_(jint year, jint monthOfYear, OrgJodaTimeChronology *chronology) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeYearMonth, initWithInt_withInt_withOrgJodaTimeChronology_, year, monthOfYear, chronology)
}

void OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withIntArray_(OrgJodaTimeYearMonth *self, OrgJodaTimeYearMonth *partial, IOSIntArray *values) {
  OrgJodaTimeBaseBasePartial_initWithOrgJodaTimeBaseBasePartial_withIntArray_(self, partial, values);
}

OrgJodaTimeYearMonth *new_OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withIntArray_(OrgJodaTimeYearMonth *partial, IOSIntArray *values) {
  J2OBJC_NEW_IMPL(OrgJodaTimeYearMonth, initWithOrgJodaTimeYearMonth_withIntArray_, partial, values)
}

OrgJodaTimeYearMonth *create_OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withIntArray_(OrgJodaTimeYearMonth *partial, IOSIntArray *values) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeYearMonth, initWithOrgJodaTimeYearMonth_withIntArray_, partial, values)
}

void OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withOrgJodaTimeChronology_(OrgJodaTimeYearMonth *self, OrgJodaTimeYearMonth *partial, OrgJodaTimeChronology *chrono) {
  OrgJodaTimeBaseBasePartial_initWithOrgJodaTimeBaseBasePartial_withOrgJodaTimeChronology_(self, partial, chrono);
}

OrgJodaTimeYearMonth *new_OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withOrgJodaTimeChronology_(OrgJodaTimeYearMonth *partial, OrgJodaTimeChronology *chrono) {
  J2OBJC_NEW_IMPL(OrgJodaTimeYearMonth, initWithOrgJodaTimeYearMonth_withOrgJodaTimeChronology_, partial, chrono)
}

OrgJodaTimeYearMonth *create_OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withOrgJodaTimeChronology_(OrgJodaTimeYearMonth *partial, OrgJodaTimeChronology *chrono) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeYearMonth, initWithOrgJodaTimeYearMonth_withOrgJodaTimeChronology_, partial, chrono)
}

IOSObjectArray *OrgJodaTimeYearMonth__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJodaConvertFromString() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgJodaTimeYearMonth__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJodaConvertToString() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeYearMonth)

@implementation OrgJodaTimeYearMonth_Property

- (instancetype)initWithOrgJodaTimeYearMonth:(OrgJodaTimeYearMonth *)partial
                                     withInt:(jint)fieldIndex {
  OrgJodaTimeYearMonth_Property_initWithOrgJodaTimeYearMonth_withInt_(self, partial, fieldIndex);
  return self;
}

- (OrgJodaTimeDateTimeField *)getField {
  return [((OrgJodaTimeYearMonth *) nil_chk(iBase_)) getFieldWithInt:iFieldIndex_];
}

- (id<OrgJodaTimeReadablePartial>)getReadablePartial {
  return iBase_;
}

- (OrgJodaTimeYearMonth *)getYearMonth {
  return iBase_;
}

- (jint)get {
  return [((OrgJodaTimeYearMonth *) nil_chk(iBase_)) getValueWithInt:iFieldIndex_];
}

- (OrgJodaTimeYearMonth *)addToCopyWithInt:(jint)valueToAdd {
  IOSIntArray *newValues = [((OrgJodaTimeYearMonth *) nil_chk(iBase_)) getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) addWithOrgJodaTimeReadablePartial:iBase_ withInt:iFieldIndex_ withIntArray:newValues withInt:valueToAdd];
  return create_OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withIntArray_(iBase_, newValues);
}

- (OrgJodaTimeYearMonth *)addWrapFieldToCopyWithInt:(jint)valueToAdd {
  IOSIntArray *newValues = [((OrgJodaTimeYearMonth *) nil_chk(iBase_)) getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) addWrapFieldWithOrgJodaTimeReadablePartial:iBase_ withInt:iFieldIndex_ withIntArray:newValues withInt:valueToAdd];
  return create_OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withIntArray_(iBase_, newValues);
}

- (OrgJodaTimeYearMonth *)setCopyWithInt:(jint)value {
  IOSIntArray *newValues = [((OrgJodaTimeYearMonth *) nil_chk(iBase_)) getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) setWithOrgJodaTimeReadablePartial:iBase_ withInt:iFieldIndex_ withIntArray:newValues withInt:value];
  return create_OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withIntArray_(iBase_, newValues);
}

- (OrgJodaTimeYearMonth *)setCopyWithNSString:(NSString *)text
                           withJavaUtilLocale:(JavaUtilLocale *)locale {
  IOSIntArray *newValues = [((OrgJodaTimeYearMonth *) nil_chk(iBase_)) getValues];
  newValues = [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) setWithOrgJodaTimeReadablePartial:iBase_ withInt:iFieldIndex_ withIntArray:newValues withNSString:text withJavaUtilLocale:locale];
  return create_OrgJodaTimeYearMonth_initWithOrgJodaTimeYearMonth_withIntArray_(iBase_, newValues);
}

- (OrgJodaTimeYearMonth *)setCopyWithNSString:(NSString *)text {
  return [self setCopyWithNSString:text withJavaUtilLocale:nil];
}

- (void)dealloc {
  RELEASE_(iBase_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTimeField;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeReadablePartial;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 4, 2, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeYearMonth;", 0x1, 4, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJodaTimeYearMonth:withInt:);
  methods[1].selector = @selector(getField);
  methods[2].selector = @selector(getReadablePartial);
  methods[3].selector = @selector(getYearMonth);
  methods[4].selector = @selector(get);
  methods[5].selector = @selector(addToCopyWithInt:);
  methods[6].selector = @selector(addWrapFieldToCopyWithInt:);
  methods[7].selector = @selector(setCopyWithInt:);
  methods[8].selector = @selector(setCopyWithNSString:withJavaUtilLocale:);
  methods[9].selector = @selector(setCopyWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeYearMonth_Property_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "iBase_", "LOrgJodaTimeYearMonth;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "iFieldIndex_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgJodaTimeYearMonth;I", "addToCopy", "I", "addWrapFieldToCopy", "setCopy", "LNSString;LJavaUtilLocale;", "LNSString;", "LOrgJodaTimeYearMonth;" };
  static const J2ObjcClassInfo _OrgJodaTimeYearMonth_Property = { "Property", "org.joda.time", ptrTable, methods, fields, 7, 0x9, 10, 3, 7, -1, -1, -1, -1 };
  return &_OrgJodaTimeYearMonth_Property;
}

@end

void OrgJodaTimeYearMonth_Property_initWithOrgJodaTimeYearMonth_withInt_(OrgJodaTimeYearMonth_Property *self, OrgJodaTimeYearMonth *partial, jint fieldIndex) {
  OrgJodaTimeFieldAbstractPartialFieldProperty_init(self);
  JreStrongAssign(&self->iBase_, partial);
  self->iFieldIndex_ = fieldIndex;
}

OrgJodaTimeYearMonth_Property *new_OrgJodaTimeYearMonth_Property_initWithOrgJodaTimeYearMonth_withInt_(OrgJodaTimeYearMonth *partial, jint fieldIndex) {
  J2OBJC_NEW_IMPL(OrgJodaTimeYearMonth_Property, initWithOrgJodaTimeYearMonth_withInt_, partial, fieldIndex)
}

OrgJodaTimeYearMonth_Property *create_OrgJodaTimeYearMonth_Property_initWithOrgJodaTimeYearMonth_withInt_(OrgJodaTimeYearMonth *partial, jint fieldIndex) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeYearMonth_Property, initWithOrgJodaTimeYearMonth_withInt_, partial, fieldIndex)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeYearMonth_Property)
