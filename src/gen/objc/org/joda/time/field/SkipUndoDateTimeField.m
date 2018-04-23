//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/field/SkipUndoDateTimeField.java
//

#include "J2ObjC_source.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/field/DelegatedDateTimeField.h"
#include "org/joda/time/field/FieldUtils.h"
#include "org/joda/time/field/SkipUndoDateTimeField.h"

static jint (*OrgJodaTimeFieldSkipUndoDateTimeField_super$_getMinimumValue)(id, SEL);

@interface OrgJodaTimeFieldSkipUndoDateTimeField () {
 @public
  /*!
   @brief The chronology to wrap.
   */
  OrgJodaTimeChronology *iChronology_;
  /*!
   @brief The value to skip.
   */
  jint iSkip_;
  /*!
   @brief The calculated minimum value.
   */
  jint iMinValue_;
}

- (id)readResolve;

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeFieldSkipUndoDateTimeField, iChronology_, OrgJodaTimeChronology *)

/*!
 @brief Serialization version.
 */
inline jlong OrgJodaTimeFieldSkipUndoDateTimeField_get_serialVersionUID(void);
#define OrgJodaTimeFieldSkipUndoDateTimeField_serialVersionUID -5875876968979LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeFieldSkipUndoDateTimeField, serialVersionUID, jlong)

__attribute__((unused)) static id OrgJodaTimeFieldSkipUndoDateTimeField_readResolve(OrgJodaTimeFieldSkipUndoDateTimeField *self);

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeFieldSkipUndoDateTimeField)

@implementation OrgJodaTimeFieldSkipUndoDateTimeField

- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology
                 withOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field {
  OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_(self, chronology, field);
  return self;
}

- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology
                 withOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                                      withInt:(jint)skip {
  OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_withInt_(self, chronology, field, skip);
  return self;
}

- (jint)getWithLong:(jlong)millis {
  jint value = [super getWithLong:millis];
  if (value < iSkip_) {
    value++;
  }
  return value;
}

- (jlong)setWithLong:(jlong)millis
             withInt:(jint)value {
  OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithOrgJodaTimeDateTimeField_withInt_withInt_withInt_(self, value, iMinValue_, [self getMaximumValue]);
  if (value <= iSkip_) {
    value--;
  }
  return [super setWithLong:millis withInt:value];
}

- (jint)getMinimumValue {
  return iMinValue_;
}

- (id)readResolve {
  return OrgJodaTimeFieldSkipUndoDateTimeField_readResolve(self);
}

- (void)dealloc {
  RELEASE_(iChronology_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJodaTimeChronology:withOrgJodaTimeDateTimeField:);
  methods[1].selector = @selector(initWithOrgJodaTimeChronology:withOrgJodaTimeDateTimeField:withInt:);
  methods[2].selector = @selector(getWithLong:);
  methods[3].selector = @selector(setWithLong:withInt:);
  methods[4].selector = @selector(getMinimumValue);
  methods[5].selector = @selector(readResolve);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeFieldSkipUndoDateTimeField_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "iChronology_", "LOrgJodaTimeChronology;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "iSkip_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "iMinValue_", "I", .constantValue.asLong = 0, 0x82, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgJodaTimeChronology;LOrgJodaTimeDateTimeField;", "LOrgJodaTimeChronology;LOrgJodaTimeDateTimeField;I", "get", "J", "set", "JI" };
  static const J2ObjcClassInfo _OrgJodaTimeFieldSkipUndoDateTimeField = { "SkipUndoDateTimeField", "org.joda.time.field", ptrTable, methods, fields, 7, 0x11, 6, 4, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeFieldSkipUndoDateTimeField;
}

+ (void)initialize {
  if (self == [OrgJodaTimeFieldSkipUndoDateTimeField class]) {
    OrgJodaTimeFieldSkipUndoDateTimeField_super$_getMinimumValue = (jint (*)(id, SEL))[OrgJodaTimeFieldDelegatedDateTimeField instanceMethodForSelector:@selector(getMinimumValue)];
    J2OBJC_SET_INITIALIZED(OrgJodaTimeFieldSkipUndoDateTimeField)
  }
}

@end

void OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_(OrgJodaTimeFieldSkipUndoDateTimeField *self, OrgJodaTimeChronology *chronology, OrgJodaTimeDateTimeField *field) {
  OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_withInt_(self, chronology, field, 0);
}

OrgJodaTimeFieldSkipUndoDateTimeField *new_OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_(OrgJodaTimeChronology *chronology, OrgJodaTimeDateTimeField *field) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFieldSkipUndoDateTimeField, initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_, chronology, field)
}

OrgJodaTimeFieldSkipUndoDateTimeField *create_OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_(OrgJodaTimeChronology *chronology, OrgJodaTimeDateTimeField *field) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFieldSkipUndoDateTimeField, initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_, chronology, field)
}

void OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_withInt_(OrgJodaTimeFieldSkipUndoDateTimeField *self, OrgJodaTimeChronology *chronology, OrgJodaTimeDateTimeField *field, jint skip) {
  OrgJodaTimeFieldDelegatedDateTimeField_initWithOrgJodaTimeDateTimeField_(self, field);
  JreStrongAssign(&self->iChronology_, chronology);
  jint min = OrgJodaTimeFieldSkipUndoDateTimeField_super$_getMinimumValue(self, @selector(getMinimumValue));
  if (min < skip) {
    self->iMinValue_ = min + 1;
  }
  else if (min == skip + 1) {
    self->iMinValue_ = skip;
  }
  else {
    self->iMinValue_ = min;
  }
  self->iSkip_ = skip;
}

OrgJodaTimeFieldSkipUndoDateTimeField *new_OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_withInt_(OrgJodaTimeChronology *chronology, OrgJodaTimeDateTimeField *field, jint skip) {
  J2OBJC_NEW_IMPL(OrgJodaTimeFieldSkipUndoDateTimeField, initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_withInt_, chronology, field, skip)
}

OrgJodaTimeFieldSkipUndoDateTimeField *create_OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_withInt_(OrgJodaTimeChronology *chronology, OrgJodaTimeDateTimeField *field, jint skip) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFieldSkipUndoDateTimeField, initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_withInt_, chronology, field, skip)
}

id OrgJodaTimeFieldSkipUndoDateTimeField_readResolve(OrgJodaTimeFieldSkipUndoDateTimeField *self) {
  return [((OrgJodaTimeDateTimeFieldType *) nil_chk([self getType])) getFieldWithOrgJodaTimeChronology:self->iChronology_];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFieldSkipUndoDateTimeField)
