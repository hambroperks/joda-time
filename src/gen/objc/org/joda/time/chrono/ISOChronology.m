//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/chrono/ISOChronology.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/ObjectInputStream.h"
#include "java/io/ObjectOutputStream.h"
#include "java/io/Serializable.h"
#include "java/lang/ClassNotFoundException.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DateTimeZone.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/chrono/AssembledChronology.h"
#include "org/joda/time/chrono/GregorianChronology.h"
#include "org/joda/time/chrono/ISOChronology.h"
#include "org/joda/time/chrono/ISOYearOfEraDateTimeField.h"
#include "org/joda/time/chrono/ZonedChronology.h"
#include "org/joda/time/field/DividedDateTimeField.h"
#include "org/joda/time/field/RemainderDateTimeField.h"

#define OrgJodaTimeChronoISOChronology_serialVersionUID -6212696554273812441LL

@interface OrgJodaTimeChronoISOChronology ()

/*!
 @brief Restricted constructor
 */
- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base;

/*!
 @brief Serialize ISOChronology instances using a small stub.
 This reduces the
 serialized size, and deserialized instances come from the cache.
 */
- (id)writeReplace;

@end

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoISOChronology, serialVersionUID, jlong)

static OrgJodaTimeChronoISOChronology *OrgJodaTimeChronoISOChronology_INSTANCE_UTC_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoISOChronology, INSTANCE_UTC_, OrgJodaTimeChronoISOChronology *)

static JavaUtilConcurrentConcurrentHashMap *OrgJodaTimeChronoISOChronology_cCache_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoISOChronology, cCache_, JavaUtilConcurrentConcurrentHashMap *)

__attribute__((unused)) static void OrgJodaTimeChronoISOChronology_initWithOrgJodaTimeChronology_(OrgJodaTimeChronoISOChronology *self, OrgJodaTimeChronology *base);

__attribute__((unused)) static OrgJodaTimeChronoISOChronology *new_OrgJodaTimeChronoISOChronology_initWithOrgJodaTimeChronology_(OrgJodaTimeChronology *base) NS_RETURNS_RETAINED;

#define OrgJodaTimeChronoISOChronology_Stub_serialVersionUID -6212696554273812441LL

@interface OrgJodaTimeChronoISOChronology_Stub : NSObject < JavaIoSerializable > {
 @public
  OrgJodaTimeDateTimeZone *iZone_;
}

- (instancetype)initWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

- (id)readResolve;

- (void)writeObjectWithJavaIoObjectOutputStream:(JavaIoObjectOutputStream *)outArg;

- (void)readObjectWithJavaIoObjectInputStream:(JavaIoObjectInputStream *)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeChronoISOChronology_Stub)

J2OBJC_FIELD_SETTER(OrgJodaTimeChronoISOChronology_Stub, iZone_, OrgJodaTimeDateTimeZone *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoISOChronology_Stub, serialVersionUID, jlong)

__attribute__((unused)) static void OrgJodaTimeChronoISOChronology_Stub_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeChronoISOChronology_Stub *self, OrgJodaTimeDateTimeZone *zone);

__attribute__((unused)) static OrgJodaTimeChronoISOChronology_Stub *new_OrgJodaTimeChronoISOChronology_Stub_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoISOChronology_Stub)

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeChronoISOChronology)

@implementation OrgJodaTimeChronoISOChronology

+ (OrgJodaTimeChronoISOChronology *)getInstanceUTC {
  return OrgJodaTimeChronoISOChronology_getInstanceUTC();
}

+ (OrgJodaTimeChronoISOChronology *)getInstance {
  return OrgJodaTimeChronoISOChronology_getInstance();
}

+ (OrgJodaTimeChronoISOChronology *)getInstanceWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  return OrgJodaTimeChronoISOChronology_getInstanceWithOrgJodaTimeDateTimeZone_(zone);
}

- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base {
  OrgJodaTimeChronoISOChronology_initWithOrgJodaTimeChronology_(self, base);
  return self;
}

- (OrgJodaTimeChronology *)withUTC {
  return OrgJodaTimeChronoISOChronology_INSTANCE_UTC_;
}

- (OrgJodaTimeChronology *)withZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  if (zone == nil) {
    zone = OrgJodaTimeDateTimeZone_getDefault();
  }
  if (zone == [self getZone]) {
    return self;
  }
  return OrgJodaTimeChronoISOChronology_getInstanceWithOrgJodaTimeDateTimeZone_(zone);
}

- (NSString *)description {
  NSString *str = @"ISOChronology";
  OrgJodaTimeDateTimeZone *zone = [self getZone];
  if (zone != nil) {
    str = JreStrcat("$C$C", str, '[', [zone getID], ']');
  }
  return str;
}

- (void)assembleWithOrgJodaTimeChronoAssembledChronology_Fields:(OrgJodaTimeChronoAssembledChronology_Fields *)fields {
  if ([((OrgJodaTimeChronology *) nil_chk([self getBase])) getZone] == JreLoadStatic(OrgJodaTimeDateTimeZone, UTC_)) {
    JreStrongAssignAndConsume(&((OrgJodaTimeChronoAssembledChronology_Fields *) nil_chk(fields))->centuryOfEra_, new_OrgJodaTimeFieldDividedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_withInt_(JreLoadStatic(OrgJodaTimeChronoISOYearOfEraDateTimeField, INSTANCE_), OrgJodaTimeDateTimeFieldType_centuryOfEra(), 100));
    JreStrongAssign(&fields->centuries_, [fields->centuryOfEra_ getDurationField]);
    JreStrongAssignAndConsume(&fields->yearOfCentury_, new_OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_withOrgJodaTimeDateTimeFieldType_((OrgJodaTimeFieldDividedDateTimeField *) check_class_cast(fields->centuryOfEra_, [OrgJodaTimeFieldDividedDateTimeField class]), OrgJodaTimeDateTimeFieldType_yearOfCentury()));
    JreStrongAssignAndConsume(&fields->weekyearOfCentury_, new_OrgJodaTimeFieldRemainderDateTimeField_initWithOrgJodaTimeFieldDividedDateTimeField_withOrgJodaTimeDurationField_withOrgJodaTimeDateTimeFieldType_((OrgJodaTimeFieldDividedDateTimeField *) check_class_cast(fields->centuryOfEra_, [OrgJodaTimeFieldDividedDateTimeField class]), fields->weekyears_, OrgJodaTimeDateTimeFieldType_weekyearOfCentury()));
  }
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) {
    return true;
  }
  if ([obj isKindOfClass:[OrgJodaTimeChronoISOChronology class]]) {
    OrgJodaTimeChronoISOChronology *chrono = (OrgJodaTimeChronoISOChronology *) check_class_cast(obj, [OrgJodaTimeChronoISOChronology class]);
    return [((OrgJodaTimeDateTimeZone *) nil_chk([self getZone])) isEqual:[((OrgJodaTimeChronoISOChronology *) nil_chk(chrono)) getZone]];
  }
  return false;
}

- (NSUInteger)hash {
  return ((jint) [@"ISO" hash]) * 11 + ((jint) [((OrgJodaTimeDateTimeZone *) nil_chk([self getZone])) hash]);
}

- (id)writeReplace {
  return [new_OrgJodaTimeChronoISOChronology_Stub_initWithOrgJodaTimeDateTimeZone_([self getZone]) autorelease];
}

+ (void)initialize {
  if (self == [OrgJodaTimeChronoISOChronology class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeChronoISOChronology_cCache_, new_JavaUtilConcurrentConcurrentHashMap_init());
    {
      JreStrongAssignAndConsume(&OrgJodaTimeChronoISOChronology_INSTANCE_UTC_, new_OrgJodaTimeChronoISOChronology_initWithOrgJodaTimeChronology_(OrgJodaTimeChronoGregorianChronology_getInstanceUTC()));
      [OrgJodaTimeChronoISOChronology_cCache_ putWithId:JreLoadStatic(OrgJodaTimeDateTimeZone, UTC_) withId:OrgJodaTimeChronoISOChronology_INSTANCE_UTC_];
    }
    J2OBJC_SET_INITIALIZED(OrgJodaTimeChronoISOChronology)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getInstanceUTC", NULL, "Lorg.joda.time.chrono.ISOChronology;", 0x9, NULL, NULL },
    { "getInstance", NULL, "Lorg.joda.time.chrono.ISOChronology;", 0x9, NULL, NULL },
    { "getInstanceWithOrgJodaTimeDateTimeZone:", "getInstance", "Lorg.joda.time.chrono.ISOChronology;", 0x9, NULL, NULL },
    { "initWithOrgJodaTimeChronology:", "ISOChronology", NULL, 0x2, NULL, NULL },
    { "withUTC", NULL, "Lorg.joda.time.Chronology;", 0x1, NULL, NULL },
    { "withZoneWithOrgJodaTimeDateTimeZone:", "withZone", "Lorg.joda.time.Chronology;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "assembleWithOrgJodaTimeChronoAssembledChronology_Fields:", "assemble", "V", 0x4, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "writeReplace", NULL, "Ljava.lang.Object;", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoISOChronology_serialVersionUID },
    { "INSTANCE_UTC_", NULL, 0x1a, "Lorg.joda.time.chrono.ISOChronology;", &OrgJodaTimeChronoISOChronology_INSTANCE_UTC_, NULL, .constantValue.asLong = 0 },
    { "cCache_", NULL, 0x1a, "Ljava.util.concurrent.ConcurrentHashMap;", &OrgJodaTimeChronoISOChronology_cCache_, "Ljava/util/concurrent/ConcurrentHashMap<Lorg/joda/time/DateTimeZone;Lorg/joda/time/chrono/ISOChronology;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.joda.time.chrono.ISOChronology$Stub;"};
  static const J2ObjcClassInfo _OrgJodaTimeChronoISOChronology = { 2, "ISOChronology", "org.joda.time.chrono", NULL, 0x11, 11, methods, 3, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgJodaTimeChronoISOChronology;
}

@end

OrgJodaTimeChronoISOChronology *OrgJodaTimeChronoISOChronology_getInstanceUTC() {
  OrgJodaTimeChronoISOChronology_initialize();
  return OrgJodaTimeChronoISOChronology_INSTANCE_UTC_;
}

OrgJodaTimeChronoISOChronology *OrgJodaTimeChronoISOChronology_getInstance() {
  OrgJodaTimeChronoISOChronology_initialize();
  return OrgJodaTimeChronoISOChronology_getInstanceWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone_getDefault());
}

OrgJodaTimeChronoISOChronology *OrgJodaTimeChronoISOChronology_getInstanceWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone) {
  OrgJodaTimeChronoISOChronology_initialize();
  if (zone == nil) {
    zone = OrgJodaTimeDateTimeZone_getDefault();
  }
  OrgJodaTimeChronoISOChronology *chrono = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(OrgJodaTimeChronoISOChronology_cCache_)) getWithId:zone];
  if (chrono == nil) {
    chrono = [new_OrgJodaTimeChronoISOChronology_initWithOrgJodaTimeChronology_(OrgJodaTimeChronoZonedChronology_getInstanceWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeZone_(OrgJodaTimeChronoISOChronology_INSTANCE_UTC_, zone)) autorelease];
    OrgJodaTimeChronoISOChronology *oldChrono = [OrgJodaTimeChronoISOChronology_cCache_ putIfAbsentWithId:zone withId:chrono];
    if (oldChrono != nil) {
      chrono = oldChrono;
    }
  }
  return chrono;
}

