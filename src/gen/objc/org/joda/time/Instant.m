//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/Instant.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "org/joda/convert/FromString.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTime.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/Instant.h"
#include "org/joda/time/MutableDateTime.h"
#include "org/joda/time/ReadableDuration.h"
#include "org/joda/time/base/AbstractInstant.h"
#include "org/joda/time/chrono/ISOChronology.h"
#include "org/joda/time/convert/ConverterManager.h"
#include "org/joda/time/convert/InstantConverter.h"
#include "org/joda/time/format/DateTimeFormatter.h"
#include "org/joda/time/format/ISODateTimeFormat.h"

@interface OrgJodaTimeInstant () {
 @public
  /*!
   @brief The millis from 1970-01-01T00:00:00Z
   */
  jlong iMillis_;
}

@end

/*!
 @brief Serialization lock
 */
inline jlong OrgJodaTimeInstant_get_serialVersionUID(void);
#define OrgJodaTimeInstant_serialVersionUID 3299096530934209741LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeInstant, serialVersionUID, jlong)

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeInstant__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeInstant__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeInstant__Annotations$2(void);

@implementation OrgJodaTimeInstant

+ (OrgJodaTimeInstant *)now {
  return OrgJodaTimeInstant_now();
}

+ (OrgJodaTimeInstant *)parseWithNSString:(NSString *)str {
  return OrgJodaTimeInstant_parseWithNSString_(str);
}

+ (OrgJodaTimeInstant *)parseWithNSString:(NSString *)str
   withOrgJodaTimeFormatDateTimeFormatter:(OrgJodaTimeFormatDateTimeFormatter *)formatter {
  return OrgJodaTimeInstant_parseWithNSString_withOrgJodaTimeFormatDateTimeFormatter_(str, formatter);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeInstant_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithLong:(jlong)instant {
  OrgJodaTimeInstant_initWithLong_(self, instant);
  return self;
}

- (instancetype)initWithId:(id)instant {
  OrgJodaTimeInstant_initWithId_(self, instant);
  return self;
}

- (OrgJodaTimeInstant *)toInstant {
  return self;
}

- (OrgJodaTimeInstant *)withMillisWithLong:(jlong)newMillis {
  return (newMillis == iMillis_ ? self : create_OrgJodaTimeInstant_initWithLong_(newMillis));
}

- (OrgJodaTimeInstant *)withDurationAddedWithLong:(jlong)durationToAdd
                                          withInt:(jint)scalar {
  if (durationToAdd == 0 || scalar == 0) {
    return self;
  }
  jlong instant = [((OrgJodaTimeChronology *) nil_chk([self getChronology])) addWithLong:[self getMillis] withLong:durationToAdd withInt:scalar];
  return [self withMillisWithLong:instant];
}

- (OrgJodaTimeInstant *)withDurationAddedWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)durationToAdd
                                                                 withInt:(jint)scalar {
  if (durationToAdd == nil || scalar == 0) {
    return self;
  }
  return [self withDurationAddedWithLong:[durationToAdd getMillis] withInt:scalar];
}

- (OrgJodaTimeInstant *)plusWithLong:(jlong)duration {
  return [self withDurationAddedWithLong:duration withInt:1];
}

- (OrgJodaTimeInstant *)plusWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration {
  return [self withDurationAddedWithOrgJodaTimeReadableDuration:duration withInt:1];
}

- (OrgJodaTimeInstant *)minusWithLong:(jlong)duration {
  return [self withDurationAddedWithLong:duration withInt:-1];
}

- (OrgJodaTimeInstant *)minusWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration {
  return [self withDurationAddedWithOrgJodaTimeReadableDuration:duration withInt:-1];
}

- (jlong)getMillis {
  return iMillis_;
}

- (OrgJodaTimeChronology *)getChronology {
  return OrgJodaTimeChronoISOChronology_getInstanceUTC();
}

- (OrgJodaTimeDateTime *)toDateTime {
  return create_OrgJodaTimeDateTime_initWithLong_withOrgJodaTimeChronology_([self getMillis], OrgJodaTimeChronoISOChronology_getInstance());
}

- (OrgJodaTimeDateTime *)toDateTimeISO {
  return [self toDateTime];
}

- (OrgJodaTimeMutableDateTime *)toMutableDateTime {
  return create_OrgJodaTimeMutableDateTime_initWithLong_withOrgJodaTimeChronology_([self getMillis], OrgJodaTimeChronoISOChronology_getInstance());
}

- (OrgJodaTimeMutableDateTime *)toMutableDateTimeISO {
  return [self toMutableDateTime];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgJodaTimeInstant;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeInstant;", 0x9, 0, 1, -1, -1, 2, -1 },
    { NULL, "LOrgJodaTimeInstant;", 0x9, 0, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 5, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeInstant;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeInstant;", 0x1, 6, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeInstant;", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeInstant;", 0x1, 7, 9, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeInstant;", 0x1, 10, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeInstant;", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeInstant;", 0x1, 12, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeInstant;", 0x1, 12, 11, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronology;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTime;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTime;", 0x1, -1, -1, -1, -1, 13, -1 },
    { NULL, "LOrgJodaTimeMutableDateTime;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMutableDateTime;", 0x1, -1, -1, -1, -1, 14, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(now);
  methods[1].selector = @selector(parseWithNSString:);
  methods[2].selector = @selector(parseWithNSString:withOrgJodaTimeFormatDateTimeFormatter:);
  methods[3].selector = @selector(init);
  methods[4].selector = @selector(initWithLong:);
  methods[5].selector = @selector(initWithId:);
  methods[6].selector = @selector(toInstant);
  methods[7].selector = @selector(withMillisWithLong:);
  methods[8].selector = @selector(withDurationAddedWithLong:withInt:);
  methods[9].selector = @selector(withDurationAddedWithOrgJodaTimeReadableDuration:withInt:);
  methods[10].selector = @selector(plusWithLong:);
  methods[11].selector = @selector(plusWithOrgJodaTimeReadableDuration:);
  methods[12].selector = @selector(minusWithLong:);
  methods[13].selector = @selector(minusWithOrgJodaTimeReadableDuration:);
  methods[14].selector = @selector(getMillis);
  methods[15].selector = @selector(getChronology);
  methods[16].selector = @selector(toDateTime);
  methods[17].selector = @selector(toDateTimeISO);
  methods[18].selector = @selector(toMutableDateTime);
  methods[19].selector = @selector(toMutableDateTimeISO);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeInstant_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "iMillis_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "parse", "LNSString;", (void *)&OrgJodaTimeInstant__Annotations$0, "LNSString;LOrgJodaTimeFormatDateTimeFormatter;", "J", "LNSObject;", "withMillis", "withDurationAdded", "JI", "LOrgJodaTimeReadableDuration;I", "plus", "LOrgJodaTimeReadableDuration;", "minus", (void *)&OrgJodaTimeInstant__Annotations$1, (void *)&OrgJodaTimeInstant__Annotations$2 };
  static const J2ObjcClassInfo _OrgJodaTimeInstant = { "Instant", "org.joda.time", ptrTable, methods, fields, 7, 0x11, 20, 2, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeInstant;
}

@end

OrgJodaTimeInstant *OrgJodaTimeInstant_now() {
  OrgJodaTimeInstant_initialize();
  return create_OrgJodaTimeInstant_init();
}

OrgJodaTimeInstant *OrgJodaTimeInstant_parseWithNSString_(NSString *str) {
  OrgJodaTimeInstant_initialize();
  return OrgJodaTimeInstant_parseWithNSString_withOrgJodaTimeFormatDateTimeFormatter_(str, OrgJodaTimeFormatISODateTimeFormat_dateTimeParser());
}

OrgJodaTimeInstant *OrgJodaTimeInstant_parseWithNSString_withOrgJodaTimeFormatDateTimeFormatter_(NSString *str, OrgJodaTimeFormatDateTimeFormatter *formatter) {
  OrgJodaTimeInstant_initialize();
  return [((OrgJodaTimeDateTime *) nil_chk([((OrgJodaTimeFormatDateTimeFormatter *) nil_chk(formatter)) parseDateTimeWithNSString:str])) toInstant];
}

void OrgJodaTimeInstant_init(OrgJodaTimeInstant *self) {
  OrgJodaTimeBaseAbstractInstant_init(self);
  self->iMillis_ = OrgJodaTimeDateTimeUtils_currentTimeMillis();
}

OrgJodaTimeInstant *new_OrgJodaTimeInstant_init() {
  J2OBJC_NEW_IMPL(OrgJodaTimeInstant, init)
}

OrgJodaTimeInstant *create_OrgJodaTimeInstant_init() {
  J2OBJC_CREATE_IMPL(OrgJodaTimeInstant, init)
}

void OrgJodaTimeInstant_initWithLong_(OrgJodaTimeInstant *self, jlong instant) {
  OrgJodaTimeBaseAbstractInstant_init(self);
  self->iMillis_ = instant;
}

OrgJodaTimeInstant *new_OrgJodaTimeInstant_initWithLong_(jlong instant) {
  J2OBJC_NEW_IMPL(OrgJodaTimeInstant, initWithLong_, instant)
}

OrgJodaTimeInstant *create_OrgJodaTimeInstant_initWithLong_(jlong instant) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeInstant, initWithLong_, instant)
}

void OrgJodaTimeInstant_initWithId_(OrgJodaTimeInstant *self, id instant) {
  OrgJodaTimeBaseAbstractInstant_init(self);
  id<OrgJodaTimeConvertInstantConverter> converter = [((OrgJodaTimeConvertConverterManager *) nil_chk(OrgJodaTimeConvertConverterManager_getInstance())) getInstantConverterWithId:instant];
  self->iMillis_ = [((id<OrgJodaTimeConvertInstantConverter>) nil_chk(converter)) getInstantMillisWithId:instant withOrgJodaTimeChronology:OrgJodaTimeChronoISOChronology_getInstanceUTC()];
}

OrgJodaTimeInstant *new_OrgJodaTimeInstant_initWithId_(id instant) {
  J2OBJC_NEW_IMPL(OrgJodaTimeInstant, initWithId_, instant)
}

OrgJodaTimeInstant *create_OrgJodaTimeInstant_initWithId_(id instant) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeInstant, initWithId_, instant)
}

IOSObjectArray *OrgJodaTimeInstant__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJodaConvertFromString() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgJodaTimeInstant__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgJodaTimeInstant__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeInstant)
