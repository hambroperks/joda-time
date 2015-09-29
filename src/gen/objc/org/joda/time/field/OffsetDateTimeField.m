//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/field/OffsetDateTimeField.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/field/DecoratedDateTimeField.h"
#include "org/joda/time/field/FieldUtils.h"
#include "org/joda/time/field/OffsetDateTimeField.h"

#define OrgJodaTimeFieldOffsetDateTimeField_serialVersionUID 3145790132623583142LL

@interface OrgJodaTimeFieldOffsetDateTimeField () {
 @public
  jint iOffset_;
  jint iMin_;
  jint iMax_;
}

@end

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeFieldOffsetDateTimeField, serialVersionUID, jlong)

@implementation OrgJodaTimeFieldOffsetDateTimeField

- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                                         withInt:(jint)offset {
  OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withInt_(self, field, offset);
  return self;
}

- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type
                                         withInt:(jint)offset {
  OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(self, field, type, offset);
  return self;
}

- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type
                                         withInt:(jint)offset
                                         withInt:(jint)minValue
                                         withInt:(jint)maxValue {
  OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_withInt_withInt_(self, field, type, offset, minValue, maxValue);
  return self;
}

- (jint)getWithLong:(jlong)instant {
  return [super getWithLong:instant] + iOffset_;
}

- (jlong)addWithLong:(jlong)instant
             withInt:(jint)amount {
  instant = [super addWithLong:instant withInt:amount];
  OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithOrgJodaTimeDateTimeField_withInt_withInt_withInt_(self, [self getWithLong:instant], iMin_, iMax_);
  return instant;
}

- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)amount {
  instant = [super addWithLong:instant withLong:amount];
  OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithOrgJodaTimeDateTimeField_withInt_withInt_withInt_(self, [self getWithLong:instant], iMin_, iMax_);
  return instant;
}

- (jlong)addWrapFieldWithLong:(jlong)instant
                      withInt:(jint)amount {
  return [self setWithLong:instant withInt:OrgJodaTimeFieldFieldUtils_getWrappedValueWithInt_withInt_withInt_withInt_([self getWithLong:instant], amount, iMin_, iMax_)];
}

- (jlong)setWithLong:(jlong)instant
             withInt:(jint)value {
  OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithOrgJodaTimeDateTimeField_withInt_withInt_withInt_(self, value, iMin_, iMax_);
  return [super setWithLong:instant withInt:value - iOffset_];
}

- (jboolean)isLeapWithLong:(jlong)instant {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) isLeapWithLong:instant];
}

- (jint)getLeapAmountWithLong:(jlong)instant {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) getLeapAmountWithLong:instant];
}

- (OrgJodaTimeDurationField *)getLeapDurationField {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) getLeapDurationField];
}

- (jint)getMinimumValue {
  return iMin_;
}

- (jint)getMaximumValue {
  return iMax_;
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

- (jint)getOffset {
  return iOffset_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgJodaTimeDateTimeField:withInt:", "OffsetDateTimeField", NULL, 0x1, NULL, NULL },
    { "initWithOrgJodaTimeDateTimeField:withOrgJodaTimeDateTimeFieldType:withInt:", "OffsetDateTimeField", NULL, 0x1, NULL, NULL },
    { "initWithOrgJodaTimeDateTimeField:withOrgJodaTimeDateTimeFieldType:withInt:withInt:withInt:", "OffsetDateTimeField", NULL, 0x1, NULL, NULL },
    { "getWithLong:", "get", "I", 0x1, NULL, NULL },
    { "addWithLong:withInt:", "add", "J", 0x1, NULL, NULL },
    { "addWithLong:withLong:", "add", "J", 0x1, NULL, NULL },
    { "addWrapFieldWithLong:withInt:", "addWrapField", "J", 0x1, NULL, NULL },
    { "setWithLong:withInt:", "set", "J", 0x1, NULL, NULL },
    { "isLeapWithLong:", "isLeap", "Z", 0x1, NULL, NULL },
    { "getLeapAmountWithLong:", "getLeapAmount", "I", 0x1, NULL, NULL },
    { "getLeapDurationField", NULL, "Lorg.joda.time.DurationField;", 0x1, NULL, NULL },
    { "getMinimumValue", NULL, "I", 0x1, NULL, NULL },
    { "getMaximumValue", NULL, "I", 0x1, NULL, NULL },
    { "roundFloorWithLong:", "roundFloor", "J", 0x1, NULL, NULL },
    { "roundCeilingWithLong:", "roundCeiling", "J", 0x1, NULL, NULL },
    { "roundHalfFloorWithLong:", "roundHalfFloor", "J", 0x1, NULL, NULL },
    { "roundHalfCeilingWithLong:", "roundHalfCeiling", "J", 0x1, NULL, NULL },
    { "roundHalfEvenWithLong:", "roundHalfEven", "J", 0x1, NULL, NULL },
    { "remainderWithLong:", "remainder", "J", 0x1, NULL, NULL },
    { "getOffset", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeFieldOffsetDateTimeField_serialVersionUID },
    { "iOffset_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "iMin_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "iMax_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgJodaTimeFieldOffsetDateTimeField = { 2, "OffsetDateTimeField", "org.joda.time.field", NULL, 0x1, 20, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeFieldOffsetDateTimeField;
}

@end

void OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withInt_(OrgJodaTimeFieldOffsetDateTimeField *self, OrgJodaTimeDateTimeField *field, jint offset) {
  OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_withInt_withInt_(self, field, (field == nil ? nil : [field getType]), offset, JavaLangInteger_MIN_VALUE, JavaLangInteger_MAX_VALUE);
}

OrgJodaTimeFieldOffsetDateTimeField *new_OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withInt_(OrgJodaTimeDateTimeField *field, jint offset) {
  OrgJodaTimeFieldOffsetDateTimeField *self = [OrgJodaTimeFieldOffsetDateTimeField alloc];
  OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withInt_(self, field, offset);
  return self;
}

void OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeFieldOffsetDateTimeField *self, OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type, jint offset) {
  OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_withInt_withInt_(self, field, type, offset, JavaLangInteger_MIN_VALUE, JavaLangInteger_MAX_VALUE);
}

OrgJodaTimeFieldOffsetDateTimeField *new_OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type, jint offset) {
  OrgJodaTimeFieldOffsetDateTimeField *self = [OrgJodaTimeFieldOffsetDateTimeField alloc];
  OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(self, field, type, offset);
  return self;
}

void OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_withInt_withInt_(OrgJodaTimeFieldOffsetDateTimeField *self, OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type, jint offset, jint minValue, jint maxValue) {
  OrgJodaTimeFieldDecoratedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_(self, field, type);
  if (offset == 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"The offset cannot be zero") autorelease];
  }
  self->iOffset_ = offset;
  if (minValue < ([((OrgJodaTimeDateTimeField *) nil_chk(field)) getMinimumValue] + offset)) {
    self->iMin_ = [field getMinimumValue] + offset;
  }
  else {
    self->iMin_ = minValue;
  }
  if (maxValue > ([field getMaximumValue] + offset)) {
    self->iMax_ = [field getMaximumValue] + offset;
  }
  else {
    self->iMax_ = maxValue;
  }
}

OrgJodaTimeFieldOffsetDateTimeField *new_OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_withInt_withInt_(OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type, jint offset, jint minValue, jint maxValue) {
  OrgJodaTimeFieldOffsetDateTimeField *self = [OrgJodaTimeFieldOffsetDateTimeField alloc];
  OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_withInt_withInt_(self, field, type, offset, minValue, maxValue);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFieldOffsetDateTimeField)
