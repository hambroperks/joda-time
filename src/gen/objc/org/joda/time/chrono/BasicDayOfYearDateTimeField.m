//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/chrono/BasicDayOfYearDateTimeField.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/ReadablePartial.h"
#include "org/joda/time/chrono/BasicChronology.h"
#include "org/joda/time/chrono/BasicDayOfYearDateTimeField.h"
#include "org/joda/time/field/PreciseDurationDateTimeField.h"

@interface OrgJodaTimeChronoBasicDayOfYearDateTimeField () {
 @public
  OrgJodaTimeChronoBasicChronology *iChronology_;
}

/*!
 @brief Serialization singleton
 */
- (id)readResolve;

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeChronoBasicDayOfYearDateTimeField, iChronology_, OrgJodaTimeChronoBasicChronology *)

inline jlong OrgJodaTimeChronoBasicDayOfYearDateTimeField_get_serialVersionUID(void);
#define OrgJodaTimeChronoBasicDayOfYearDateTimeField_serialVersionUID -6821236822336841037LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeChronoBasicDayOfYearDateTimeField, serialVersionUID, jlong)

__attribute__((unused)) static id OrgJodaTimeChronoBasicDayOfYearDateTimeField_readResolve(OrgJodaTimeChronoBasicDayOfYearDateTimeField *self);

@implementation OrgJodaTimeChronoBasicDayOfYearDateTimeField

- (instancetype)initWithOrgJodaTimeChronoBasicChronology:(OrgJodaTimeChronoBasicChronology *)chronology
                            withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)days {
  OrgJodaTimeChronoBasicDayOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withOrgJodaTimeDurationField_(self, chronology, days);
  return self;
}

- (jint)getWithLong:(jlong)instant {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getDayOfYearWithLong:instant];
}

- (OrgJodaTimeDurationField *)getRangeDurationField {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) years];
}

- (jint)getMinimumValue {
  return 1;
}

- (jint)getMaximumValue {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getDaysInYearMax];
}

- (jint)getMaximumValueWithLong:(jlong)instant {
  jint year = [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getYearWithLong:instant];
  return [iChronology_ getDaysInYearWithInt:year];
}

- (jint)getMaximumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial {
  if ([((id<OrgJodaTimeReadablePartial>) nil_chk(partial)) isSupportedWithOrgJodaTimeDateTimeFieldType:OrgJodaTimeDateTimeFieldType_year()]) {
    jint year = [partial getWithOrgJodaTimeDateTimeFieldType:OrgJodaTimeDateTimeFieldType_year()];
    return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getDaysInYearWithInt:year];
  }
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getDaysInYearMax];
}

- (jint)getMaximumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                                         withIntArray:(IOSIntArray *)values {
  jint size = [((id<OrgJodaTimeReadablePartial>) nil_chk(partial)) size];
  for (jint i = 0; i < size; i++) {
    if ([partial getFieldTypeWithInt:i] == OrgJodaTimeDateTimeFieldType_year()) {
      jint year = IOSIntArray_Get(nil_chk(values), i);
      return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getDaysInYearWithInt:year];
    }
  }
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getDaysInYearMax];
}

- (jint)getMaximumValueForSetWithLong:(jlong)instant
                              withInt:(jint)value {
  jint maxLessOne = [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getDaysInYearMax] - 1;
  return (value > maxLessOne || value < 1) ? [self getMaximumValueWithLong:instant] : maxLessOne;
}

- (jboolean)isLeapWithLong:(jlong)instant {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) isLeapDayWithLong:instant];
}

- (id)readResolve {
  return OrgJodaTimeChronoBasicDayOfYearDateTimeField_readResolve(self);
}

- (void)dealloc {
  RELEASE_(iChronology_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationField;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 6, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 2, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJodaTimeChronoBasicChronology:withOrgJodaTimeDurationField:);
  methods[1].selector = @selector(getWithLong:);
  methods[2].selector = @selector(getRangeDurationField);
  methods[3].selector = @selector(getMinimumValue);
  methods[4].selector = @selector(getMaximumValue);
  methods[5].selector = @selector(getMaximumValueWithLong:);
  methods[6].selector = @selector(getMaximumValueWithOrgJodaTimeReadablePartial:);
  methods[7].selector = @selector(getMaximumValueWithOrgJodaTimeReadablePartial:withIntArray:);
  methods[8].selector = @selector(getMaximumValueForSetWithLong:withInt:);
  methods[9].selector = @selector(isLeapWithLong:);
  methods[10].selector = @selector(readResolve);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeChronoBasicDayOfYearDateTimeField_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "iChronology_", "LOrgJodaTimeChronoBasicChronology;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgJodaTimeChronoBasicChronology;LOrgJodaTimeDurationField;", "get", "J", "getMaximumValue", "LOrgJodaTimeReadablePartial;", "LOrgJodaTimeReadablePartial;[I", "getMaximumValueForSet", "JI", "isLeap" };
  static const J2ObjcClassInfo _OrgJodaTimeChronoBasicDayOfYearDateTimeField = { "BasicDayOfYearDateTimeField", "org.joda.time.chrono", ptrTable, methods, fields, 7, 0x10, 11, 2, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeChronoBasicDayOfYearDateTimeField;
}

@end

void OrgJodaTimeChronoBasicDayOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withOrgJodaTimeDurationField_(OrgJodaTimeChronoBasicDayOfYearDateTimeField *self, OrgJodaTimeChronoBasicChronology *chronology, OrgJodaTimeDurationField *days) {
  OrgJodaTimeFieldPreciseDurationDateTimeField_initWithOrgJodaTimeDateTimeFieldType_withOrgJodaTimeDurationField_(self, OrgJodaTimeDateTimeFieldType_dayOfYear(), days);
  JreStrongAssign(&self->iChronology_, chronology);
}

OrgJodaTimeChronoBasicDayOfYearDateTimeField *new_OrgJodaTimeChronoBasicDayOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withOrgJodaTimeDurationField_(OrgJodaTimeChronoBasicChronology *chronology, OrgJodaTimeDurationField *days) {
  J2OBJC_NEW_IMPL(OrgJodaTimeChronoBasicDayOfYearDateTimeField, initWithOrgJodaTimeChronoBasicChronology_withOrgJodaTimeDurationField_, chronology, days)
}

OrgJodaTimeChronoBasicDayOfYearDateTimeField *create_OrgJodaTimeChronoBasicDayOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withOrgJodaTimeDurationField_(OrgJodaTimeChronoBasicChronology *chronology, OrgJodaTimeDurationField *days) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeChronoBasicDayOfYearDateTimeField, initWithOrgJodaTimeChronoBasicChronology_withOrgJodaTimeDurationField_, chronology, days)
}

id OrgJodaTimeChronoBasicDayOfYearDateTimeField_readResolve(OrgJodaTimeChronoBasicDayOfYearDateTimeField *self) {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(self->iChronology_)) dayOfYear];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeChronoBasicDayOfYearDateTimeField)
