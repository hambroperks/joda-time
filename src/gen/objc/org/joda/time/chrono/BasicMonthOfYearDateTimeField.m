//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/chrono/BasicMonthOfYearDateTimeField.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "org/joda/time/DateTimeConstants.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/ReadablePartial.h"
#include "org/joda/time/chrono/BasicChronology.h"
#include "org/joda/time/chrono/BasicMonthOfYearDateTimeField.h"
#include "org/joda/time/field/BaseDateTimeField.h"
#include "org/joda/time/field/FieldUtils.h"
#include "org/joda/time/field/ImpreciseDateTimeField.h"

#define OrgJodaTimeChronoBasicMonthOfYearDateTimeField_serialVersionUID -8258715387168736LL
#define OrgJodaTimeChronoBasicMonthOfYearDateTimeField_MIN 1

@interface OrgJodaTimeChronoBasicMonthOfYearDateTimeField () {
 @public
  OrgJodaTimeChronoBasicChronology *iChronology_;
  jint iMax_;
  jint iLeapMonth_;
}

/*!
 @brief Serialization singleton
 */
- (id)readResolve;

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeChronoBasicMonthOfYearDateTimeField, iChronology_, OrgJodaTimeChronoBasicChronology *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoBasicMonthOfYearDateTimeField, serialVersionUID, jlong)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoBasicMonthOfYearDateTimeField, MIN, jint)

@implementation OrgJodaTimeChronoBasicMonthOfYearDateTimeField

- (instancetype)initWithOrgJodaTimeChronoBasicChronology:(OrgJodaTimeChronoBasicChronology *)chronology
                                                 withInt:(jint)leapMonth {
  OrgJodaTimeChronoBasicMonthOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withInt_(self, chronology, leapMonth);
  return self;
}

- (jboolean)isLenient {
  return false;
}

- (jint)getWithLong:(jlong)instant {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getMonthOfYearWithLong:instant];
}

- (jlong)addWithLong:(jlong)instant
             withInt:(jint)months {
  if (months == 0) {
    return instant;
  }
  jlong timePart = [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getMillisOfDayWithLong:instant];
  jint thisYear = [iChronology_ getYearWithLong:instant];
  jint thisMonth = [iChronology_ getMonthOfYearWithLong:instant withInt:thisYear];
  jint yearToUse;
  jint monthToUse = thisMonth - 1 + months;
  if (monthToUse >= 0) {
    yearToUse = thisYear + (monthToUse / iMax_);
    monthToUse = (monthToUse % iMax_) + 1;
  }
  else {
    yearToUse = thisYear + (monthToUse / iMax_) - 1;
    monthToUse = JavaLangMath_absWithInt_(monthToUse);
    jint remMonthToUse = monthToUse % iMax_;
    if (remMonthToUse == 0) {
      remMonthToUse = iMax_;
    }
    monthToUse = iMax_ - remMonthToUse + 1;
    if (monthToUse == 1) {
      yearToUse += 1;
    }
  }
  jint dayToUse = [iChronology_ getDayOfMonthWithLong:instant withInt:thisYear withInt:thisMonth];
  jint maxDay = [iChronology_ getDaysInYearMonthWithInt:yearToUse withInt:monthToUse];
  if (dayToUse > maxDay) {
    dayToUse = maxDay;
  }
  jlong datePart = [iChronology_ getYearMonthDayMillisWithInt:yearToUse withInt:monthToUse withInt:dayToUse];
  return datePart + timePart;
}

- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)months {
  jint i_months = (jint) months;
  if (i_months == months) {
    return [self addWithLong:instant withInt:i_months];
  }
  jlong timePart = [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getMillisOfDayWithLong:instant];
  jint thisYear = [iChronology_ getYearWithLong:instant];
  jint thisMonth = [iChronology_ getMonthOfYearWithLong:instant withInt:thisYear];
  jlong yearToUse;
  jlong monthToUse = thisMonth - 1 + months;
  if (monthToUse >= 0) {
    yearToUse = thisYear + (monthToUse / iMax_);
    monthToUse = (monthToUse % iMax_) + 1;
  }
  else {
    yearToUse = thisYear + (monthToUse / iMax_) - 1;
    monthToUse = JavaLangMath_absWithLong_(monthToUse);
    jint remMonthToUse = (jint) (monthToUse % iMax_);
    if (remMonthToUse == 0) {
      remMonthToUse = iMax_;
    }
    monthToUse = iMax_ - remMonthToUse + 1;
    if (monthToUse == 1) {
      yearToUse += 1;
    }
  }
  if (yearToUse < [iChronology_ getMinYear] || yearToUse > [iChronology_ getMaxYear]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$J", @"Magnitude of add amount is too large: ", months)) autorelease];
  }
  jint i_yearToUse = (jint) yearToUse;
  jint i_monthToUse = (jint) monthToUse;
  jint dayToUse = [iChronology_ getDayOfMonthWithLong:instant withInt:thisYear withInt:thisMonth];
  jint maxDay = [iChronology_ getDaysInYearMonthWithInt:i_yearToUse withInt:i_monthToUse];
  if (dayToUse > maxDay) {
    dayToUse = maxDay;
  }
  jlong datePart = [iChronology_ getYearMonthDayMillisWithInt:i_yearToUse withInt:i_monthToUse withInt:dayToUse];
  return datePart + timePart;
}

