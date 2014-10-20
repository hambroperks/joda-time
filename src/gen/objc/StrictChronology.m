//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/chrono/StrictChronology.java
//

#include "AssembledChronology.h"
#include "Chronology.h"
#include "DateTimeField.h"
#include "DateTimeZone.h"
#include "StrictChronology.h"
#include "StrictDateTimeField.h"
#include "java/lang/IllegalArgumentException.h"

@implementation OrgJodaTimeChronoStrictChronology

+ (OrgJodaTimeChronoStrictChronology *)getInstanceWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base {
  if (base == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Must supply a chronology"];
  }
  return [[OrgJodaTimeChronoStrictChronology alloc] initWithOrgJodaTimeChronology:base];
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
      iWithUTC_ = [OrgJodaTimeChronoStrictChronology getInstanceWithOrgJodaTimeChronology:[((OrgJodaTimeChronology *) nil_chk([self getBase])) withUTC]];
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
  return [OrgJodaTimeChronoStrictChronology getInstanceWithOrgJodaTimeChronology:[((OrgJodaTimeChronology *) nil_chk([self getBase])) withZoneWithOrgJodaTimeDateTimeZone:zone]];
}

- (void)assembleWithOrgJodaTimeChronoAssembledChronology_Fields:(OrgJodaTimeChronoAssembledChronology_Fields *)fields {
  ((OrgJodaTimeChronoAssembledChronology_Fields *) nil_chk(fields))->year_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->year_];
  fields->yearOfEra_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->yearOfEra_];
  fields->yearOfCentury_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->yearOfCentury_];
  fields->centuryOfEra_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->centuryOfEra_];
  fields->era_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->era_];
  fields->dayOfWeek_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->dayOfWeek_];
  fields->dayOfMonth_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->dayOfMonth_];
  fields->dayOfYear_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->dayOfYear_];
  fields->monthOfYear_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->monthOfYear_];
  fields->weekOfWeekyear_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->weekOfWeekyear_];
  fields->weekyear_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->weekyear_];
  fields->weekyearOfCentury_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->weekyearOfCentury_];
  fields->millisOfSecond_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->millisOfSecond_];
  fields->millisOfDay_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->millisOfDay_];
  fields->secondOfMinute_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->secondOfMinute_];
  fields->secondOfDay_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->secondOfDay_];
  fields->minuteOfHour_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->minuteOfHour_];
  fields->minuteOfDay_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->minuteOfDay_];
  fields->hourOfDay_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->hourOfDay_];
  fields->hourOfHalfday_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->hourOfHalfday_];
  fields->clockhourOfDay_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->clockhourOfDay_];
  fields->clockhourOfHalfday_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->clockhourOfHalfday_];
  fields->halfdayOfDay_ = [OrgJodaTimeChronoStrictChronology convertFieldWithOrgJodaTimeDateTimeField:fields->halfdayOfDay_];
}

+ (OrgJodaTimeDateTimeField *)convertFieldWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field {
  return [OrgJodaTimeFieldStrictDateTimeField getInstanceWithOrgJodaTimeDateTimeField:field];
}

- (BOOL)isEqual:(id)obj {
  if (self == obj) {
    return YES;
  }
  if ([obj isKindOfClass:[OrgJodaTimeChronoStrictChronology class]] == NO) {
    return NO;
  }
  OrgJodaTimeChronoStrictChronology *chrono = (OrgJodaTimeChronoStrictChronology *) check_class_cast(obj, [OrgJodaTimeChronoStrictChronology class]);
  return [((OrgJodaTimeChronology *) nil_chk([self getBase])) isEqual:[((OrgJodaTimeChronoStrictChronology *) nil_chk(chrono)) getBase]];
}

- (NSUInteger)hash {
  return 352831696 + ((int) [((OrgJodaTimeChronology *) nil_chk([self getBase])) hash]) * 7;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"StrictChronology[%@]", [((OrgJodaTimeChronology *) nil_chk([self getBase])) description]];
}

- (void)copyAllFieldsTo:(OrgJodaTimeChronoStrictChronology *)other {
  [super copyAllFieldsTo:other];
  other->iWithUTC_ = iWithUTC_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getInstanceWithOrgJodaTimeChronology:", "getInstance", "Lorg.joda.time.chrono.StrictChronology;", 0x9, NULL },
    { "initWithOrgJodaTimeChronology:", "StrictChronology", NULL, 0x2, NULL },
    { "withUTC", NULL, "Lorg.joda.time.Chronology;", 0x1, NULL },
    { "withZoneWithOrgJodaTimeDateTimeZone:", "withZone", "Lorg.joda.time.Chronology;", 0x1, NULL },
    { "assembleWithOrgJodaTimeChronoAssembledChronology_Fields:", "assemble", "V", 0x4, NULL },
    { "convertFieldWithOrgJodaTimeDateTimeField:", "convertField", "Lorg.joda.time.DateTimeField;", 0x1a, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_StrictChronology_", "serialVersionUID", 0x1a, "J", NULL, .constantValue.asLong = OrgJodaTimeChronoStrictChronology_serialVersionUID },
    { "iWithUTC_", NULL, 0x82, "Lorg.joda.time.Chronology;", NULL,  },
  };
  static J2ObjcClassInfo _OrgJodaTimeChronoStrictChronology = { "StrictChronology", "org.joda.time.chrono", NULL, 0x11, 9, methods, 2, fields, 0, NULL};
  return &_OrgJodaTimeChronoStrictChronology;
}

@end
