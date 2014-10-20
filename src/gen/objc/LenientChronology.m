//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/chrono/LenientChronology.java
//

#include "AssembledChronology.h"
#include "Chronology.h"
#include "DateTimeField.h"
#include "DateTimeZone.h"
#include "LenientChronology.h"
#include "LenientDateTimeField.h"
#include "java/lang/IllegalArgumentException.h"

@implementation OrgJodaTimeChronoLenientChronology

+ (OrgJodaTimeChronoLenientChronology *)getInstanceWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base {
  if (base == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Must supply a chronology"];
  }
  return [[OrgJodaTimeChronoLenientChronology alloc] initWithOrgJodaTimeChronology:base];
}

- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base {
  return [super initWithOrgJodaTimeChronology:base withId:nil];
}

- (OrgJodaTimeChronology *)withUTC {
  if (iWithUTC_ == nil) {
    if ([self getZone] == OrgJodaTimeDateTimeZone_get_UTC_()) {
      iWithUTC_ = self;
    }
    else {
      iWithUTC_ = [OrgJodaTimeChronoLenientChronology getInstanceWithOrgJodaTimeChronology:[((OrgJodaTimeChronology *) nil_chk([self getBase])) withUTC]];
    }
  }
  return iWithUTC_;
}

- (OrgJodaTimeChronology *)withZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  if (zone == nil) {
    zone = [OrgJodaTimeDateTimeZone getDefault];
  }
  if (zone == OrgJodaTimeDateTimeZone_get_UTC_()) {
    return [self withUTC];
  }
  if (zone == [self getZone]) {
    return self;
  }
  return [OrgJodaTimeChronoLenientChronology getInstanceWithOrgJodaTimeChronology:[((OrgJodaTimeChronology *) nil_chk([self getBase])) withZoneWithOrgJodaTimeDateTimeZone:zone]];
}

- (void)assembleWithOrgJodaTimeChronoAssembledChronology_Fields:(OrgJodaTimeChronoAssembledChronology_Fields *)fields {
  ((OrgJodaTimeChronoAssembledChronology_Fields *) nil_chk(fields))->year_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->year_];
  fields->yearOfEra_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->yearOfEra_];
  fields->yearOfCentury_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->yearOfCentury_];
  fields->centuryOfEra_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->centuryOfEra_];
  fields->era_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->era_];
  fields->dayOfWeek_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->dayOfWeek_];
  fields->dayOfMonth_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->dayOfMonth_];
  fields->dayOfYear_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->dayOfYear_];
  fields->monthOfYear_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->monthOfYear_];
  fields->weekOfWeekyear_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->weekOfWeekyear_];
  fields->weekyear_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->weekyear_];
  fields->weekyearOfCentury_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->weekyearOfCentury_];
  fields->millisOfSecond_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->millisOfSecond_];
  fields->millisOfDay_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->millisOfDay_];
  fields->secondOfMinute_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->secondOfMinute_];
  fields->secondOfDay_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->secondOfDay_];
  fields->minuteOfHour_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->minuteOfHour_];
  fields->minuteOfDay_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->minuteOfDay_];
  fields->hourOfDay_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->hourOfDay_];
  fields->hourOfHalfday_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->hourOfHalfday_];
  fields->clockhourOfDay_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->clockhourOfDay_];
  fields->clockhourOfHalfday_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->clockhourOfHalfday_];
  fields->halfdayOfDay_ = [self convertFieldWithOrgJodaTimeDateTimeField:fields->halfdayOfDay_];
}

- (OrgJodaTimeDateTimeField *)convertFieldWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field {
  return [OrgJodaTimeFieldLenientDateTimeField getInstanceWithOrgJodaTimeDateTimeField:field withOrgJodaTimeChronology:[self getBase]];
}

- (BOOL)isEqual:(id)obj {
  if (self == obj) {
    return YES;
  }
  if ([obj isKindOfClass:[OrgJodaTimeChronoLenientChronology class]] == NO) {
    return NO;
  }
  OrgJodaTimeChronoLenientChronology *chrono = (OrgJodaTimeChronoLenientChronology *) check_class_cast(obj, [OrgJodaTimeChronoLenientChronology class]);
  return [((OrgJodaTimeChronology *) nil_chk([self getBase])) isEqual:[((OrgJodaTimeChronoLenientChronology *) nil_chk(chrono)) getBase]];
}

- (NSUInteger)hash {
  return 236548278 + ((int) [((OrgJodaTimeChronology *) nil_chk([self getBase])) hash]) * 7;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"LenientChronology[%@]", [((OrgJodaTimeChronology *) nil_chk([self getBase])) description]];
}

- (void)copyAllFieldsTo:(OrgJodaTimeChronoLenientChronology *)other {
  [super copyAllFieldsTo:other];
  other->iWithUTC_ = iWithUTC_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getInstanceWithOrgJodaTimeChronology:", "getInstance", "Lorg.joda.time.chrono.LenientChronology;", 0x9, NULL },
    { "initWithOrgJodaTimeChronology:", "LenientChronology", NULL, 0x2, NULL },
    { "withUTC", NULL, "Lorg.joda.time.Chronology;", 0x1, NULL },
    { "withZoneWithOrgJodaTimeDateTimeZone:", "withZone", "Lorg.joda.time.Chronology;", 0x1, NULL },
    { "assembleWithOrgJodaTimeChronoAssembledChronology_Fields:", "assemble", "V", 0x4, NULL },
    { "convertFieldWithOrgJodaTimeDateTimeField:", "convertField", "Lorg.joda.time.DateTimeField;", 0x12, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_LenientChronology_", "serialVersionUID", 0x1a, "J", NULL, .constantValue.asLong = OrgJodaTimeChronoLenientChronology_serialVersionUID },
    { "iWithUTC_", NULL, 0x82, "Lorg.joda.time.Chronology;", NULL,  },
  };
  static J2ObjcClassInfo _OrgJodaTimeChronoLenientChronology = { "LenientChronology", "org.joda.time.chrono", NULL, 0x11, 9, methods, 2, fields, 0, NULL};
  return &_OrgJodaTimeChronoLenientChronology;
}

@end