- (IOSIntArray *)addWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                                           withInt:(jint)fieldIndex
                                      withIntArray:(IOSIntArray *)values
                                           withInt:(jint)valueToAdd {
  if (valueToAdd == 0) {
    return values;
  }
  if ([((id<OrgJodaTimeReadablePartial>) nil_chk(partial)) size] > 0 && [((OrgJodaTimeDateTimeFieldType *) nil_chk([partial getFieldTypeWithInt:0])) isEqual:OrgJodaTimeDateTimeFieldType_monthOfYear()] && fieldIndex == 0) {
    jint curMonth0 = [partial getValueWithInt:0] - 1;
    jint newMonth = ((curMonth0 + (valueToAdd % 12) + 12) % 12) + 1;
    return [self setWithOrgJodaTimeReadablePartial:partial withInt:0 withIntArray:values withInt:newMonth];
  }
  if (OrgJodaTimeDateTimeUtils_isContiguousWithOrgJodaTimeReadablePartial_(partial)) {
    jlong instant = 0LL;
    for (jint i = 0, isize = [partial size]; i < isize; i++) {
      instant = [((OrgJodaTimeDateTimeField *) nil_chk([((OrgJodaTimeDateTimeFieldType *) nil_chk([partial getFieldTypeWithInt:i])) getFieldWithOrgJodaTimeChronology:iChronology_])) setWithLong:instant withInt:IOSIntArray_Get(nil_chk(values), i)];
    }
    instant = [self addWithLong:instant withInt:valueToAdd];
    return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getWithOrgJodaTimeReadablePartial:partial withLong:instant];
  }
  else {
    return [super addWithOrgJodaTimeReadablePartial:partial withInt:fieldIndex withIntArray:values withInt:valueToAdd];
  }
}

- (jlong)addWrapFieldWithLong:(jlong)instant
                      withInt:(jint)months {
  return [self setWithLong:instant withInt:OrgJodaTimeFieldFieldUtils_getWrappedValueWithInt_withInt_withInt_withInt_([self getWithLong:instant], months, OrgJodaTimeChronoBasicMonthOfYearDateTimeField_MIN, iMax_)];
}

- (jlong)getDifferenceAsLongWithLong:(jlong)minuendInstant
                            withLong:(jlong)subtrahendInstant {
  if (minuendInstant < subtrahendInstant) {
    return -[self getDifferenceWithLong:subtrahendInstant withLong:minuendInstant];
  }
  jint minuendYear = [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getYearWithLong:minuendInstant];
  jint minuendMonth = [iChronology_ getMonthOfYearWithLong:minuendInstant withInt:minuendYear];
  jint subtrahendYear = [iChronology_ getYearWithLong:subtrahendInstant];
  jint subtrahendMonth = [iChronology_ getMonthOfYearWithLong:subtrahendInstant withInt:subtrahendYear];
  jlong difference = (minuendYear - subtrahendYear) * ((jlong) iMax_) + minuendMonth - subtrahendMonth;
  jint minuendDom = [iChronology_ getDayOfMonthWithLong:minuendInstant withInt:minuendYear withInt:minuendMonth];
  if (minuendDom == [iChronology_ getDaysInYearMonthWithInt:minuendYear withInt:minuendMonth]) {
    jint subtrahendDom = [iChronology_ getDayOfMonthWithLong:subtrahendInstant withInt:subtrahendYear withInt:subtrahendMonth];
    if (subtrahendDom > minuendDom) {
      subtrahendInstant = [((OrgJodaTimeDateTimeField *) nil_chk([iChronology_ dayOfMonth])) setWithLong:subtrahendInstant withInt:minuendDom];
    }
  }
  jlong minuendRem = minuendInstant - [iChronology_ getYearMonthMillisWithInt:minuendYear withInt:minuendMonth];
  jlong subtrahendRem = subtrahendInstant - [iChronology_ getYearMonthMillisWithInt:subtrahendYear withInt:subtrahendMonth];
  if (minuendRem < subtrahendRem) {
    difference--;
  }
  return difference;
}

- (jlong)setWithLong:(jlong)instant
             withInt:(jint)month {
  OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithOrgJodaTimeDateTimeField_withInt_withInt_withInt_(self, month, OrgJodaTimeChronoBasicMonthOfYearDateTimeField_MIN, iMax_);
  jint thisYear = [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getYearWithLong:instant];
  jint thisDom = [iChronology_ getDayOfMonthWithLong:instant withInt:thisYear];
  jint maxDom = [iChronology_ getDaysInYearMonthWithInt:thisYear withInt:month];
  if (thisDom > maxDom) {
    thisDom = maxDom;
  }
  return [iChronology_ getYearMonthDayMillisWithInt:thisYear withInt:month withInt:thisDom] + [iChronology_ getMillisOfDayWithLong:instant];
}

- (OrgJodaTimeDurationField *)getRangeDurationField {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) years];
}

- (jboolean)isLeapWithLong:(jlong)instant {
  jint thisYear = [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getYearWithLong:instant];
  if ([iChronology_ isLeapYearWithInt:thisYear]) {
    return [iChronology_ getMonthOfYearWithLong:instant withInt:thisYear] == iLeapMonth_;
  }
  return false;
}

- (jint)getLeapAmountWithLong:(jlong)instant {
  return [self isLeapWithLong:instant] ? 1 : 0;
}

- (OrgJodaTimeDurationField *)getLeapDurationField {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) days];
}

- (jint)getMinimumValue {
  return OrgJodaTimeChronoBasicMonthOfYearDateTimeField_MIN;
}

- (jint)getMaximumValue {
  return iMax_;
}

- (jlong)roundFloorWithLong:(jlong)instant {
  jint year = [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getYearWithLong:instant];
  jint month = [iChronology_ getMonthOfYearWithLong:instant withInt:year];
  return [iChronology_ getYearMonthMillisWithInt:year withInt:month];
}

- (jlong)remainderWithLong:(jlong)instant {
  return instant - [self roundFloorWithLong:instant];
}

- (id)readResolve {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) monthOfYear];
}

- (void)dealloc {
  RELEASE_(iChronology_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgJodaTimeChronoBasicChronology:withInt:", "BasicMonthOfYearDateTimeField", NULL, 0x0, NULL, NULL },
    { "isLenient", NULL, "Z", 0x1, NULL, NULL },
    { "getWithLong:", "get", "I", 0x1, NULL, NULL },
    { "addWithLong:withInt:", "add", "J", 0x1, NULL, NULL },
    { "addWithLong:withLong:", "add", "J", 0x1, NULL, NULL },
    { "addWithOrgJodaTimeReadablePartial:withInt:withIntArray:withInt:", "add", "[I", 0x1, NULL, NULL },
    { "addWrapFieldWithLong:withInt:", "addWrapField", "J", 0x1, NULL, NULL },
    { "getDifferenceAsLongWithLong:withLong:", "getDifferenceAsLong", "J", 0x1, NULL, NULL },
    { "setWithLong:withInt:", "set", "J", 0x1, NULL, NULL },
    { "getRangeDurationField", NULL, "Lorg.joda.time.DurationField;", 0x1, NULL, NULL },
    { "isLeapWithLong:", "isLeap", "Z", 0x1, NULL, NULL },
    { "getLeapAmountWithLong:", "getLeapAmount", "I", 0x1, NULL, NULL },
    { "getLeapDurationField", NULL, "Lorg.joda.time.DurationField;", 0x1, NULL, NULL },
    { "getMinimumValue", NULL, "I", 0x1, NULL, NULL },
    { "getMaximumValue", NULL, "I", 0x1, NULL, NULL },
    { "roundFloorWithLong:", "roundFloor", "J", 0x1, NULL, NULL },
    { "remainderWithLong:", "remainder", "J", 0x1, NULL, NULL },
    { "readResolve", NULL, "Ljava.lang.Object;", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoBasicMonthOfYearDateTimeField_serialVersionUID },
    { "MIN", "MIN", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgJodaTimeChronoBasicMonthOfYearDateTimeField_MIN },
    { "iChronology_", NULL, 0x12, "Lorg.joda.time.chrono.BasicChronology;", NULL, NULL, .constantValue.asLong = 0 },
    { "iMax_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "iLeapMonth_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgJodaTimeChronoBasicMonthOfYearDateTimeField = { 2, "BasicMonthOfYearDateTimeField", "org.joda.time.chrono", NULL, 0x0, 18, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeChronoBasicMonthOfYearDateTimeField;
}

@end

void OrgJodaTimeChronoBasicMonthOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withInt_(OrgJodaTimeChronoBasicMonthOfYearDateTimeField *self, OrgJodaTimeChronoBasicChronology *chronology, jint leapMonth) {
  OrgJodaTimeFieldImpreciseDateTimeField_initWithOrgJodaTimeDateTimeFieldType_withLong_(self, OrgJodaTimeDateTimeFieldType_monthOfYear(), [((OrgJodaTimeChronoBasicChronology *) nil_chk(chronology)) getAverageMillisPerMonth]);
  JreStrongAssign(&self->iChronology_, chronology);
  self->iMax_ = [self->iChronology_ getMaxMonth];
  self->iLeapMonth_ = leapMonth;
}

OrgJodaTimeChronoBasicMonthOfYearDateTimeField *new_OrgJodaTimeChronoBasicMonthOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withInt_(OrgJodaTimeChronoBasicChronology *chronology, jint leapMonth) {
  OrgJodaTimeChronoBasicMonthOfYearDateTimeField *self = [OrgJodaTimeChronoBasicMonthOfYearDateTimeField alloc];
  OrgJodaTimeChronoBasicMonthOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withInt_(self, chronology, leapMonth);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeChronoBasicMonthOfYearDateTimeField)
