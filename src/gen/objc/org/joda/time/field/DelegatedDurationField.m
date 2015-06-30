//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/field/DelegatedDurationField.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/field/DelegatedDurationField.h"

#define OrgJodaTimeFieldDelegatedDurationField_serialVersionUID -5576443481242007829LL

@interface OrgJodaTimeFieldDelegatedDurationField () {
 @public
  /**
   @brief The DurationField being wrapped
   */
  OrgJodaTimeDurationField *iField_;
  /**
   @brief The field type
   */
  OrgJodaTimeDurationFieldType *iType_;
}

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeFieldDelegatedDurationField, iField_, OrgJodaTimeDurationField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeFieldDelegatedDurationField, iType_, OrgJodaTimeDurationFieldType *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeFieldDelegatedDurationField, serialVersionUID, jlong)

@implementation OrgJodaTimeFieldDelegatedDurationField

- (instancetype)initWithOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)field {
  OrgJodaTimeFieldDelegatedDurationField_initWithOrgJodaTimeDurationField_(self, field);
  return self;
}

- (instancetype)initWithOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)field
                withOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type {
  OrgJodaTimeFieldDelegatedDurationField_initWithOrgJodaTimeDurationField_withOrgJodaTimeDurationFieldType_(self, field, type);
  return self;
}

- (OrgJodaTimeDurationField *)getWrappedField {
  return iField_;
}

- (OrgJodaTimeDurationFieldType *)getType {
  return iType_;
}

- (NSString *)getName {
  return [((OrgJodaTimeDurationFieldType *) nil_chk(iType_)) getName];
}

- (jboolean)isSupported {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) isSupported];
}

- (jboolean)isPrecise {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) isPrecise];
}

- (jint)getValueWithLong:(jlong)duration {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) getValueWithLong:duration];
}

- (jlong)getValueAsLongWithLong:(jlong)duration {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) getValueAsLongWithLong:duration];
}

- (jint)getValueWithLong:(jlong)duration
                withLong:(jlong)instant {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) getValueWithLong:duration withLong:instant];
}

- (jlong)getValueAsLongWithLong:(jlong)duration
                       withLong:(jlong)instant {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) getValueAsLongWithLong:duration withLong:instant];
}

- (jlong)getMillisWithInt:(jint)value {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) getMillisWithInt:value];
}

- (jlong)getMillisWithLong:(jlong)value {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) getMillisWithLong:value];
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

- (jint)getDifferenceWithLong:(jlong)minuendInstant
                     withLong:(jlong)subtrahendInstant {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) getDifferenceWithLong:minuendInstant withLong:subtrahendInstant];
}

- (jlong)getDifferenceAsLongWithLong:(jlong)minuendInstant
                            withLong:(jlong)subtrahendInstant {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) getDifferenceAsLongWithLong:minuendInstant withLong:subtrahendInstant];
}

- (jlong)getUnitMillis {
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) getUnitMillis];
}

- (jint)compareToWithId:(OrgJodaTimeDurationField *)durationField {
  check_class_cast(durationField, [OrgJodaTimeDurationField class]);
  return [((OrgJodaTimeDurationField *) nil_chk(iField_)) compareToWithId:durationField];
}

- (jboolean)isEqual:(id)obj {
  if ([obj isKindOfClass:[OrgJodaTimeFieldDelegatedDurationField class]]) {
    return [((OrgJodaTimeDurationField *) nil_chk(iField_)) isEqual:((OrgJodaTimeFieldDelegatedDurationField *) nil_chk(((OrgJodaTimeFieldDelegatedDurationField *) check_class_cast(obj, [OrgJodaTimeFieldDelegatedDurationField class]))))->iField_];
  }
  return NO;
}

- (NSUInteger)hash {
  return ((jint) [((OrgJodaTimeDurationField *) nil_chk(iField_)) hash]) ^ ((jint) [((OrgJodaTimeDurationFieldType *) nil_chk(iType_)) hash]);
}

- (NSString *)description {
  return (iType_ == nil) ? [((OrgJodaTimeDurationField *) nil_chk(iField_)) description] : (JreStrcat("$@C", @"DurationField[", iType_, ']'));
}

- (void)dealloc {
  if (iField_ != self) RELEASE_(iField_);
  RELEASE_(iType_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgJodaTimeDurationField:", "DelegatedDurationField", NULL, 0x4, NULL, NULL },
    { "initWithOrgJodaTimeDurationField:withOrgJodaTimeDurationFieldType:", "DelegatedDurationField", NULL, 0x4, NULL, NULL },
    { "getWrappedField", NULL, "Lorg.joda.time.DurationField;", 0x11, NULL, NULL },
    { "getType", NULL, "Lorg.joda.time.DurationFieldType;", 0x1, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isSupported", NULL, "Z", 0x1, NULL, NULL },
    { "isPrecise", NULL, "Z", 0x1, NULL, NULL },
    { "getValueWithLong:", "getValue", "I", 0x1, NULL, NULL },
    { "getValueAsLongWithLong:", "getValueAsLong", "J", 0x1, NULL, NULL },
    { "getValueWithLong:withLong:", "getValue", "I", 0x1, NULL, NULL },
    { "getValueAsLongWithLong:withLong:", "getValueAsLong", "J", 0x1, NULL, NULL },
    { "getMillisWithInt:", "getMillis", "J", 0x1, NULL, NULL },
    { "getMillisWithLong:", "getMillis", "J", 0x1, NULL, NULL },
    { "getMillisWithInt:withLong:", "getMillis", "J", 0x1, NULL, NULL },
    { "getMillisWithLong:withLong:", "getMillis", "J", 0x1, NULL, NULL },
    { "addWithLong:withInt:", "add", "J", 0x1, NULL, NULL },
    { "addWithLong:withLong:", "add", "J", 0x1, NULL, NULL },
    { "getDifferenceWithLong:withLong:", "getDifference", "I", 0x1, NULL, NULL },
    { "getDifferenceAsLongWithLong:withLong:", "getDifferenceAsLong", "J", 0x1, NULL, NULL },
    { "getUnitMillis", NULL, "J", 0x1, NULL, NULL },
    { "compareToWithId:", "compareTo", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeFieldDelegatedDurationField_serialVersionUID },
    { "iField_", NULL, 0x12, "Lorg.joda.time.DurationField;", NULL, NULL,  },
    { "iType_", NULL, 0x12, "Lorg.joda.time.DurationFieldType;", NULL, NULL,  },
  };
  static const J2ObjcClassInfo _OrgJodaTimeFieldDelegatedDurationField = { 2, "DelegatedDurationField", "org.joda.time.field", NULL, 0x1, 24, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeFieldDelegatedDurationField;
}

@end

void OrgJodaTimeFieldDelegatedDurationField_initWithOrgJodaTimeDurationField_(OrgJodaTimeFieldDelegatedDurationField *self, OrgJodaTimeDurationField *field) {
  OrgJodaTimeFieldDelegatedDurationField_initWithOrgJodaTimeDurationField_withOrgJodaTimeDurationFieldType_(self, field, nil);
}

OrgJodaTimeFieldDelegatedDurationField *new_OrgJodaTimeFieldDelegatedDurationField_initWithOrgJodaTimeDurationField_(OrgJodaTimeDurationField *field) {
  OrgJodaTimeFieldDelegatedDurationField *self = [OrgJodaTimeFieldDelegatedDurationField alloc];
  OrgJodaTimeFieldDelegatedDurationField_initWithOrgJodaTimeDurationField_(self, field);
  return self;
}

void OrgJodaTimeFieldDelegatedDurationField_initWithOrgJodaTimeDurationField_withOrgJodaTimeDurationFieldType_(OrgJodaTimeFieldDelegatedDurationField *self, OrgJodaTimeDurationField *field, OrgJodaTimeDurationFieldType *type) {
  OrgJodaTimeDurationField_init(self);
  if (field == nil) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"The field must not be null") autorelease];
  }
  OrgJodaTimeFieldDelegatedDurationField_set_iField_(self, field);
  OrgJodaTimeFieldDelegatedDurationField_set_iType_(self, (type == nil ? [((OrgJodaTimeDurationField *) nil_chk(field)) getType] : type));
}

OrgJodaTimeFieldDelegatedDurationField *new_OrgJodaTimeFieldDelegatedDurationField_initWithOrgJodaTimeDurationField_withOrgJodaTimeDurationFieldType_(OrgJodaTimeDurationField *field, OrgJodaTimeDurationFieldType *type) {
  OrgJodaTimeFieldDelegatedDurationField *self = [OrgJodaTimeFieldDelegatedDurationField alloc];
  OrgJodaTimeFieldDelegatedDurationField_initWithOrgJodaTimeDurationField_withOrgJodaTimeDurationFieldType_(self, field, type);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFieldDelegatedDurationField)
