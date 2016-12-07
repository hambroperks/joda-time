//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/Joda-Time/src/main/java/org/joda/time/field/PreciseDurationField.java
//

#include "J2ObjC_source.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/field/BaseDurationField.h"
#include "org/joda/time/field/FieldUtils.h"
#include "org/joda/time/field/PreciseDurationField.h"

@interface OrgJodaTimeFieldPreciseDurationField () {
 @public
  /*!
   @brief The size of the unit
   */
  jlong iUnitMillis_;
}

@end

inline jlong OrgJodaTimeFieldPreciseDurationField_get_serialVersionUID();
#define OrgJodaTimeFieldPreciseDurationField_serialVersionUID -8346152187724495365LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeFieldPreciseDurationField, serialVersionUID, jlong)

@implementation OrgJodaTimeFieldPreciseDurationField

- (instancetype)initWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type
                                            withLong:(jlong)unitMillis {
  OrgJodaTimeFieldPreciseDurationField_initWithOrgJodaTimeDurationFieldType_withLong_(self, type, unitMillis);
  return self;
}

- (jboolean)isPrecise {
  return true;
}

- (jlong)getUnitMillis {
  return iUnitMillis_;
}

- (jlong)getValueAsLongWithLong:(jlong)duration
                       withLong:(jlong)instant {
  return duration / iUnitMillis_;
}

- (jlong)getMillisWithInt:(jint)value
                 withLong:(jlong)instant {
  return value * iUnitMillis_;
}

- (jlong)getMillisWithLong:(jlong)value
                  withLong:(jlong)instant {
  return OrgJodaTimeFieldFieldUtils_safeMultiplyWithLong_withLong_(value, iUnitMillis_);
}

- (jlong)addWithLong:(jlong)instant
             withInt:(jint)value {
  jlong addition = value * iUnitMillis_;
  return OrgJodaTimeFieldFieldUtils_safeAddWithLong_withLong_(instant, addition);
}

- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)value {
  jlong addition = OrgJodaTimeFieldFieldUtils_safeMultiplyWithLong_withLong_(value, iUnitMillis_);
  return OrgJodaTimeFieldFieldUtils_safeAddWithLong_withLong_(instant, addition);
}

- (jlong)getDifferenceAsLongWithLong:(jlong)minuendInstant
                            withLong:(jlong)subtrahendInstant {
  jlong difference = OrgJodaTimeFieldFieldUtils_safeSubtractWithLong_withLong_(minuendInstant, subtrahendInstant);
  return difference / iUnitMillis_;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) {
    return true;
  }
  else if ([obj isKindOfClass:[OrgJodaTimeFieldPreciseDurationField class]]) {
    OrgJodaTimeFieldPreciseDurationField *other = (OrgJodaTimeFieldPreciseDurationField *) cast_chk(obj, [OrgJodaTimeFieldPreciseDurationField class]);
    return ([self getType] == [((OrgJodaTimeFieldPreciseDurationField *) nil_chk(other)) getType]) && (iUnitMillis_ == other->iUnitMillis_);
  }
  return false;
}

- (NSUInteger)hash {
  jlong millis = iUnitMillis_;
  jint hash_ = (jint) (millis ^ (JreURShift64(millis, 32)));
  hash_ += ((jint) [((OrgJodaTimeDurationFieldType *) nil_chk([self getType])) hash]);
  return hash_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 5, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 7, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 10, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJodaTimeDurationFieldType:withLong:);
  methods[1].selector = @selector(isPrecise);
  methods[2].selector = @selector(getUnitMillis);
  methods[3].selector = @selector(getValueAsLongWithLong:withLong:);
  methods[4].selector = @selector(getMillisWithInt:withLong:);
  methods[5].selector = @selector(getMillisWithLong:withLong:);
  methods[6].selector = @selector(addWithLong:withInt:);
  methods[7].selector = @selector(addWithLong:withLong:);
  methods[8].selector = @selector(getDifferenceAsLongWithLong:withLong:);
  methods[9].selector = @selector(isEqual:);
  methods[10].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeFieldPreciseDurationField_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "iUnitMillis_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgJodaTimeDurationFieldType;J", "getValueAsLong", "JJ", "getMillis", "IJ", "add", "JI", "getDifferenceAsLong", "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _OrgJodaTimeFieldPreciseDurationField = { "PreciseDurationField", "org.joda.time.field", ptrTable, methods, fields, 7, 0x1, 11, 2, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeFieldPreciseDurationField;
}

@end

void OrgJodaTimeFieldPreciseDurationField_initWithOrgJodaTimeDurationFieldType_withLong_(OrgJodaTimeFieldPreciseDurationField *self, OrgJodaTimeDurationFieldType *type, jlong unitMillis) {
  OrgJodaTimeFieldBaseDurationField_initWithOrgJodaTimeDurationFieldType_(self, type);
  self->iUnitMillis_ = unitMillis;
}

OrgJodaTimeFieldPreciseDurationField *new_OrgJodaTimeFieldPreciseDurationField_initWithOrgJodaTimeDurationFieldType_withLong_(OrgJodaTimeDurationFieldType *type, jlong unitMillis) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFieldPreciseDurationField, initWithOrgJodaTimeDurationFieldType_withLong_, type, unitMillis)
}

OrgJodaTimeFieldPreciseDurationField *create_OrgJodaTimeFieldPreciseDurationField_initWithOrgJodaTimeDurationFieldType_withLong_(OrgJodaTimeDurationFieldType *type, jlong unitMillis) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFieldPreciseDurationField, initWithOrgJodaTimeDurationFieldType_withLong_, type, unitMillis)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFieldPreciseDurationField)