void OrgJodaTimeChronoISOChronology_initWithOrgJodaTimeChronology_(OrgJodaTimeChronoISOChronology *self, OrgJodaTimeChronology *base) {
  OrgJodaTimeChronoAssembledChronology_initWithOrgJodaTimeChronology_withId_(self, base, nil);
}

OrgJodaTimeChronoISOChronology *new_OrgJodaTimeChronoISOChronology_initWithOrgJodaTimeChronology_(OrgJodaTimeChronology *base) {
  OrgJodaTimeChronoISOChronology *self = [OrgJodaTimeChronoISOChronology alloc];
  OrgJodaTimeChronoISOChronology_initWithOrgJodaTimeChronology_(self, base);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeChronoISOChronology)

@implementation OrgJodaTimeChronoISOChronology_Stub

- (instancetype)initWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  OrgJodaTimeChronoISOChronology_Stub_initWithOrgJodaTimeDateTimeZone_(self, zone);
  return self;
}

- (id)readResolve {
  return OrgJodaTimeChronoISOChronology_getInstanceWithOrgJodaTimeDateTimeZone_(iZone_);
}

- (void)writeObjectWithJavaIoObjectOutputStream:(JavaIoObjectOutputStream *)outArg {
  [((JavaIoObjectOutputStream *) nil_chk(outArg)) writeObjectWithId:iZone_];
}

- (void)readObjectWithJavaIoObjectInputStream:(JavaIoObjectInputStream *)inArg {
  JreStrongAssign(&iZone_, (OrgJodaTimeDateTimeZone *) check_class_cast([((JavaIoObjectInputStream *) nil_chk(inArg)) readObject], [OrgJodaTimeDateTimeZone class]));
}

- (void)dealloc {
  RELEASE_(iZone_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgJodaTimeDateTimeZone:", "Stub", NULL, 0x0, NULL, NULL },
    { "readResolve", NULL, "Ljava.lang.Object;", 0x2, NULL, NULL },
    { "writeObjectWithJavaIoObjectOutputStream:", "writeObject", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "readObjectWithJavaIoObjectInputStream:", "readObject", "V", 0x2, "Ljava.io.IOException;Ljava.lang.ClassNotFoundException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeChronoISOChronology_Stub_serialVersionUID },
    { "iZone_", NULL, 0x82, "Lorg.joda.time.DateTimeZone;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgJodaTimeChronoISOChronology_Stub = { 2, "Stub", "org.joda.time.chrono", "ISOChronology", 0x1a, 4, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeChronoISOChronology_Stub;
}

@end

void OrgJodaTimeChronoISOChronology_Stub_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeChronoISOChronology_Stub *self, OrgJodaTimeDateTimeZone *zone) {
  NSObject_init(self);
  JreStrongAssign(&self->iZone_, zone);
}

OrgJodaTimeChronoISOChronology_Stub *new_OrgJodaTimeChronoISOChronology_Stub_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone) {
  OrgJodaTimeChronoISOChronology_Stub *self = [OrgJodaTimeChronoISOChronology_Stub alloc];
  OrgJodaTimeChronoISOChronology_Stub_initWithOrgJodaTimeDateTimeZone_(self, zone);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeChronoISOChronology_Stub)
