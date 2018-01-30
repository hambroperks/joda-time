//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/field/RemainderDateTimeField.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/field/DecoratedDateTimeField.h"
#include "org/joda/time/field/DividedDateTimeField.h"
#include "org/joda/time/field/FieldUtils.h"
#include "org/joda/time/field/RemainderDateTimeField.h"
#include "org/joda/time/field/ScaledDurationField.h"

@interface OrgJodaTimeFieldRemainderDateTimeField ()

- (jint)getDividedWithInt:(jint)value;

@end

inline jlong OrgJodaTimeFieldRemainderDateTimeField_get_serialVersionUID(void);
#define OrgJodaTimeFieldRemainderDateTimeField_serialVersionUID 5708241235177666790LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeFieldRemainderDateTimeField, serialVersionUID, jlong)

__attribute__((unused)) static jint OrgJodaTimeFieldRemainderDateTimeField_getDividedWithInt_(OrgJodaTimeFieldRemainderDateTimeField *self, jint value);

@implementation OrgJodaTimeFieldRemainderDateTimeField

- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type
                                         withInt:(jint)divisor {
  OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(self, field, type, divisor);
  return self;
}

- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                    withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)rangeField
                withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type
                                         withInt:(jint)divisor {
  OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_withInt_(self, field, rangeField, type, divisor);
  return self;
}

- (instancetype)initWithOrgJodaTimeFieldDividedDateTimeField:(OrgJodaTimeFieldDividedDateTimeField *)dividedField {
  OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_(self, dividedField);
  return self;
}

- (instancetype)initWithOrgJodaTimeFieldDividedDateTimeField:(OrgJodaTimeFieldDividedDateTimeField *)dividedField
                            withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type {
  OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_withOrgJodaTimeDateTimeFieldType_(self, dividedField, type);
  return self;
}

- (instancetype)initWithOrgJodaTimeFieldDividedDateTimeField:(OrgJodaTimeFieldDividedDateTimeField *)dividedField
                                withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)durationField
                            withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type {
  OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_(self, dividedField, durationField, type);
  return self;
}

- (jint)getWithLong:(jlong)instant {
  jint value = [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) getWithLong:instant];
  if (value >= 0) {
    return value % iDivisor_;
  }
  else {
    return (iDivisor_ - 1) + ((value + 1) % iDivisor_);
  }
}

- (jlong)addWrapFieldWithLong:(jlong)instant
                      withInt:(jint)amount {
  return [self setWithLong:instant withInt:OrgJodaTimeFieldFieldUtils_getWrappedValueWithInt_withInt_withInt_withInt_([self getWithLong:instant], amount, 0, iDivisor_ - 1)];
}

- (jlong)setWithLong:(jlong)instant
             withInt:(jint)value {
  OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithOrgJodaTimeDateTimeField_withInt_withInt_withInt_(self, value, 0, iDivisor_ - 1);
  jint divided = OrgJodaTimeFieldRemainderDateTimeField_getDividedWithInt_(self, [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) getWithLong:instant]);
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) setWithLong:instant withInt:divided * iDivisor_ + value];
}

- (OrgJodaTimeDurationField *)getDurationField {
  return iDurationField_;
}

- (OrgJodaTimeDurationField *)getRangeDurationField {
  return iRangeField_;
}

- (jint)getMinimumValue {
  return 0;
}

- (jint)getMaximumValue {
  return iDivisor_ - 1;
}

- (jlong)roundFloorWithLong:(jlong)instant {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) roundFloorWithLong:instant];
}

- (jlong)roundCeilingWithLong:(jlong)instant {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) roundCeilingWithLong:instant];
}

- (jlong)roundHalfFloorWithLong:(jlong)instant {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) roundHalfFloorWithLong:instant];
}

- (jlong)roundHalfCeilingWithLong:(jlong)instant {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) roundHalfCeilingWithLong:instant];
}

- (jlong)roundHalfEvenWithLong:(jlong)instant {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) roundHalfEvenWithLong:instant];
}

- (jlong)remainderWithLong:(jlong)instant {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) remainderWithLong:instant];
}

- (jint)getDivisor {
  return iDivisor_;
}

- (jint)getDividedWithInt:(jint)value {
  return OrgJodaTimeFieldRemainderDateTimeField_getDividedWithInt_(self, value);
}

- (void)dealloc {
  RELEASE_(iDurationField_);
  RELEASE_(iRangeField_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 9, 8, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationField;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationField;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 10, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 11, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 12, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 13, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 14, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 15, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 16, 17, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJodaTimeDateTimeField:withOrgJodaTimeDateTimeFieldType:withInt:);
  methods[1].selector = @selector(initWithOrgJodaTimeDateTimeField:withOrgJodaTimeDurationField:withOrgJodaTimeDateTimeFieldType:withInt:);
  methods[2].selector = @selector(initWithOrgJodaTimeFieldDividedDateTimeField:);
  methods[3].selector = @selector(initWithOrgJodaTimeFieldDividedDateTimeField:withOrgJodaTimeDateTimeFieldType:);
  methods[4].selector = @selector(initWithOrgJodaTimeFieldDividedDateTimeField:withOrgJodaTimeDurationField:withOrgJodaTimeDateTimeFieldType:);
  methods[5].selector = @selector(getWithLong:);
  methods[6].selector = @selector(addWrapFieldWithLong:withInt:);
  methods[7].selector = @selector(setWithLong:withInt:);
  methods[8].selector = @selector(getDurationField);
  methods[9].selector = @selector(getRangeDurationField);
  methods[10].selector = @selector(getMinimumValue);
  methods[11].selector = @selector(getMaximumValue);
  methods[12].selector = @selector(roundFloorWithLong:);
  methods[13].selector = @selector(roundCeilingWithLong:);
  methods[14].selector = @selector(roundHalfFloorWithLong:);
  methods[15].selector = @selector(roundHalfCeilingWithLong:);
  methods[16].selector = @selector(roundHalfEvenWithLong:);
  methods[17].selector = @selector(remainderWithLong:);
  methods[18].selector = @selector(getDivisor);
  methods[19].selector = @selector(getDividedWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeFieldRemainderDateTimeField_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "iDivisor_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "iDurationField_", "LOrgJodaTimeDurationField;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "iRangeField_", "LOrgJodaTimeDurationField;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgJodaTimeDateTimeField;LOrgJodaTimeDateTimeFieldType;I", "LOrgJodaTimeDateTimeField;LOrgJodaTimeDurationField;LOrgJodaTimeDateTimeFieldType;I", "LOrgJodaTimeFieldDividedDateTimeField;", "LOrgJodaTimeFieldDividedDateTimeField;LOrgJodaTimeDateTimeFieldType;", "LOrgJodaTimeFieldDividedDateTimeField;LOrgJodaTimeDurationField;LOrgJodaTimeDateTimeFieldType;", "get", "J", "addWrapField", "JI", "set", "roundFloor", "roundCeiling", "roundHalfFloor", "roundHalfCeiling", "roundHalfEven", "remainder", "getDivided", "I" };
  static const J2ObjcClassInfo _OrgJodaTimeFieldRemainderDateTimeField = { "RemainderDateTimeField", "org.joda.time.field", ptrTable, methods, fields, 7, 0x1, 20, 4, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeFieldRemainderDateTimeField;
}

@end

void OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeFieldRemainderDateTimeField *self, OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type, jint divisor) {
  OrgJodaTimeFieldDecoratedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_(self, field, type);
  if (divisor < 2) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"The divisor must be at least 2");
  }
  OrgJodaTimeDurationField *rangeField = [((OrgJodaTimeDateTimeField *) nil_chk(field)) getDurationField];
  if (rangeField == nil) {
    JreStrongAssign(&self->iRangeField_, nil);
  }
  else {
    JreStrongAssignAndConsume(&self->iRangeField_, new_OrgJodaTimeFieldScaledDurationField_initWithOrgJodaTimeDurationField_withOrgJodaTimeDurationFieldType_withInt_(rangeField, [((OrgJodaTimeDateTimeFieldType *) nil_chk(type)) getRangeDurationType], divisor));
  }
  JreStrongAssign(&self->iDurationField_, [field getDurationField]);
  self->iDivisor_ = divisor;
}

OrgJodaTimeFieldRemainderDateTimeField *new_OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type, jint divisor) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFieldRemainderDateTimeField, initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_, field, type, divisor)
}

OrgJodaTimeFieldRemainderDateTimeField *create_OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type, jint divisor) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFieldRemainderDateTimeField, initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_, field, type, divisor)
}

void OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeFieldRemainderDateTimeField *self, OrgJodaTimeDateTimeField *field, OrgJodaTimeDurationField *rangeField, OrgJodaTimeDateTimeFieldType *type, jint divisor) {
  OrgJodaTimeFieldDecoratedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_(self, field, type);
  if (divisor < 2) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"The divisor must be at least 2");
  }
  JreStrongAssign(&self->iRangeField_, rangeField);
  JreStrongAssign(&self->iDurationField_, [((OrgJodaTimeDateTimeField *) nil_chk(field)) getDurationField]);
  self->iDivisor_ = divisor;
}

OrgJodaTimeFieldRemainderDateTimeField *new_OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeDateTimeField *field, OrgJodaTimeDurationField *rangeField, OrgJodaTimeDateTimeFieldType *type, jint divisor) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFieldRemainderDateTimeField, initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_withInt_, field, rangeField, type, divisor)
}

OrgJodaTimeFieldRemainderDateTimeField *create_OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeDateTimeField *field, OrgJodaTimeDurationField *rangeField, OrgJodaTimeDateTimeFieldType *type, jint divisor) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFieldRemainderDateTimeField, initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_withInt_, field, rangeField, type, divisor)
}

void OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_(OrgJodaTimeFieldRemainderDateTimeField *self, OrgJodaTimeFieldDividedDateTimeField *dividedField) {
  OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_withOrgJodaTimeDateTimeFieldType_(self, dividedField, [((OrgJodaTimeFieldDividedDateTimeField *) nil_chk(dividedField)) getType]);
}

OrgJodaTimeFieldRemainderDateTimeField *new_OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_(OrgJodaTimeFieldDividedDateTimeField *dividedField) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFieldRemainderDateTimeField, initWithOrgJodaTimeFieldDividedDateTimeField_, dividedField)
}

OrgJodaTimeFieldRemainderDateTimeField *create_OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_(OrgJodaTimeFieldDividedDateTimeField *dividedField) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFieldRemainderDateTimeField, initWithOrgJodaTimeFieldDividedDateTimeField_, dividedField)
}

void OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeFieldRemainderDateTimeField *self, OrgJodaTimeFieldDividedDateTimeField *dividedField, OrgJodaTimeDateTimeFieldType *type) {
  OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_(self, dividedField, [((OrgJodaTimeDateTimeField *) nil_chk([((OrgJodaTimeFieldDividedDateTimeField *) nil_chk(dividedField)) getWrappedField])) getDurationField], type);
}

OrgJodaTimeFieldRemainderDateTimeField *new_OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeFieldDividedDateTimeField *dividedField, OrgJodaTimeDateTimeFieldType *type) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFieldRemainderDateTimeField, initWithOrgJodaTimeFieldDividedDateTimeField_withOrgJodaTimeDateTimeFieldType_, dividedField, type)
}

OrgJodaTimeFieldRemainderDateTimeField *create_OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeFieldDividedDateTimeField *dividedField, OrgJodaTimeDateTimeFieldType *type) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFieldRemainderDateTimeField, initWithOrgJodaTimeFieldDividedDateTimeField_withOrgJodaTimeDateTimeFieldType_, dividedField, type)
}

void OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeFieldRemainderDateTimeField *self, OrgJodaTimeFieldDividedDateTimeField *dividedField, OrgJodaTimeDurationField *durationField, OrgJodaTimeDateTimeFieldType *type) {
  OrgJodaTimeFieldDecoratedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_(self, [((OrgJodaTimeFieldDividedDateTimeField *) nil_chk(dividedField)) getWrappedField], type);
  self->iDivisor_ = dividedField->iDivisor_;
  JreStrongAssign(&self->iDurationField_, durationField);
  JreStrongAssign(&self->iRangeField_, dividedField->iDurationField_);
}

OrgJodaTimeFieldRemainderDateTimeField *new_OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeFieldDividedDateTimeField *dividedField, OrgJodaTimeDurationField *durationField, OrgJodaTimeDateTimeFieldType *type) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFieldRemainderDateTimeField, initWithOrgJodaTimeFieldDividedDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_, dividedField, durationField, type)
}

OrgJodaTimeFieldRemainderDateTimeField *create_OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeFieldDividedDateTimeField *dividedField, OrgJodaTimeDurationField *durationField, OrgJodaTimeDateTimeFieldType *type) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFieldRemainderDateTimeField, initWithOrgJodaTimeFieldDividedDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_, dividedField, durationField, type)
}

jint OrgJodaTimeFieldRemainderDateTimeField_getDividedWithInt_(OrgJodaTimeFieldRemainderDateTimeField *self, jint value) {
  if (value >= 0) {
    return value / self->iDivisor_;
  }
  else {
    return ((value + 1) / self->iDivisor_) - 1;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFieldRemainderDateTimeField)
