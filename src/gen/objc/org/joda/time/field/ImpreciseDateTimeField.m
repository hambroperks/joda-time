//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/field/ImpreciseDateTimeField.java
//

#include "J2ObjC_source.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/field/BaseDateTimeField.h"
#include "org/joda/time/field/BaseDurationField.h"
#include "org/joda/time/field/FieldUtils.h"
#include "org/joda/time/field/ImpreciseDateTimeField.h"

#define OrgJodaTimeFieldImpreciseDateTimeField_serialVersionUID 7190739608550251860LL

@interface OrgJodaTimeFieldImpreciseDateTimeField () {
 @public
  OrgJodaTimeDurationField *iDurationField_;
}

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeFieldImpreciseDateTimeField, iDurationField_, OrgJodaTimeDurationField *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeFieldImpreciseDateTimeField, serialVersionUID, jlong)

#define OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField_serialVersionUID -203813474600094134LL

@interface OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField : OrgJodaTimeFieldBaseDurationField {
 @public
  OrgJodaTimeFieldImpreciseDateTimeField *this$0_;
}

- (instancetype)initWithOrgJodaTimeFieldImpreciseDateTimeField:(OrgJodaTimeFieldImpreciseDateTimeField *)outer$
                              withOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type;

- (jboolean)isPrecise;

- (jlong)getUnitMillis;

- (jint)getValueWithLong:(jlong)duration
                withLong:(jlong)instant;

- (jlong)getValueAsLongWithLong:(jlong)duration
                       withLong:(jlong)instant;

- (jlong)getMillisWithInt:(jint)value
                 withLong:(jlong)instant;

- (jlong)getMillisWithLong:(jlong)value
                  withLong:(jlong)instant;

- (jlong)addWithLong:(jlong)instant
             withInt:(jint)value;

- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)value;

- (jint)getDifferenceWithLong:(jlong)minuendInstant
                     withLong:(jlong)subtrahendInstant;

- (jlong)getDifferenceAsLongWithLong:(jlong)minuendInstant
                            withLong:(jlong)subtrahendInstant;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField)

J2OBJC_FIELD_SETTER(OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField, this$0_, OrgJodaTimeFieldImpreciseDateTimeField *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField, serialVersionUID, jlong)

__attribute__((unused)) static void OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField_initWithOrgJodaTimeFieldImpreciseDateTimeField_withOrgJodaTimeDurationFieldType_(OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField *self, OrgJodaTimeFieldImpreciseDateTimeField *outer$, OrgJodaTimeDurationFieldType *type);

__attribute__((unused)) static OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField *new_OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField_initWithOrgJodaTimeFieldImpreciseDateTimeField_withOrgJodaTimeDurationFieldType_(OrgJodaTimeFieldImpreciseDateTimeField *outer$, OrgJodaTimeDurationFieldType *type) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField)

@implementation OrgJodaTimeFieldImpreciseDateTimeField

- (instancetype)initWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type
                                            withLong:(jlong)unitMillis {
  OrgJodaTimeFieldImpreciseDateTimeField_initWithOrgJodaTimeDateTimeFieldType_withLong_(self, type, unitMillis);
  return self;
}

- (jint)getWithLong:(jlong)instant {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)setWithLong:(jlong)instant
             withInt:(jint)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)addWithLong:(jlong)instant
             withInt:(jint)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)getDifferenceWithLong:(jlong)minuendInstant
                     withLong:(jlong)subtrahendInstant {
  return OrgJodaTimeFieldFieldUtils_safeToIntWithLong_([self getDifferenceAsLongWithLong:minuendInstant withLong:subtrahendInstant]);
}

- (jlong)getDifferenceAsLongWithLong:(jlong)minuendInstant
                            withLong:(jlong)subtrahendInstant {
  if (minuendInstant < subtrahendInstant) {
    return -[self getDifferenceAsLongWithLong:subtrahendInstant withLong:minuendInstant];
  }
  jlong difference = (minuendInstant - subtrahendInstant) / iUnitMillis_;
  if ([self addWithLong:subtrahendInstant withLong:difference] < minuendInstant) {
    do {
      difference++;
    }
    while ([self addWithLong:subtrahendInstant withLong:difference] <= minuendInstant);
    difference--;
  }
  else if ([self addWithLong:subtrahendInstant withLong:difference] > minuendInstant) {
    do {
      difference--;
    }
    while ([self addWithLong:subtrahendInstant withLong:difference] > minuendInstant);
  }
  return difference;
}

- (OrgJodaTimeDurationField *)getDurationField {
  return iDurationField_;
}

- (OrgJodaTimeDurationField *)getRangeDurationField {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)roundFloorWithLong:(jlong)instant {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getDurationUnitMillis {
  return iUnitMillis_;
}

- (void)dealloc {
  RELEASE_(iDurationField_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgJodaTimeDateTimeFieldType:withLong:", "ImpreciseDateTimeField", NULL, 0x1, NULL, NULL },
    { "getWithLong:", "get", "I", 0x401, NULL, NULL },
    { "setWithLong:withInt:", "set", "J", 0x401, NULL, NULL },
    { "addWithLong:withInt:", "add", "J", 0x401, NULL, NULL },
    { "addWithLong:withLong:", "add", "J", 0x401, NULL, NULL },
    { "getDifferenceWithLong:withLong:", "getDifference", "I", 0x1, NULL, NULL },
    { "getDifferenceAsLongWithLong:withLong:", "getDifferenceAsLong", "J", 0x1, NULL, NULL },
    { "getDurationField", NULL, "Lorg.joda.time.DurationField;", 0x11, NULL, NULL },
    { "getRangeDurationField", NULL, "Lorg.joda.time.DurationField;", 0x401, NULL, NULL },
    { "roundFloorWithLong:", "roundFloor", "J", 0x401, NULL, NULL },
    { "getDurationUnitMillis", NULL, "J", 0x14, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeFieldImpreciseDateTimeField_serialVersionUID },
    { "iUnitMillis_", NULL, 0x10, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "iDurationField_", NULL, 0x12, "Lorg.joda.time.DurationField;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.joda.time.field.ImpreciseDateTimeField$LinkedDurationField;"};
  static const J2ObjcClassInfo _OrgJodaTimeFieldImpreciseDateTimeField = { 2, "ImpreciseDateTimeField", "org.joda.time.field", NULL, 0x401, 11, methods, 3, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgJodaTimeFieldImpreciseDateTimeField;
}

@end

void OrgJodaTimeFieldImpreciseDateTimeField_initWithOrgJodaTimeDateTimeFieldType_withLong_(OrgJodaTimeFieldImpreciseDateTimeField *self, OrgJodaTimeDateTimeFieldType *type, jlong unitMillis) {
  OrgJodaTimeFieldBaseDateTimeField_initWithOrgJodaTimeDateTimeFieldType_(self, type);
  self->iUnitMillis_ = unitMillis;
  JreStrongAssignAndConsume(&self->iDurationField_, new_OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField_initWithOrgJodaTimeFieldImpreciseDateTimeField_withOrgJodaTimeDurationFieldType_(self, [((OrgJodaTimeDateTimeFieldType *) nil_chk(type)) getDurationType]));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFieldImpreciseDateTimeField)

@implementation OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField

- (instancetype)initWithOrgJodaTimeFieldImpreciseDateTimeField:(OrgJodaTimeFieldImpreciseDateTimeField *)outer$
                              withOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type {
  OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField_initWithOrgJodaTimeFieldImpreciseDateTimeField_withOrgJodaTimeDurationFieldType_(self, outer$, type);
  return self;
}

- (jboolean)isPrecise {
  return false;
}

- (jlong)getUnitMillis {
  return this$0_->iUnitMillis_;
}

- (jint)getValueWithLong:(jlong)duration
                withLong:(jlong)instant {
  return [this$0_ getDifferenceWithLong:instant + duration withLong:instant];
}

- (jlong)getValueAsLongWithLong:(jlong)duration
                       withLong:(jlong)instant {
  return [this$0_ getDifferenceAsLongWithLong:instant + duration withLong:instant];
}

- (jlong)getMillisWithInt:(jint)value
                 withLong:(jlong)instant {
  return [this$0_ addWithLong:instant withInt:value] - instant;
}

- (jlong)getMillisWithLong:(jlong)value
                  withLong:(jlong)instant {
  return [this$0_ addWithLong:instant withLong:value] - instant;
}

- (jlong)addWithLong:(jlong)instant
             withInt:(jint)value {
  return [this$0_ addWithLong:instant withInt:value];
}

- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)value {
  return [this$0_ addWithLong:instant withLong:value];
}

- (jint)getDifferenceWithLong:(jlong)minuendInstant
                     withLong:(jlong)subtrahendInstant {
  return [this$0_ getDifferenceWithLong:minuendInstant withLong:subtrahendInstant];
}

- (jlong)getDifferenceAsLongWithLong:(jlong)minuendInstant
                            withLong:(jlong)subtrahendInstant {
  return [this$0_ getDifferenceAsLongWithLong:minuendInstant withLong:subtrahendInstant];
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgJodaTimeFieldImpreciseDateTimeField:withOrgJodaTimeDurationFieldType:", "LinkedDurationField", NULL, 0x0, NULL, NULL },
    { "isPrecise", NULL, "Z", 0x1, NULL, NULL },
    { "getUnitMillis", NULL, "J", 0x1, NULL, NULL },
    { "getValueWithLong:withLong:", "getValue", "I", 0x1, NULL, NULL },
    { "getValueAsLongWithLong:withLong:", "getValueAsLong", "J", 0x1, NULL, NULL },
    { "getMillisWithInt:withLong:", "getMillis", "J", 0x1, NULL, NULL },
    { "getMillisWithLong:withLong:", "getMillis", "J", 0x1, NULL, NULL },
    { "addWithLong:withInt:", "add", "J", 0x1, NULL, NULL },
    { "addWithLong:withLong:", "add", "J", 0x1, NULL, NULL },
    { "getDifferenceWithLong:withLong:", "getDifference", "I", 0x1, NULL, NULL },
    { "getDifferenceAsLongWithLong:withLong:", "getDifferenceAsLong", "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.joda.time.field.ImpreciseDateTimeField;", NULL, NULL, .constantValue.asLong = 0 },
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField_serialVersionUID },
  };
  static const J2ObjcClassInfo _OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField = { 2, "LinkedDurationField", "org.joda.time.field", "ImpreciseDateTimeField", 0x12, 11, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField;
}

@end

void OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField_initWithOrgJodaTimeFieldImpreciseDateTimeField_withOrgJodaTimeDurationFieldType_(OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField *self, OrgJodaTimeFieldImpreciseDateTimeField *outer$, OrgJodaTimeDurationFieldType *type) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgJodaTimeFieldBaseDurationField_initWithOrgJodaTimeDurationFieldType_(self, type);
}

OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField *new_OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField_initWithOrgJodaTimeFieldImpreciseDateTimeField_withOrgJodaTimeDurationFieldType_(OrgJodaTimeFieldImpreciseDateTimeField *outer$, OrgJodaTimeDurationFieldType *type) {
  OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField *self = [OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField alloc];
  OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField_initWithOrgJodaTimeFieldImpreciseDateTimeField_withOrgJodaTimeDurationFieldType_(self, outer$, type);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFieldImpreciseDateTimeField_LinkedDurationField)
