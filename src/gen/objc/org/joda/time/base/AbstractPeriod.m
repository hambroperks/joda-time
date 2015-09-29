//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/base/AbstractPeriod.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/joda/convert/ToString.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/MutablePeriod.h"
#include "org/joda/time/Period.h"
#include "org/joda/time/PeriodType.h"
#include "org/joda/time/ReadablePeriod.h"
#include "org/joda/time/base/AbstractPeriod.h"
#include "org/joda/time/format/ISOPeriodFormat.h"
#include "org/joda/time/format/PeriodFormatter.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation OrgJodaTimeBaseAbstractPeriod

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeBaseAbstractPeriod_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)size {
  return [((OrgJodaTimePeriodType *) nil_chk([self getPeriodType])) size];
}

- (OrgJodaTimeDurationFieldType *)getFieldTypeWithInt:(jint)index {
  return [((OrgJodaTimePeriodType *) nil_chk([self getPeriodType])) getFieldTypeWithInt:index];
}

- (IOSObjectArray *)getFieldTypes {
  IOSObjectArray *result = [IOSObjectArray arrayWithLength:[self size] type:OrgJodaTimeDurationFieldType_class_()];
  for (jint i = 0; i < result->size_; i++) {
    IOSObjectArray_Set(result, i, [self getFieldTypeWithInt:i]);
  }
  return result;
}

- (IOSIntArray *)getValues {
  IOSIntArray *result = [IOSIntArray arrayWithLength:[self size]];
  for (jint i = 0; i < result->size_; i++) {
    *IOSIntArray_GetRef(result, i) = [self getValueWithInt:i];
  }
  return result;
}

- (jint)getWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type {
  jint index = [self indexOfWithOrgJodaTimeDurationFieldType:type];
  if (index == -1) {
    return 0;
  }
  return [self getValueWithInt:index];
}

- (jboolean)isSupportedWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type {
  return [((OrgJodaTimePeriodType *) nil_chk([self getPeriodType])) isSupportedWithOrgJodaTimeDurationFieldType:type];
}

- (jint)indexOfWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type {
  return [((OrgJodaTimePeriodType *) nil_chk([self getPeriodType])) indexOfWithOrgJodaTimeDurationFieldType:type];
}

- (OrgJodaTimePeriod *)toPeriod {
  return [new_OrgJodaTimePeriod_initWithId_(self) autorelease];
}

- (OrgJodaTimeMutablePeriod *)toMutablePeriod {
  return [new_OrgJodaTimeMutablePeriod_initWithId_(self) autorelease];
}

- (jboolean)isEqual:(id)period {
  if (self == period) {
    return true;
  }
  if ([OrgJodaTimeReadablePeriod_class_() isInstance:period] == false) {
    return false;
  }
  id<OrgJodaTimeReadablePeriod> other = (id<OrgJodaTimeReadablePeriod>) check_protocol_cast(period, OrgJodaTimeReadablePeriod_class_());
  if ([self size] != [((id<OrgJodaTimeReadablePeriod>) nil_chk(other)) size]) {
    return false;
  }
  for (jint i = 0, isize = [self size]; i < isize; i++) {
    if ([self getValueWithInt:i] != [other getValueWithInt:i] || [self getFieldTypeWithInt:i] != [other getFieldTypeWithInt:i]) {
      return false;
    }
  }
  return true;
}

- (NSUInteger)hash {
  jint total = 17;
  for (jint i = 0, isize = [self size]; i < isize; i++) {
    total = 27 * total + [self getValueWithInt:i];
    total = 27 * total + ((jint) [((OrgJodaTimeDurationFieldType *) nil_chk([self getFieldTypeWithInt:i])) hash]);
  }
  return total;
}

- (NSString *)description {
  return [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeFormatISOPeriodFormat_standard())) printWithOrgJodaTimeReadablePeriod:self];
}

- (NSString *)toStringWithOrgJodaTimeFormatPeriodFormatter:(OrgJodaTimeFormatPeriodFormatter *)formatter {
  if (formatter == nil) {
    return [self description];
  }
  return [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(formatter)) printWithOrgJodaTimeReadablePeriod:self];
}

+ (IOSObjectArray *)__annotations_toString {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[OrgJodaConvertToString alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "AbstractPeriod", NULL, 0x4, NULL, NULL },
    { "size", NULL, "I", 0x1, NULL, NULL },
    { "getFieldTypeWithInt:", "getFieldType", "Lorg.joda.time.DurationFieldType;", 0x1, NULL, NULL },
    { "getFieldTypes", NULL, "[Lorg.joda.time.DurationFieldType;", 0x1, NULL, NULL },
    { "getValues", NULL, "[I", 0x1, NULL, NULL },
    { "getWithOrgJodaTimeDurationFieldType:", "get", "I", 0x1, NULL, NULL },
    { "isSupportedWithOrgJodaTimeDurationFieldType:", "isSupported", "Z", 0x1, NULL, NULL },
    { "indexOfWithOrgJodaTimeDurationFieldType:", "indexOf", "I", 0x1, NULL, NULL },
    { "toPeriod", NULL, "Lorg.joda.time.Period;", 0x1, NULL, NULL },
    { "toMutablePeriod", NULL, "Lorg.joda.time.MutablePeriod;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "toStringWithOrgJodaTimeFormatPeriodFormatter:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgJodaTimeBaseAbstractPeriod = { 2, "AbstractPeriod", "org.joda.time.base", NULL, 0x401, 14, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeBaseAbstractPeriod;
}

@end

void OrgJodaTimeBaseAbstractPeriod_init(OrgJodaTimeBaseAbstractPeriod *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeBaseAbstractPeriod)
