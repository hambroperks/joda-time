//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/field/DecoratedDurationField.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/field/BaseDurationField.h"
#include "org/joda/time/field/DecoratedDurationField.h"

#define OrgJodaTimeFieldDecoratedDurationField_serialVersionUID 8019982251647420015LL

@interface OrgJodaTimeFieldDecoratedDurationField () {
 @public
  /**
   @brief The DurationField being wrapped
   */
  OrgJodaTimeDurationField *iField_;
}

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeFieldDecoratedDurationField, iField_, OrgJodaTimeDurationField *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeFieldDecoratedDurationField, serialVersionUID, jlong)

@implementation OrgJodaTimeFieldDecoratedDurationField

- (instancetype)initWithOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)field
                withOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type {
  OrgJodaTimeFieldDecoratedDurationField_initWithOrgJodaTimeDurationField_withOrgJodaTimeDurationFieldType_(self, field, type);
  return self;
}

- (OrgJodaTimeDurationField *)getWrappedField {
  return iField_;
}

- (jboolean)isPrecise {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) isPrecise];
}

- (jlong)getValueAsLongWithLong:(jlong)duration
                       withLong:(jlong)instant {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) getValueAsLongWithLong:duration withLong:instant];
}

- (jlong)getMillisWithInt:(jint)value
                 withLong:(jlong)instant {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) getMillisWithInt:value withLong:instant];
}

- (jlong)getMillisWithLong:(jlong)value
                  withLong:(jlong)instant {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) getMillisWithLong:value withLong:instant];
}

- (jlong)addWithLong:(jlong)instant
             withInt:(jint)value {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) addWithLong:instant withInt:value];
}

- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)value {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) addWithLong:instant withLong:value];
}

- (jlong)getDifferenceAsLongWithLong:(jlong)minuendInstant
                            withLong:(jlong)subtrahendInstant {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) getDifferenceAsLongWithLong:minuendInstant withLong:subtrahendInstant];
}

- (jlong)getUnitMillis {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) getUnitMillis];
}

- (void)dealloc {
  if (iField_ != self) RELEASE_(iField_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgJodaTimeDurationField:withOrgJodaTimeDurationFieldType:", "DecoratedDurationField", NULL, 0x1, NULL, NULL },
    { "getWrappedField", NULL, "Lorg.joda.time.DurationField;", 0x11, NULL, NULL },
    { "isPrecise", NULL, "Z", 0x1, NULL, NULL },
    { "getValueAsLongWithLong:withLong:", "getValueAsLong", "J", 0x1, NULL, NULL },
    { "getMillisWithInt:withLong:", "getMillis", "J", 0x1, NULL, NULL },
    { "getMillisWithLong:withLong:", "getMillis", "J", 0x1, NULL, NULL },
    { "addWithLong:withInt:", "add", "J", 0x1, NULL, NULL },
    { "addWithLong:withLong:", "add", "J", 0x1, NULL, NULL },
    { "getDifferenceAsLongWithLong:withLong:", "getDifferenceAsLong", "J", 0x1, NULL, NULL },
    { "getUnitMillis", NULL, "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeFieldDecoratedDurationField_serialVersionUID },
    { "iField_", NULL, 0x12, "Lorg.joda.time.DurationField;", NULL, NULL,  },
  };
  static const J2ObjcClassInfo _OrgJodaTimeFieldDecoratedDurationField = { 2, "DecoratedDurationField", "org.joda.time.field", NULL, 0x1, 10, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeFieldDecoratedDurationField;
}

@end

void OrgJodaTimeFieldDecoratedDurationField_initWithOrgJodaTimeDurationField_withOrgJodaTimeDurationFieldType_(OrgJodaTimeFieldDecoratedDurationField *self, OrgJodaTimeDurationField *field, OrgJodaTimeDurationFieldType *type) {
  OrgJodaTimeFieldBaseDurationField_initWithOrgJodaTimeDurationFieldType_(self, type);
  if (field == nil) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"The field must not be null") autorelease];
  }
  if (![((OrgJodaTimeDurationField *) nil_chk(field)) isSupported]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"The field must be supported") autorelease];
  }
  OrgJodaTimeFieldDecoratedDurationField_set_iField_(self, field);
}

OrgJodaTimeFieldDecoratedDurationField *new_OrgJodaTimeFieldDecoratedDurationField_initWithOrgJodaTimeDurationField_withOrgJodaTimeDurationFieldType_(OrgJodaTimeDurationField *field, OrgJodaTimeDurationFieldType *type) {
  OrgJodaTimeFieldDecoratedDurationField *self = [OrgJodaTimeFieldDecoratedDurationField alloc];
  OrgJodaTimeFieldDecoratedDurationField_initWithOrgJodaTimeDurationField_withOrgJodaTimeDurationFieldType_(self, field, type);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFieldDecoratedDurationField)
