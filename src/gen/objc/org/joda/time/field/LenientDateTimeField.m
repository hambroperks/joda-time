//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/Joda-Time/src/main/java/org/joda/time/field/LenientDateTimeField.java
//

#include "J2ObjC_source.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DateTimeZone.h"
#include "org/joda/time/field/DelegatedDateTimeField.h"
#include "org/joda/time/field/FieldUtils.h"
#include "org/joda/time/field/LenientDateTimeField.h"
#include "org/joda/time/field/StrictDateTimeField.h"

@interface OrgJodaTimeFieldLenientDateTimeField () {
 @public
  OrgJodaTimeChronology *iBase_;
}

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeFieldLenientDateTimeField, iBase_, OrgJodaTimeChronology *)

inline jlong OrgJodaTimeFieldLenientDateTimeField_get_serialVersionUID();
#define OrgJodaTimeFieldLenientDateTimeField_serialVersionUID 8714085824173290599LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeFieldLenientDateTimeField, serialVersionUID, jlong)

@implementation OrgJodaTimeFieldLenientDateTimeField

+ (OrgJodaTimeDateTimeField *)getInstanceWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                                            withOrgJodaTimeChronology:(OrgJodaTimeChronology *)base {
  return OrgJodaTimeFieldLenientDateTimeField_getInstanceWithOrgJodaTimeDateTimeField_withOrgJodaTimeChronology_(field, base);
}

- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                       withOrgJodaTimeChronology:(OrgJodaTimeChronology *)base {
  OrgJodaTimeFieldLenientDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeChronology_(self, field, base);
  return self;
}

- (jboolean)isLenient {
  return true;
}

- (jlong)setWithLong:(jlong)instant
             withInt:(jint)value {
  jlong localInstant = [((OrgJodaTimeDateTimeZone *) nil_chk([((OrgJodaTimeChronology *) nil_chk(iBase_)) getZone])) convertUTCToLocalWithLong:instant];
  jlong difference = OrgJodaTimeFieldFieldUtils_safeSubtractWithLong_withLong_(value, [self getWithLong:instant]);
  localInstant = [((OrgJodaTimeDateTimeField *) nil_chk([((OrgJodaTimeDateTimeFieldType *) nil_chk([self getType])) getFieldWithOrgJodaTimeChronology:[iBase_ withUTC]])) addWithLong:localInstant withLong:difference];
  return [((OrgJodaTimeDateTimeZone *) nil_chk([iBase_ getZone])) convertLocalToUTCWithLong:localInstant withBoolean:false withLong:instant];
}

- (void)dealloc {
  RELEASE_(iBase_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgJodaTimeDateTimeField;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getInstanceWithOrgJodaTimeDateTimeField:withOrgJodaTimeChronology:);
  methods[1].selector = @selector(initWithOrgJodaTimeDateTimeField:withOrgJodaTimeChronology:);
  methods[2].selector = @selector(isLenient);
  methods[3].selector = @selector(setWithLong:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeFieldLenientDateTimeField_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "iBase_", "LOrgJodaTimeChronology;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "getInstance", "LOrgJodaTimeDateTimeField;LOrgJodaTimeChronology;", "set", "JI" };
  static const J2ObjcClassInfo _OrgJodaTimeFieldLenientDateTimeField = { "LenientDateTimeField", "org.joda.time.field", ptrTable, methods, fields, 7, 0x1, 4, 2, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeFieldLenientDateTimeField;
}

@end

OrgJodaTimeDateTimeField *OrgJodaTimeFieldLenientDateTimeField_getInstanceWithOrgJodaTimeDateTimeField_withOrgJodaTimeChronology_(OrgJodaTimeDateTimeField *field, OrgJodaTimeChronology *base) {
  OrgJodaTimeFieldLenientDateTimeField_initialize();
  if (field == nil) {
    return nil;
  }
  if ([field isKindOfClass:[OrgJodaTimeFieldStrictDateTimeField class]]) {
    field = [((OrgJodaTimeFieldStrictDateTimeField *) cast_chk(field, [OrgJodaTimeFieldStrictDateTimeField class])) getWrappedField];
  }
  if ([((OrgJodaTimeDateTimeField *) nil_chk(field)) isLenient]) {
    return field;
  }
  return create_OrgJodaTimeFieldLenientDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeChronology_(field, base);
}

void OrgJodaTimeFieldLenientDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeChronology_(OrgJodaTimeFieldLenientDateTimeField *self, OrgJodaTimeDateTimeField *field, OrgJodaTimeChronology *base) {
  OrgJodaTimeFieldDelegatedDateTimeField_initWithOrgJodaTimeDateTimeField_(self, field);
  JreStrongAssign(&self->iBase_, base);
}

OrgJodaTimeFieldLenientDateTimeField *new_OrgJodaTimeFieldLenientDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeChronology_(OrgJodaTimeDateTimeField *field, OrgJodaTimeChronology *base) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFieldLenientDateTimeField, initWithOrgJodaTimeDateTimeField_withOrgJodaTimeChronology_, field, base)
}

OrgJodaTimeFieldLenientDateTimeField *create_OrgJodaTimeFieldLenientDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeChronology_(OrgJodaTimeDateTimeField *field, OrgJodaTimeChronology *base) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFieldLenientDateTimeField, initWithOrgJodaTimeDateTimeField_withOrgJodaTimeChronology_, field, base)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFieldLenientDateTimeField)
