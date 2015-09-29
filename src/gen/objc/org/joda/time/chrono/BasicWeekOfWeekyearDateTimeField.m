//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/chrono/BasicWeekOfWeekyearDateTimeField.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/joda/time/DateTimeConstants.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/ReadablePartial.h"
#include "org/joda/time/chrono/BasicChronology.h"
#include "org/joda/time/chrono/BasicWeekOfWeekyearDateTimeField.h"
#include "org/joda/time/field/PreciseDurationDateTimeField.h"

#define OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField_serialVersionUID -1587436826395135328LL

@interface OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField () {
 @public
  OrgJodaTimeChronoBasicChronology *iChronology_;
}

/*!
 @brief Serialization singleton
 */
- (id)readResolve;

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField, iChronology_, OrgJodaTimeChronoBasicChronology *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField, serialVersionUID, jlong)

@implementation OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField

- (instancetype)initWithOrgJodaTimeChronoBasicChronology:(OrgJodaTimeChronoBasicChronology *)chronology
                            withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)weeks {
  OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withOrgJodaTimeDurationField_(self, chronology, weeks);
  return self;
}

- (jint)getWithLong:(jlong)instant {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getWeekOfWeekyearWithLong:instant];
}

- (OrgJodaTimeDurationField *)getRangeDurationField {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) weekyears];
}

- (jlong)roundFloorWithLong:(jlong)instant {
  return [super roundFloorWithLong:instant + 3 * OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY] - 3 * OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY;
}

- (jlong)roundCeilingWithLong:(jlong)instant {
  return [super roundCeilingWithLong:instant + 3 * OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY] - 3 * OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY;
}

- (jlong)remainderWithLong:(jlong)instant {
  return [super remainderWithLong:instant + 3 * OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY];
}

- (jint)getMinimumValue {
  return 1;
}

- (jint)getMaximumValue {
  return 53;
}

- (jint)getMaximumValueWithLong:(jlong)instant {
  jint weekyear = [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getWeekyearWithLong:instant];
  return [iChronology_ getWeeksInYearWithInt:weekyear];
}

- (jint)getMaximumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial {
  if ([((id<OrgJodaTimeReadablePartial>) nil_chk(partial)) isSupportedWithOrgJodaTimeDateTimeFieldType:OrgJodaTimeDateTimeFieldType_weekyear()]) {
    jint weekyear = [partial getWithOrgJodaTimeDateTimeFieldType:OrgJodaTimeDateTimeFieldType_weekyear()];
    return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getWeeksInYearWithInt:weekyear];
  }
  return 53;
}

- (jint)getMaximumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                                         withIntArray:(IOSIntArray *)values {
  jint size = [((id<OrgJodaTimeReadablePartial>) nil_chk(partial)) size];
  for (jint i = 0; i < size; i++) {
    if ([partial getFieldTypeWithInt:i] == OrgJodaTimeDateTimeFieldType_weekyear()) {
      jint weekyear = IOSIntArray_Get(nil_chk(values), i);
      return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getWeeksInYearWithInt:weekyear];
    }
  }
  return 53;
}

- (jint)getMaximumValueForSetWithLong:(jlong)instant
                              withInt:(jint)value {
  return value > 52 ? [self getMaximumValueWithLong:instant] : 52;
}

- (id)readResolve {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) weekOfWeekyear];
}

- (void)dealloc {
  RELEASE_(iChronology_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgJodaTimeChronoBasicChronology:withOrgJodaTimeDurationField:", "BasicWeekOfWeekyearDateTimeField", NULL, 0x0, NULL, NULL },
    { "getWithLong:", "get", "I", 0x1, NULL, NULL },
    { "getRangeDurationField", NULL, "Lorg.joda.time.DurationField;", 0x1, NULL, NULL },
    { "roundFloorWithLong:", "roundFloor", "J", 0x1, NULL, NULL },
    { "roundCeilingWithLong:", "roundCeiling", "J", 0x1, NULL, NULL },
    { "remainderWithLong:", "remainder", "J", 0x1, NULL, NULL },
    { "getMinimumValue", NULL, "I", 0x1, NULL, NULL },
    { "getMaximumValue", NULL, "I", 0x1, NULL, NULL },
    { "getMaximumValueWithLong:", "getMaximumValue", "I", 0x1, NULL, NULL },
    { "getMaximumValueWithOrgJodaTimeReadablePartial:", "getMaximumValue", "I", 0x1, NULL, NULL },
    { "getMaximumValueWithOrgJodaTimeReadablePartial:withIntArray:", "getMaximumValue", "I", 0x1, NULL, NULL },
    { "getMaximumValueForSetWithLong:withInt:", "getMaximumValueForSet", "I", 0x4, NULL, NULL },
    { "readResolve", NULL, "Ljava.lang.Object;", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField_serialVersionUID },
    { "iChronology_", NULL, 0x12, "Lorg.joda.time.chrono.BasicChronology;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField = { 2, "BasicWeekOfWeekyearDateTimeField", "org.joda.time.chrono", NULL, 0x10, 13, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField;
}

@end

void OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withOrgJodaTimeDurationField_(OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField *self, OrgJodaTimeChronoBasicChronology *chronology, OrgJodaTimeDurationField *weeks) {
  OrgJodaTimeFieldPreciseDurationDateTimeField_initWithOrgJodaTimeDateTimeFieldType_withOrgJodaTimeDurationField_(self, OrgJodaTimeDateTimeFieldType_weekOfWeekyear(), weeks);
  JreStrongAssign(&self->iChronology_, chronology);
}

OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField *new_OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withOrgJodaTimeDurationField_(OrgJodaTimeChronoBasicChronology *chronology, OrgJodaTimeDurationField *weeks) {
  OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField *self = [OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField alloc];
  OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withOrgJodaTimeDurationField_(self, chronology, weeks);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField)
