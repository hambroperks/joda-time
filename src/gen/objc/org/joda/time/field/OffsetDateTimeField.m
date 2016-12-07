//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/Joda-Time/src/main/java/org/joda/time/field/OffsetDateTimeField.java
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

@interface OrgJodaTimeFieldOffsetDateTimeField () {
 @public
  jint iOffset_;
  jint iMin_;
  jint iMax_;
}

@end

inline jlong OrgJodaTimeFieldOffsetDateTimeField_get_serialVersionUID();
#define OrgJodaTimeFieldOffsetDateTimeField_serialVersionUID 3145790132623583142LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeFieldOffsetDateTimeField, serialVersionUID, jlong)

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
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 5, 7, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 8, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 9, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 10, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 11, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationField;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 12, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 13, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 14, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 15, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 16, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 17, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJodaTimeDateTimeField:withInt:);
  methods[1].selector = @selector(initWithOrgJodaTimeDateTimeField:withOrgJodaTimeDateTimeFieldType:withInt:);
  methods[2].selector = @selector(initWithOrgJodaTimeDateTimeField:withOrgJodaTimeDateTimeFieldType:withInt:withInt:withInt:);
  methods[3].selector = @selector(getWithLong:);
  methods[4].selector = @selector(addWithLong:withInt:);
  methods[5].selector = @selector(addWithLong:withLong:);
  methods[6].selector = @selector(addWrapFieldWithLong:withInt:);
  methods[7].selector = @selector(setWithLong:withInt:);
  methods[8].selector = @selector(isLeapWithLong:);
  methods[9].selector = @selector(getLeapAmountWithLong:);
  methods[10].selector = @selector(getLeapDurationField);
  methods[11].selector = @selector(getMinimumValue);
  methods[12].selector = @selector(getMaximumValue);
  methods[13].selector = @selector(roundFloorWithLong:);
  methods[14].selector = @selector(roundCeilingWithLong:);
  methods[15].selector = @selector(roundHalfFloorWithLong:);
  methods[16].selector = @selector(roundHalfCeilingWithLong:);
  methods[17].selector = @selector(roundHalfEvenWithLong:);
  methods[18].selector = @selector(remainderWithLong:);
  methods[19].selector = @selector(getOffset);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeFieldOffsetDateTimeField_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "iOffset_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "iMin_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "iMax_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgJodaTimeDateTimeField;I", "LOrgJodaTimeDateTimeField;LOrgJodaTimeDateTimeFieldType;I", "LOrgJodaTimeDateTimeField;LOrgJodaTimeDateTimeFieldType;III", "get", "J", "add", "JI", "JJ", "addWrapField", "set", "isLeap", "getLeapAmount", "roundFloor", "roundCeiling", "roundHalfFloor", "roundHalfCeiling", "roundHalfEven", "remainder" };
  static const J2ObjcClassInfo _OrgJodaTimeFieldOffsetDateTimeField = { "OffsetDateTimeField", "org.joda.time.field", ptrTable, methods, fields, 7, 0x1, 20, 4, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeFieldOffsetDateTimeField;
}

@end

void OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withInt_(OrgJodaTimeFieldOffsetDateTimeField *self, OrgJodaTimeDateTimeField *field, jint offset) {
  OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_withInt_withInt_(self, field, (field == nil ? nil : [field getType]), offset, JavaLangInteger_MIN_VALUE, JavaLangInteger_MAX_VALUE);
}

OrgJodaTimeFieldOffsetDateTimeField *new_OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withInt_(OrgJodaTimeDateTimeField *field, jint offset) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFieldOffsetDateTimeField, initWithOrgJodaTimeDateTimeField_withInt_, field, offset)
}

OrgJodaTimeFieldOffsetDateTimeField *create_OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withInt_(OrgJodaTimeDateTimeField *field, jint offset) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFieldOffsetDateTimeField, initWithOrgJodaTimeDateTimeField_withInt_, field, offset)
}

void OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeFieldOffsetDateTimeField *self, OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type, jint offset) {
  OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_withInt_withInt_(self, field, type, offset, JavaLangInteger_MIN_VALUE, JavaLangInteger_MAX_VALUE);
}

OrgJodaTimeFieldOffsetDateTimeField *new_OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type, jint offset) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFieldOffsetDateTimeField, initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_, field, type, offset)
}

OrgJodaTimeFieldOffsetDateTimeField *create_OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type, jint offset) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFieldOffsetDateTimeField, initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_, field, type, offset)
}

void OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_withInt_withInt_(OrgJodaTimeFieldOffsetDateTimeField *self, OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type, jint offset, jint minValue, jint maxValue) {
  OrgJodaTimeFieldDecoratedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_(self, field, type);
  if (offset == 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"The offset cannot be zero");
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
  J2OBJC_NEW_IMPL(OrgJodaTimeFieldOffsetDateTimeField, initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_withInt_withInt_, field, type, offset, minValue, maxValue)
}

OrgJodaTimeFieldOffsetDateTimeField *create_OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_withInt_withInt_(OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type, jint offset, jint minValue, jint maxValue) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFieldOffsetDateTimeField, initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_withInt_withInt_, field, type, offset, minValue, maxValue)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFieldOffsetDateTimeField)
