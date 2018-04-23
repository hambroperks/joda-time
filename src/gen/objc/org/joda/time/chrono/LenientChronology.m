//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/chrono/LenientChronology.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeZone.h"
#include "org/joda/time/chrono/AssembledChronology.h"
#include "org/joda/time/chrono/LenientChronology.h"
#include "org/joda/time/field/LenientDateTimeField.h"

@interface OrgJodaTimeChronoLenientChronology () {
 @public
  OrgJodaTimeChronology *iWithUTC_;
}

/*!
 @brief Create a LenientChronology for any chronology.
 @param base the chronology to wrap
 */
- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base;

- (OrgJodaTimeDateTimeField *)convertFieldWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field;

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeChronoLenientChronology, iWithUTC_, OrgJodaTimeChronology *)

/*!
 @brief Serialization lock
 */
inline jlong OrgJodaTimeChronoLenientChronology_get_serialVersionUID(void);
#define OrgJodaTimeChronoLenientChronology_serialVersionUID -3148237568046877177LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeChronoLenientChronology, serialVersionUID, jlong)

__attribute__((unused)) static void OrgJodaTimeChronoLenientChronology_initWithOrgJodaTimeChronology_(OrgJodaTimeChronoLenientChronology *self, OrgJodaTimeChronology *base);

__attribute__((unused)) static OrgJodaTimeChronoLenientChronology *new_OrgJodaTimeChronoLenientChronology_initWithOrgJodaTimeChronology_(OrgJodaTimeChronology *base) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJodaTimeChronoLenientChronology *create_OrgJodaTimeChronoLenientChronology_initWithOrgJodaTimeChronology_(OrgJodaTimeChronology *base);

__attribute__((unused)) static OrgJodaTimeDateTimeField *OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(OrgJodaTimeChronoLenientChronology *self, OrgJodaTimeDateTimeField *field);

@implementation OrgJodaTimeChronoLenientChronology

+ (OrgJodaTimeChronoLenientChronology *)getInstanceWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base {
  return OrgJodaTimeChronoLenientChronology_getInstanceWithOrgJodaTimeChronology_(base);
}

- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base {
  OrgJodaTimeChronoLenientChronology_initWithOrgJodaTimeChronology_(self, base);
  return self;
}

- (OrgJodaTimeChronology *)withUTC {
  if (iWithUTC_ == nil) {
    if ([self getZone] == JreLoadStatic(OrgJodaTimeDateTimeZone, UTC)) {
      JreStrongAssign(&iWithUTC_, self);
    }
    else {
      JreStrongAssign(&iWithUTC_, OrgJodaTimeChronoLenientChronology_getInstanceWithOrgJodaTimeChronology_([((OrgJodaTimeChronology *) nil_chk([self getBase])) withUTC]));
    }
  }
  return iWithUTC_;
}

- (OrgJodaTimeChronology *)withZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  if (zone == nil) {
    zone = OrgJodaTimeDateTimeZone_getDefault();
  }
  if (zone == JreLoadStatic(OrgJodaTimeDateTimeZone, UTC)) {
    return [self withUTC];
  }
  if (zone == [self getZone]) {
    return self;
  }
  return OrgJodaTimeChronoLenientChronology_getInstanceWithOrgJodaTimeChronology_([((OrgJodaTimeChronology *) nil_chk([self getBase])) withZoneWithOrgJodaTimeDateTimeZone:zone]);
}

- (void)assembleWithOrgJodaTimeChronoAssembledChronology_Fields:(OrgJodaTimeChronoAssembledChronology_Fields *)fields {
  JreStrongAssign(&((OrgJodaTimeChronoAssembledChronology_Fields *) nil_chk(fields))->year_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->year_));
  JreStrongAssign(&fields->yearOfEra_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->yearOfEra_));
  JreStrongAssign(&fields->yearOfCentury_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->yearOfCentury_));
  JreStrongAssign(&fields->centuryOfEra_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->centuryOfEra_));
  JreStrongAssign(&fields->era_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->era_));
  JreStrongAssign(&fields->dayOfWeek_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->dayOfWeek_));
  JreStrongAssign(&fields->dayOfMonth_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->dayOfMonth_));
  JreStrongAssign(&fields->dayOfYear_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->dayOfYear_));
  JreStrongAssign(&fields->monthOfYear_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->monthOfYear_));
  JreStrongAssign(&fields->weekOfWeekyear_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->weekOfWeekyear_));
  JreStrongAssign(&fields->weekyear_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->weekyear_));
  JreStrongAssign(&fields->weekyearOfCentury_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->weekyearOfCentury_));
  JreStrongAssign(&fields->millisOfSecond_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->millisOfSecond_));
  JreStrongAssign(&fields->millisOfDay_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->millisOfDay_));
  JreStrongAssign(&fields->secondOfMinute_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->secondOfMinute_));
  JreStrongAssign(&fields->secondOfDay_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->secondOfDay_));
  JreStrongAssign(&fields->minuteOfHour_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->minuteOfHour_));
  JreStrongAssign(&fields->minuteOfDay_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->minuteOfDay_));
  JreStrongAssign(&fields->hourOfDay_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->hourOfDay_));
  JreStrongAssign(&fields->hourOfHalfday_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->hourOfHalfday_));
  JreStrongAssign(&fields->clockhourOfDay_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->clockhourOfDay_));
  JreStrongAssign(&fields->clockhourOfHalfday_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->clockhourOfHalfday_));
  JreStrongAssign(&fields->halfdayOfDay_, OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, fields->halfdayOfDay_));
}

- (OrgJodaTimeDateTimeField *)convertFieldWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field {
  return OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(self, field);
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) {
    return true;
  }
  if ([obj isKindOfClass:[OrgJodaTimeChronoLenientChronology class]] == false) {
    return false;
  }
  OrgJodaTimeChronoLenientChronology *chrono = (OrgJodaTimeChronoLenientChronology *) cast_chk(obj, [OrgJodaTimeChronoLenientChronology class]);
  return [((OrgJodaTimeChronology *) nil_chk([self getBase])) isEqual:[((OrgJodaTimeChronoLenientChronology *) nil_chk(chrono)) getBase]];
}

- (NSUInteger)hash {
  return 236548278 + ((jint) [((OrgJodaTimeChronology *) nil_chk([self getBase])) hash]) * 7;
}

- (NSString *)description {
  return JreStrcat("$$C", @"LenientChronology[", [((OrgJodaTimeChronology *) nil_chk([self getBase])) description], ']');
}

- (void)dealloc {
  RELEASE_(iWithUTC_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgJodaTimeChronoLenientChronology;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronology;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronology;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 4, 5, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTimeField;", 0x12, 6, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 10, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 11, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getInstanceWithOrgJodaTimeChronology:);
  methods[1].selector = @selector(initWithOrgJodaTimeChronology:);
  methods[2].selector = @selector(withUTC);
  methods[3].selector = @selector(withZoneWithOrgJodaTimeDateTimeZone:);
  methods[4].selector = @selector(assembleWithOrgJodaTimeChronoAssembledChronology_Fields:);
  methods[5].selector = @selector(convertFieldWithOrgJodaTimeDateTimeField:);
  methods[6].selector = @selector(isEqual:);
  methods[7].selector = @selector(hash);
  methods[8].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeChronoLenientChronology_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "iWithUTC_", "LOrgJodaTimeChronology;", .constantValue.asLong = 0, 0x82, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "getInstance", "LOrgJodaTimeChronology;", "withZone", "LOrgJodaTimeDateTimeZone;", "assemble", "LOrgJodaTimeChronoAssembledChronology_Fields;", "convertField", "LOrgJodaTimeDateTimeField;", "equals", "LNSObject;", "hashCode", "toString" };
  static const J2ObjcClassInfo _OrgJodaTimeChronoLenientChronology = { "LenientChronology", "org.joda.time.chrono", ptrTable, methods, fields, 7, 0x11, 9, 2, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeChronoLenientChronology;
}

@end

OrgJodaTimeChronoLenientChronology *OrgJodaTimeChronoLenientChronology_getInstanceWithOrgJodaTimeChronology_(OrgJodaTimeChronology *base) {
  OrgJodaTimeChronoLenientChronology_initialize();
  if (base == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Must supply a chronology");
  }
  return create_OrgJodaTimeChronoLenientChronology_initWithOrgJodaTimeChronology_(base);
}

void OrgJodaTimeChronoLenientChronology_initWithOrgJodaTimeChronology_(OrgJodaTimeChronoLenientChronology *self, OrgJodaTimeChronology *base) {
  OrgJodaTimeChronoAssembledChronology_initWithOrgJodaTimeChronology_withId_(self, base, nil);
}

OrgJodaTimeChronoLenientChronology *new_OrgJodaTimeChronoLenientChronology_initWithOrgJodaTimeChronology_(OrgJodaTimeChronology *base) {
  J2OBJC_NEW_IMPL(OrgJodaTimeChronoLenientChronology, initWithOrgJodaTimeChronology_, base)
}

OrgJodaTimeChronoLenientChronology *create_OrgJodaTimeChronoLenientChronology_initWithOrgJodaTimeChronology_(OrgJodaTimeChronology *base) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeChronoLenientChronology, initWithOrgJodaTimeChronology_, base)
}

OrgJodaTimeDateTimeField *OrgJodaTimeChronoLenientChronology_convertFieldWithOrgJodaTimeDateTimeField_(OrgJodaTimeChronoLenientChronology *self, OrgJodaTimeDateTimeField *field) {
  return OrgJodaTimeFieldLenientDateTimeField_getInstanceWithOrgJodaTimeDateTimeField_withOrgJodaTimeChronology_(field, [self getBase]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeChronoLenientChronology)
