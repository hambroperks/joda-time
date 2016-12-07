//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/Joda-Time/src/main/java/org/joda/time/chrono/GJEraDateTimeField.java
//

#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "java/util/Locale.h"
#include "org/joda/time/DateTimeConstants.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/chrono/BasicChronology.h"
#include "org/joda/time/chrono/GJEraDateTimeField.h"
#include "org/joda/time/chrono/GJLocaleSymbols.h"
#include "org/joda/time/field/BaseDateTimeField.h"
#include "org/joda/time/field/FieldUtils.h"
#include "org/joda/time/field/UnsupportedDurationField.h"

@interface OrgJodaTimeChronoGJEraDateTimeField () {
 @public
  OrgJodaTimeChronoBasicChronology *iChronology_;
}

/*!
 @brief Serialization singleton
 */
- (id)readResolve;

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeChronoGJEraDateTimeField, iChronology_, OrgJodaTimeChronoBasicChronology *)

/*!
 @brief Serialization version
 */
inline jlong OrgJodaTimeChronoGJEraDateTimeField_get_serialVersionUID();
#define OrgJodaTimeChronoGJEraDateTimeField_serialVersionUID 4240986525305515528LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeChronoGJEraDateTimeField, serialVersionUID, jlong)

@implementation OrgJodaTimeChronoGJEraDateTimeField

- (instancetype)initWithOrgJodaTimeChronoBasicChronology:(OrgJodaTimeChronoBasicChronology *)chronology {
  OrgJodaTimeChronoGJEraDateTimeField_initWithOrgJodaTimeChronoBasicChronology_(self, chronology);
  return self;
}

- (jboolean)isLenient {
  return false;
}

- (jint)getWithLong:(jlong)instant {
  if ([((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getYearWithLong:instant] <= 0) {
    return OrgJodaTimeDateTimeConstants_BCE;
  }
  else {
    return OrgJodaTimeDateTimeConstants_CE;
  }
}

- (NSString *)getAsTextWithInt:(jint)fieldValue
            withJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((OrgJodaTimeChronoGJLocaleSymbols *) nil_chk(OrgJodaTimeChronoGJLocaleSymbols_forLocaleWithJavaUtilLocale_(locale))) eraValueToTextWithInt:fieldValue];
}

- (jlong)setWithLong:(jlong)instant
             withInt:(jint)era {
  OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithOrgJodaTimeDateTimeField_withInt_withInt_withInt_(self, era, OrgJodaTimeDateTimeConstants_BCE, OrgJodaTimeDateTimeConstants_CE);
  jint oldEra = [self getWithLong:instant];
  if (oldEra != era) {
    jint year = [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) getYearWithLong:instant];
    return [iChronology_ setYearWithLong:instant withInt:-year];
  }
  else {
    return instant;
  }
}

- (jlong)setWithLong:(jlong)instant
        withNSString:(NSString *)text
  withJavaUtilLocale:(JavaUtilLocale *)locale {
  return [self setWithLong:instant withInt:[((OrgJodaTimeChronoGJLocaleSymbols *) nil_chk(OrgJodaTimeChronoGJLocaleSymbols_forLocaleWithJavaUtilLocale_(locale))) eraTextToValueWithNSString:text]];
}

- (jlong)roundFloorWithLong:(jlong)instant {
  if ([self getWithLong:instant] == OrgJodaTimeDateTimeConstants_CE) {
    return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) setYearWithLong:0 withInt:1];
  }
  else {
    return JavaLangLong_MIN_VALUE;
  }
}

- (jlong)roundCeilingWithLong:(jlong)instant {
  if ([self getWithLong:instant] == OrgJodaTimeDateTimeConstants_BCE) {
    return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) setYearWithLong:0 withInt:1];
  }
  else {
    return JavaLangLong_MAX_VALUE;
  }
}

- (jlong)roundHalfFloorWithLong:(jlong)instant {
  return [self roundFloorWithLong:instant];
}

- (jlong)roundHalfCeilingWithLong:(jlong)instant {
  return [self roundFloorWithLong:instant];
}

- (jlong)roundHalfEvenWithLong:(jlong)instant {
  return [self roundFloorWithLong:instant];
}

- (OrgJodaTimeDurationField *)getDurationField {
  return OrgJodaTimeFieldUnsupportedDurationField_getInstanceWithOrgJodaTimeDurationFieldType_(OrgJodaTimeDurationFieldType_eras());
}

- (OrgJodaTimeDurationField *)getRangeDurationField {
  return nil;
}

- (jint)getMinimumValue {
  return OrgJodaTimeDateTimeConstants_BCE;
}

- (jint)getMaximumValue {
  return OrgJodaTimeDateTimeConstants_CE;
}

- (jint)getMaximumTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((OrgJodaTimeChronoGJLocaleSymbols *) nil_chk(OrgJodaTimeChronoGJLocaleSymbols_forLocaleWithJavaUtilLocale_(locale))) getEraMaxTextLength];
}

- (id)readResolve {
  return [((OrgJodaTimeChronoBasicChronology *) nil_chk(iChronology_)) era];
}

- (void)dealloc {
  RELEASE_(iChronology_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 5, 7, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 8, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 9, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 10, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 11, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 12, 2, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationField;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationField;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJodaTimeChronoBasicChronology:);
  methods[1].selector = @selector(isLenient);
  methods[2].selector = @selector(getWithLong:);
  methods[3].selector = @selector(getAsTextWithInt:withJavaUtilLocale:);
  methods[4].selector = @selector(setWithLong:withInt:);
  methods[5].selector = @selector(setWithLong:withNSString:withJavaUtilLocale:);
  methods[6].selector = @selector(roundFloorWithLong:);
  methods[7].selector = @selector(roundCeilingWithLong:);
  methods[8].selector = @selector(roundHalfFloorWithLong:);
  methods[9].selector = @selector(roundHalfCeilingWithLong:);
  methods[10].selector = @selector(roundHalfEvenWithLong:);
  methods[11].selector = @selector(getDurationField);
  methods[12].selector = @selector(getRangeDurationField);
  methods[13].selector = @selector(getMinimumValue);
  methods[14].selector = @selector(getMaximumValue);
  methods[15].selector = @selector(getMaximumTextLengthWithJavaUtilLocale:);
  methods[16].selector = @selector(readResolve);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeChronoGJEraDateTimeField_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "iChronology_", "LOrgJodaTimeChronoBasicChronology;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgJodaTimeChronoBasicChronology;", "get", "J", "getAsText", "ILJavaUtilLocale;", "set", "JI", "JLNSString;LJavaUtilLocale;", "roundFloor", "roundCeiling", "roundHalfFloor", "roundHalfCeiling", "roundHalfEven", "getMaximumTextLength", "LJavaUtilLocale;" };
  static const J2ObjcClassInfo _OrgJodaTimeChronoGJEraDateTimeField = { "GJEraDateTimeField", "org.joda.time.chrono", ptrTable, methods, fields, 7, 0x10, 17, 2, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeChronoGJEraDateTimeField;
}

@end

void OrgJodaTimeChronoGJEraDateTimeField_initWithOrgJodaTimeChronoBasicChronology_(OrgJodaTimeChronoGJEraDateTimeField *self, OrgJodaTimeChronoBasicChronology *chronology) {
  OrgJodaTimeFieldBaseDateTimeField_initWithOrgJodaTimeDateTimeFieldType_(self, OrgJodaTimeDateTimeFieldType_era());
  JreStrongAssign(&self->iChronology_, chronology);
}

OrgJodaTimeChronoGJEraDateTimeField *new_OrgJodaTimeChronoGJEraDateTimeField_initWithOrgJodaTimeChronoBasicChronology_(OrgJodaTimeChronoBasicChronology *chronology) {
  J2OBJC_NEW_IMPL(OrgJodaTimeChronoGJEraDateTimeField, initWithOrgJodaTimeChronoBasicChronology_, chronology)
}

OrgJodaTimeChronoGJEraDateTimeField *create_OrgJodaTimeChronoGJEraDateTimeField_initWithOrgJodaTimeChronoBasicChronology_(OrgJodaTimeChronoBasicChronology *chronology) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeChronoGJEraDateTimeField, initWithOrgJodaTimeChronoBasicChronology_, chronology)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeChronoGJEraDateTimeField)
