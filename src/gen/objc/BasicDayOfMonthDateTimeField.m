//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/chrono/BasicDayOfMonthDateTimeField.java
//

#include "BasicChronology.h"
#include "BasicDayOfMonthDateTimeField.h"
#include "DateTimeField.h"
#include "DateTimeFieldType.h"
#include "DurationField.h"
#include "IOSPrimitiveArray.h"
#include "ReadablePartial.h"

@implementation OrgJodaTimeChronoBasicDayOfMonthDateTimeField

- (instancetype)initWithOrgJodaTimeChronoBasicChronology:(OrgJodaTimeChronoBasicChronology *)chronology
                            withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)days {
  if (self = [super initWithOrgJodaTimeDateTimeFieldType:[OrgJodaTimeDateTimeFieldType dayOfMonth] withOrgJodaTimeDurationField:days]) {
    iChronology_ = chronology;
  }
  return self;
}

- (int)getWithLong:(long long int)instant {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getDayOfMonthWithLong:instant];
}

- (OrgJodaTimeDurationField *)getRangeDurationField {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) months];
}

- (int)getMinimumValue {
  return 1;
}

- (int)getMaximumValue {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getDaysInMonthMax];
}

- (int)getMaximumValueWithLong:(long long int)instant {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getDaysInMonthMaxWithLong:instant];
}

- (int)getMaximumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial {
  if ([((id<OrgJodaTimeReadablePartial>) nil_chk(partial)) isSupportedWithOrgJodaTimeDateTimeFieldType:[OrgJodaTimeDateTimeFieldType monthOfYear]]) {
    int month = [partial getWithOrgJodaTimeDateTimeFieldType:[OrgJodaTimeDateTimeFieldType monthOfYear]];
    if ([partial isSupportedWithOrgJodaTimeDateTimeFieldType:[OrgJodaTimeDateTimeFieldType year]]) {
      int year = [partial getWithOrgJodaTimeDateTimeFieldType:[OrgJodaTimeDateTimeFieldType year]];
      return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getDaysInYearMonthWithInt:year withInt:month];
    }
    return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getDaysInMonthMaxWithInt:month];
  }
  return [self getMaximumValue];
}

- (int)getMaximumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                                        withIntArray:(IOSIntArray *)values {
  int size = [((id<OrgJodaTimeReadablePartial>) nil_chk(partial)) size];
  for (int i = 0; i < size; i++) {
    if ([partial getFieldTypeWithInt:i] == [OrgJodaTimeDateTimeFieldType monthOfYear]) {
      int month = IOSIntArray_Get(nil_chk(values), i);
      for (int j = 0; j < size; j++) {
        if ([partial getFieldTypeWithInt:j] == [OrgJodaTimeDateTimeFieldType year]) {
          int year = IOSIntArray_Get(values, j);
          return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getDaysInYearMonthWithInt:year withInt:month];
        }
      }
      return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getDaysInMonthMaxWithInt:month];
    }
  }
  return [self getMaximumValue];
}

- (int)getMaximumValueForSetWithLong:(long long int)instant
                             withInt:(int)value {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getDaysInMonthMaxForSetWithLong:instant withInt:value];
}

- (BOOL)isLeapWithLong:(long long int)instant {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) isLeapDayWithLong:instant];
}

- (id)readResolve {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) dayOfMonth];
}

- (void)copyAllFieldsTo:(OrgJodaTimeChronoBasicDayOfMonthDateTimeField *)other {
  [super copyAllFieldsTo:other];
  other->iChronology_ = iChronology_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithOrgJodaTimeChronoBasicChronology:withOrgJodaTimeDurationField:", "BasicDayOfMonthDateTimeField", NULL, 0x0, NULL },
    { "getWithLong:", "get", "I", 0x1, NULL },
    { "getRangeDurationField", NULL, "Lorg.joda.time.DurationField;", 0x1, NULL },
    { "getMinimumValue", NULL, "I", 0x1, NULL },
    { "getMaximumValue", NULL, "I", 0x1, NULL },
    { "getMaximumValueWithLong:", "getMaximumValue", "I", 0x1, NULL },
    { "getMaximumValueWithOrgJodaTimeReadablePartial:", "getMaximumValue", "I", 0x1, NULL },
    { "getMaximumValueWithOrgJodaTimeReadablePartial:withIntArray:", "getMaximumValue", "I", 0x1, NULL },
    { "getMaximumValueForSetWithLong:withInt:", "getMaximumValueForSet", "I", 0x4, NULL },
    { "isLeapWithLong:", "isLeap", "Z", 0x1, NULL },
    { "readResolve", NULL, "Ljava.lang.Object;", 0x2, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_BasicDayOfMonthDateTimeField_", "serialVersionUID", 0x1a, "J", NULL, .constantValue.asLong = OrgJodaTimeChronoBasicDayOfMonthDateTimeField_serialVersionUID },
    { "iChronology_", NULL, 0x12, "Lorg.joda.time.chrono.BasicChronology;", NULL,  },
  };
  static J2ObjcClassInfo _OrgJodaTimeChronoBasicDayOfMonthDateTimeField = { "BasicDayOfMonthDateTimeField", "org.joda.time.chrono", NULL, 0x10, 11, methods, 2, fields, 0, NULL};
  return &_OrgJodaTimeChronoBasicDayOfMonthDateTimeField;
}

@end
