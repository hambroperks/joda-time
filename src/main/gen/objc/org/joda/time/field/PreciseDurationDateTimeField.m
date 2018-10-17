//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/field/PreciseDurationDateTimeField.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/field/BaseDateTimeField.h"
#include "org/joda/time/field/FieldUtils.h"
#include "org/joda/time/field/PreciseDurationDateTimeField.h"

@interface OrgJodaTimeFieldPreciseDurationDateTimeField () {
 @public
  OrgJodaTimeDurationField *iUnitField_;
}

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeFieldPreciseDurationDateTimeField, iUnitField_, OrgJodaTimeDurationField *)

inline jlong OrgJodaTimeFieldPreciseDurationDateTimeField_get_serialVersionUID();
#define OrgJodaTimeFieldPreciseDurationDateTimeField_serialVersionUID 5004523158306266035LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeFieldPreciseDurationDateTimeField, serialVersionUID, jlong)

@implementation OrgJodaTimeFieldPreciseDurationDateTimeField

- (instancetype)initWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type
                        withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)unit {
  OrgJodaTimeFieldPreciseDurationDateTimeField_initWithOrgJodaTimeDateTimeFieldType_withOrgJodaTimeDurationField_(self, type, unit);
  return self;
}

- (jboolean)isLenient {
  return false;
}

- (jlong)setWithLong:(jlong)instant
             withInt:(jint)value {
  OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithOrgJodaTimeDateTimeField_withInt_withInt_withInt_(self, value, [self getMinimumValue], [self getMaximumValueForSetWithLong:instant withInt:value]);
  return instant + (value - [self getWithLong:instant]) * iUnitMillis_;
}

- (jlong)roundFloorWithLong:(jlong)instant {
  if (instant >= 0) {
    return instant - instant % iUnitMillis_;
  }
  else {
    instant += 1;
    return instant - instant % iUnitMillis_ - iUnitMillis_;
  }
}

- (jlong)roundCeilingWithLong:(jlong)instant {
  if (instant > 0) {
    instant -= 1;
    return instant - instant % iUnitMillis_ + iUnitMillis_;
  }
  else {
    return instant - instant % iUnitMillis_;
  }
}

- (jlong)remainderWithLong:(jlong)instant {
  if (instant >= 0) {
    return instant % iUnitMillis_;
  }
  else {
    return (instant + 1) % iUnitMillis_ + iUnitMillis_ - 1;
  }
}

- (OrgJodaTimeDurationField *)getDurationField {
  return iUnitField_;
}

- (jint)getMinimumValue {
  return 0;
}

- (jlong)getUnitMillis {
  return iUnitMillis_;
}

- (jint)getMaximumValueForSetWithLong:(jlong)instant
                              withInt:(jint)value {
  return [self getMaximumValueWithLong:instant];
}

- (void)dealloc {
  RELEASE_(iUnitField_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 5, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 6, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationField;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 7, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJodaTimeDateTimeFieldType:withOrgJodaTimeDurationField:);
  methods[1].selector = @selector(isLenient);
  methods[2].selector = @selector(setWithLong:withInt:);
  methods[3].selector = @selector(roundFloorWithLong:);
  methods[4].selector = @selector(roundCeilingWithLong:);
  methods[5].selector = @selector(remainderWithLong:);
  methods[6].selector = @selector(getDurationField);
  methods[7].selector = @selector(getMinimumValue);
  methods[8].selector = @selector(getUnitMillis);
  methods[9].selector = @selector(getMaximumValueForSetWithLong:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeFieldPreciseDurationDateTimeField_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "iUnitMillis_", "J", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "iUnitField_", "LOrgJodaTimeDurationField;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgJodaTimeDateTimeFieldType;LOrgJodaTimeDurationField;", "set", "JI", "roundFloor", "J", "roundCeiling", "remainder", "getMaximumValueForSet" };
  static const J2ObjcClassInfo _OrgJodaTimeFieldPreciseDurationDateTimeField = { "PreciseDurationDateTimeField", "org.joda.time.field", ptrTable, methods, fields, 7, 0x401, 10, 3, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeFieldPreciseDurationDateTimeField;
}

@end

void OrgJodaTimeFieldPreciseDurationDateTimeField_initWithOrgJodaTimeDateTimeFieldType_withOrgJodaTimeDurationField_(OrgJodaTimeFieldPreciseDurationDateTimeField *self, OrgJodaTimeDateTimeFieldType *type, OrgJodaTimeDurationField *unit) {
  OrgJodaTimeFieldBaseDateTimeField_initWithOrgJodaTimeDateTimeFieldType_(self, type);
  if (![((OrgJodaTimeDurationField *) nil_chk(unit)) isPrecise]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Unit duration field must be precise");
  }
  self->iUnitMillis_ = [unit getUnitMillis];
  if (self->iUnitMillis_ < 1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"The unit milliseconds must be at least 1");
  }
  JreStrongAssign(&self->iUnitField_, unit);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFieldPreciseDurationDateTimeField)
