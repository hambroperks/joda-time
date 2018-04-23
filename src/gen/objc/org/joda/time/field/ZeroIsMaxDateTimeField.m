//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/field/ZeroIsMaxDateTimeField.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/ReadablePartial.h"
#include "org/joda/time/field/DecoratedDateTimeField.h"
#include "org/joda/time/field/FieldUtils.h"
#include "org/joda/time/field/ZeroIsMaxDateTimeField.h"

inline jlong OrgJodaTimeFieldZeroIsMaxDateTimeField_get_serialVersionUID(void);
#define OrgJodaTimeFieldZeroIsMaxDateTimeField_serialVersionUID 961749798233026866LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeFieldZeroIsMaxDateTimeField, serialVersionUID, jlong)

@implementation OrgJodaTimeFieldZeroIsMaxDateTimeField

- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type {
  OrgJodaTimeFieldZeroIsMaxDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_(self, field, type);
  return self;
}

- (jint)getWithLong:(jlong)instant {
  jint value = [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) getWithLong:instant];
  if (value == 0) {
    value = [self getMaximumValue];
  }
  return value;
}

- (jlong)addWithLong:(jlong)instant
             withInt:(jint)value {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) addWithLong:instant withInt:value];
}

- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)value {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) addWithLong:instant withLong:value];
}

- (jlong)addWrapFieldWithLong:(jlong)instant
                      withInt:(jint)value {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) addWrapFieldWithLong:instant withInt:value];
}

- (IOSIntArray *)addWrapFieldWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant
                                                    withInt:(jint)fieldIndex
                                               withIntArray:(IOSIntArray *)values
                                                    withInt:(jint)valueToAdd {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) addWrapFieldWithOrgJodaTimeReadablePartial:instant withInt:fieldIndex withIntArray:values withInt:valueToAdd];
}

- (jint)getDifferenceWithLong:(jlong)minuendInstant
                     withLong:(jlong)subtrahendInstant {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) getDifferenceWithLong:minuendInstant withLong:subtrahendInstant];
}

- (jlong)getDifferenceAsLongWithLong:(jlong)minuendInstant
                            withLong:(jlong)subtrahendInstant {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) getDifferenceAsLongWithLong:minuendInstant withLong:subtrahendInstant];
}

- (jlong)setWithLong:(jlong)instant
             withInt:(jint)value {
  jint max = [self getMaximumValue];
  OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithOrgJodaTimeDateTimeField_withInt_withInt_withInt_(self, value, 1, max);
  if (value == max) {
    value = 0;
  }
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) setWithLong:instant withInt:value];
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
  return 1;
}

- (jint)getMinimumValueWithLong:(jlong)instant {
  return 1;
}

- (jint)getMinimumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant {
  return 1;
}

- (jint)getMinimumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant
                                         withIntArray:(IOSIntArray *)values {
  return 1;
}

- (jint)getMaximumValue {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) getMaximumValue] + 1;
}

- (jint)getMaximumValueWithLong:(jlong)instant {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) getMaximumValueWithLong:instant] + 1;
}

- (jint)getMaximumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) getMaximumValueWithOrgJodaTimeReadablePartial:instant] + 1;
}

- (jint)getMaximumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant
                                         withIntArray:(IOSIntArray *)values {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getWrappedField])) getMaximumValueWithOrgJodaTimeReadablePartial:instant withIntArray:values] + 1;
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

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 3, 5, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 6, 4, -1, -1, -1, -1 },
    { NULL, "[I", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 8, 5, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 9, 5, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 10, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 11, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 12, 2, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationField;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 13, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 13, 15, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 16, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 16, 14, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 16, 15, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 17, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 18, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 19, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 20, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 21, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 22, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJodaTimeDateTimeField:withOrgJodaTimeDateTimeFieldType:);
  methods[1].selector = @selector(getWithLong:);
  methods[2].selector = @selector(addWithLong:withInt:);
  methods[3].selector = @selector(addWithLong:withLong:);
  methods[4].selector = @selector(addWrapFieldWithLong:withInt:);
  methods[5].selector = @selector(addWrapFieldWithOrgJodaTimeReadablePartial:withInt:withIntArray:withInt:);
  methods[6].selector = @selector(getDifferenceWithLong:withLong:);
  methods[7].selector = @selector(getDifferenceAsLongWithLong:withLong:);
  methods[8].selector = @selector(setWithLong:withInt:);
  methods[9].selector = @selector(isLeapWithLong:);
  methods[10].selector = @selector(getLeapAmountWithLong:);
  methods[11].selector = @selector(getLeapDurationField);
  methods[12].selector = @selector(getMinimumValue);
  methods[13].selector = @selector(getMinimumValueWithLong:);
  methods[14].selector = @selector(getMinimumValueWithOrgJodaTimeReadablePartial:);
  methods[15].selector = @selector(getMinimumValueWithOrgJodaTimeReadablePartial:withIntArray:);
  methods[16].selector = @selector(getMaximumValue);
  methods[17].selector = @selector(getMaximumValueWithLong:);
  methods[18].selector = @selector(getMaximumValueWithOrgJodaTimeReadablePartial:);
  methods[19].selector = @selector(getMaximumValueWithOrgJodaTimeReadablePartial:withIntArray:);
  methods[20].selector = @selector(roundFloorWithLong:);
  methods[21].selector = @selector(roundCeilingWithLong:);
  methods[22].selector = @selector(roundHalfFloorWithLong:);
  methods[23].selector = @selector(roundHalfCeilingWithLong:);
  methods[24].selector = @selector(roundHalfEvenWithLong:);
  methods[25].selector = @selector(remainderWithLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeFieldZeroIsMaxDateTimeField_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgJodaTimeDateTimeField;LOrgJodaTimeDateTimeFieldType;", "get", "J", "add", "JI", "JJ", "addWrapField", "LOrgJodaTimeReadablePartial;I[II", "getDifference", "getDifferenceAsLong", "set", "isLeap", "getLeapAmount", "getMinimumValue", "LOrgJodaTimeReadablePartial;", "LOrgJodaTimeReadablePartial;[I", "getMaximumValue", "roundFloor", "roundCeiling", "roundHalfFloor", "roundHalfCeiling", "roundHalfEven", "remainder" };
  static const J2ObjcClassInfo _OrgJodaTimeFieldZeroIsMaxDateTimeField = { "ZeroIsMaxDateTimeField", "org.joda.time.field", ptrTable, methods, fields, 7, 0x11, 26, 1, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeFieldZeroIsMaxDateTimeField;
}

@end

void OrgJodaTimeFieldZeroIsMaxDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeFieldZeroIsMaxDateTimeField *self, OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type) {
  OrgJodaTimeFieldDecoratedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_(self, field, type);
  if ([((OrgJodaTimeDateTimeField *) nil_chk(field)) getMinimumValue] != 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Wrapped field's minumum value must be zero");
  }
}

OrgJodaTimeFieldZeroIsMaxDateTimeField *new_OrgJodaTimeFieldZeroIsMaxDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFieldZeroIsMaxDateTimeField, initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_, field, type)
}

OrgJodaTimeFieldZeroIsMaxDateTimeField *create_OrgJodaTimeFieldZeroIsMaxDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFieldZeroIsMaxDateTimeField, initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_, field, type)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFieldZeroIsMaxDateTimeField)
