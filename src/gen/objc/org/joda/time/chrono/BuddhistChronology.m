//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/chrono/BuddhistChronology.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTime.h"
#include "org/joda/time/DateTimeConstants.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DateTimeZone.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/chrono/AssembledChronology.h"
#include "org/joda/time/chrono/BasicSingleEraDateTimeField.h"
#include "org/joda/time/chrono/BuddhistChronology.h"
#include "org/joda/time/chrono/GJChronology.h"
#include "org/joda/time/chrono/LimitChronology.h"
#include "org/joda/time/field/DelegatedDateTimeField.h"
#include "org/joda/time/field/DividedDateTimeField.h"
#include "org/joda/time/field/OffsetDateTimeField.h"
#include "org/joda/time/field/RemainderDateTimeField.h"
#include "org/joda/time/field/SkipUndoDateTimeField.h"
#include "org/joda/time/field/UnsupportedDurationField.h"

#define OrgJodaTimeChronoBuddhistChronology_serialVersionUID -3474595157769370126LL
#define OrgJodaTimeChronoBuddhistChronology_BUDDHIST_OFFSET 543

@interface OrgJodaTimeChronoBuddhistChronology ()

/**
 @brief Restricted constructor.
 @param param if non-null, then don't change the field set
 */
- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base
                                       withId:(id)param;

/**
 @brief Serialization singleton
 */
- (id)readResolve;

@end

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoBuddhistChronology, serialVersionUID, jlong)

static OrgJodaTimeDateTimeField *OrgJodaTimeChronoBuddhistChronology_ERA_FIELD_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoBuddhistChronology, ERA_FIELD_, OrgJodaTimeDateTimeField *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoBuddhistChronology, BUDDHIST_OFFSET, jint)

static JavaUtilConcurrentConcurrentHashMap *OrgJodaTimeChronoBuddhistChronology_cCache_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoBuddhistChronology, cCache_, JavaUtilConcurrentConcurrentHashMap *)

static OrgJodaTimeChronoBuddhistChronology *OrgJodaTimeChronoBuddhistChronology_INSTANCE_UTC_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoBuddhistChronology, INSTANCE_UTC_, OrgJodaTimeChronoBuddhistChronology *)

__attribute__((unused)) static void OrgJodaTimeChronoBuddhistChronology_initWithOrgJodaTimeChronology_withId_(OrgJodaTimeChronoBuddhistChronology *self, OrgJodaTimeChronology *base, id param);

__attribute__((unused)) static OrgJodaTimeChronoBuddhistChronology *new_OrgJodaTimeChronoBuddhistChronology_initWithOrgJodaTimeChronology_withId_(OrgJodaTimeChronology *base, id param) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeChronoBuddhistChronology)

@implementation OrgJodaTimeChronoBuddhistChronology

+ (OrgJodaTimeChronoBuddhistChronology *)getInstanceUTC {
  return OrgJodaTimeChronoBuddhistChronology_getInstanceUTC();
}

+ (OrgJodaTimeChronoBuddhistChronology *)getInstance {
  return OrgJodaTimeChronoBuddhistChronology_getInstance();
}

+ (OrgJodaTimeChronoBuddhistChronology *)getInstanceWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  return OrgJodaTimeChronoBuddhistChronology_getInstanceWithOrgJodaTimeDateTimeZone_(zone);
}

- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base
                                       withId:(id)param {
  OrgJodaTimeChronoBuddhistChronology_initWithOrgJodaTimeChronology_withId_(self, base, param);
  return self;
}

- (id)readResolve {
  OrgJodaTimeChronology *base = [self getBase];
  return base == nil ? OrgJodaTimeChronoBuddhistChronology_getInstanceUTC() : OrgJodaTimeChronoBuddhistChronology_getInstanceWithOrgJodaTimeDateTimeZone_([base getZone]);
}

- (OrgJodaTimeChronology *)withUTC {
  return OrgJodaTimeChronoBuddhistChronology_INSTANCE_UTC_;
}

- (OrgJodaTimeChronology *)withZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  if (zone == nil) {
    zone = OrgJodaTimeDateTimeZone_getDefault();
  }
  if (zone == [self getZone]) {
    return self;
  }
  return OrgJodaTimeChronoBuddhistChronology_getInstanceWithOrgJodaTimeDateTimeZone_(zone);
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) {
    return YES;
  }
  if ([obj isKindOfClass:[OrgJodaTimeChronoBuddhistChronology class]]) {
    OrgJodaTimeChronoBuddhistChronology *chrono = (OrgJodaTimeChronoBuddhistChronology *) check_class_cast(obj, [OrgJodaTimeChronoBuddhistChronology class]);
    return [((OrgJodaTimeDateTimeZone *) nil_chk([self getZone])) isEqual:[((OrgJodaTimeChronoBuddhistChronology *) nil_chk(chrono)) getZone]];
  }
  return NO;
}

- (NSUInteger)hash {
  return ((jint) [@"Buddhist" hash]) * 11 + ((jint) [((OrgJodaTimeDateTimeZone *) nil_chk([self getZone])) hash]);
}

- (NSString *)description {
  NSString *str = @"BuddhistChronology";
  OrgJodaTimeDateTimeZone *zone = [self getZone];
  if (zone != nil) {
    str = JreStrcat("$C$C", str, '[', [zone getID], ']');
  }
  return str;
}

- (void)assembleWithOrgJodaTimeChronoAssembledChronology_Fields:(OrgJodaTimeChronoAssembledChronology_Fields *)fields {
  if ([self getParam] == nil) {
    OrgJodaTimeChronoAssembledChronology_Fields_set_eras_(nil_chk(fields), OrgJodaTimeFieldUnsupportedDurationField_getInstanceWithOrgJodaTimeDurationFieldType_(OrgJodaTimeDurationFieldType_eras()));
    OrgJodaTimeDateTimeField *field = fields->year_;
    OrgJodaTimeChronoAssembledChronology_Fields_setAndConsume_year_(fields, new_OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withInt_([new_OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_(self, field) autorelease], OrgJodaTimeChronoBuddhistChronology_BUDDHIST_OFFSET));
    field = fields->yearOfEra_;
    OrgJodaTimeChronoAssembledChronology_Fields_setAndConsume_yearOfEra_(fields, new_OrgJodaTimeFieldDelegatedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_(fields->year_, fields->eras_, OrgJodaTimeDateTimeFieldType_yearOfEra()));
    field = fields->weekyear_;
    OrgJodaTimeChronoAssembledChronology_Fields_setAndConsume_weekyear_(fields, new_OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withInt_([new_OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_(self, field) autorelease], OrgJodaTimeChronoBuddhistChronology_BUDDHIST_OFFSET));
    field = [new_OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withInt_(fields->yearOfEra_, 99) autorelease];
    OrgJodaTimeChronoAssembledChronology_Fields_setAndConsume_centuryOfEra_(fields, new_OrgJodaTimeFieldDividedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_withInt_(field, fields->eras_, OrgJodaTimeDateTimeFieldType_centuryOfEra(), 100));
    OrgJodaTimeChronoAssembledChronology_Fields_set_centuries_(fields, [fields->centuryOfEra_ getDurationField]);
    field = [new_OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_((OrgJodaTimeFieldDividedDateTimeField *) check_class_cast(fields->centuryOfEra_, [OrgJodaTimeFieldDividedDateTimeField class])) autorelease];
    OrgJodaTimeChronoAssembledChronology_Fields_setAndConsume_yearOfCentury_(fields, new_OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(field, OrgJodaTimeDateTimeFieldType_yearOfCentury(), 1));
    field = [new_OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_withInt_(fields->weekyear_, fields->centuries_, OrgJodaTimeDateTimeFieldType_weekyearOfCentury(), 100) autorelease];
    OrgJodaTimeChronoAssembledChronology_Fields_setAndConsume_weekyearOfCentury_(fields, new_OrgJodaTimeFieldOffsetDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(field, OrgJodaTimeDateTimeFieldType_weekyearOfCentury(), 1));
    OrgJodaTimeChronoAssembledChronology_Fields_set_era_(fields, OrgJodaTimeChronoBuddhistChronology_ERA_FIELD_);
  }
}

+ (void)initialize {
  if (self == [OrgJodaTimeChronoBuddhistChronology class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeChronoBuddhistChronology_ERA_FIELD_, nil, new_OrgJodaTimeChronoBasicSingleEraDateTimeField_initWithNSString_(@"BE"));
    JreStrongAssignAndConsume(&OrgJodaTimeChronoBuddhistChronology_cCache_, nil, new_JavaUtilConcurrentConcurrentHashMap_init());
    JreStrongAssign(&OrgJodaTimeChronoBuddhistChronology_INSTANCE_UTC_, nil, OrgJodaTimeChronoBuddhistChronology_getInstanceWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone_get_UTC_()));
    J2OBJC_SET_INITIALIZED(OrgJodaTimeChronoBuddhistChronology)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getInstanceUTC", NULL, "Lorg.joda.time.chrono.BuddhistChronology;", 0x9, NULL, NULL },
    { "getInstance", NULL, "Lorg.joda.time.chrono.BuddhistChronology;", 0x9, NULL, NULL },
    { "getInstanceWithOrgJodaTimeDateTimeZone:", "getInstance", "Lorg.joda.time.chrono.BuddhistChronology;", 0x9, NULL, NULL },
    { "initWithOrgJodaTimeChronology:withId:", "BuddhistChronology", NULL, 0x2, NULL, NULL },
    { "readResolve", NULL, "Ljava.lang.Object;", 0x2, NULL, NULL },
    { "withUTC", NULL, "Lorg.joda.time.Chronology;", 0x1, NULL, NULL },
    { "withZoneWithOrgJodaTimeDateTimeZone:", "withZone", "Lorg.joda.time.Chronology;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "assembleWithOrgJodaTimeChronoAssembledChronology_Fields:", "assemble", "V", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoBuddhistChronology_serialVersionUID },
    { "BE", "BE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgJodaTimeChronoBuddhistChronology_BE },
    { "ERA_FIELD_", NULL, 0x1a, "Lorg.joda.time.DateTimeField;", &OrgJodaTimeChronoBuddhistChronology_ERA_FIELD_, NULL,  },
    { "BUDDHIST_OFFSET", "BUDDHIST_OFFSET", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgJodaTimeChronoBuddhistChronology_BUDDHIST_OFFSET },
    { "cCache_", NULL, 0x1a, "Ljava.util.concurrent.ConcurrentHashMap;", &OrgJodaTimeChronoBuddhistChronology_cCache_, "Ljava/util/concurrent/ConcurrentHashMap<Lorg/joda/time/DateTimeZone;Lorg/joda/time/chrono/BuddhistChronology;>;",  },
    { "INSTANCE_UTC_", NULL, 0x1a, "Lorg.joda.time.chrono.BuddhistChronology;", &OrgJodaTimeChronoBuddhistChronology_INSTANCE_UTC_, NULL,  },
  };
  static const J2ObjcClassInfo _OrgJodaTimeChronoBuddhistChronology = { 2, "BuddhistChronology", "org.joda.time.chrono", NULL, 0x11, 11, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeChronoBuddhistChronology;
}

@end

OrgJodaTimeChronoBuddhistChronology *OrgJodaTimeChronoBuddhistChronology_getInstanceUTC() {
  OrgJodaTimeChronoBuddhistChronology_initialize();
  return OrgJodaTimeChronoBuddhistChronology_INSTANCE_UTC_;
}

OrgJodaTimeChronoBuddhistChronology *OrgJodaTimeChronoBuddhistChronology_getInstance() {
  OrgJodaTimeChronoBuddhistChronology_initialize();
  return OrgJodaTimeChronoBuddhistChronology_getInstanceWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone_getDefault());
}

OrgJodaTimeChronoBuddhistChronology *OrgJodaTimeChronoBuddhistChronology_getInstanceWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone) {
  OrgJodaTimeChronoBuddhistChronology_initialize();
  if (zone == nil) {
    zone = OrgJodaTimeDateTimeZone_getDefault();
  }
  OrgJodaTimeChronoBuddhistChronology *chrono = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(OrgJodaTimeChronoBuddhistChronology_cCache_)) getWithId:zone];
  if (chrono == nil) {
    chrono = [new_OrgJodaTimeChronoBuddhistChronology_initWithOrgJodaTimeChronology_withId_(OrgJodaTimeChronoGJChronology_getInstanceWithOrgJodaTimeDateTimeZone_withOrgJodaTimeReadableInstant_(zone, nil), nil) autorelease];
    OrgJodaTimeDateTime *lowerLimit = [new_OrgJodaTimeDateTime_initWithInt_withInt_withInt_withInt_withInt_withInt_withInt_withOrgJodaTimeChronology_(1, 1, 1, 0, 0, 0, 0, chrono) autorelease];
    chrono = [new_OrgJodaTimeChronoBuddhistChronology_initWithOrgJodaTimeChronology_withId_(OrgJodaTimeChronoLimitChronology_getInstanceWithOrgJodaTimeChronology_withOrgJodaTimeReadableDateTime_withOrgJodaTimeReadableDateTime_(chrono, lowerLimit, nil), @"") autorelease];
    OrgJodaTimeChronoBuddhistChronology *oldChrono = [OrgJodaTimeChronoBuddhistChronology_cCache_ putIfAbsentWithId:zone withId:chrono];
    if (oldChrono != nil) {
      chrono = oldChrono;
    }
  }
  return chrono;
}

void OrgJodaTimeChronoBuddhistChronology_initWithOrgJodaTimeChronology_withId_(OrgJodaTimeChronoBuddhistChronology *self, OrgJodaTimeChronology *base, id param) {
  OrgJodaTimeChronoAssembledChronology_initWithOrgJodaTimeChronology_withId_(self, base, param);
}

OrgJodaTimeChronoBuddhistChronology *new_OrgJodaTimeChronoBuddhistChronology_initWithOrgJodaTimeChronology_withId_(OrgJodaTimeChronology *base, id param) {
  OrgJodaTimeChronoBuddhistChronology *self = [OrgJodaTimeChronoBuddhistChronology alloc];
  OrgJodaTimeChronoBuddhistChronology_initWithOrgJodaTimeChronology_withId_(self, base, param);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeChronoBuddhistChronology)
