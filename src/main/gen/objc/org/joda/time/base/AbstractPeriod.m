//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/base/AbstractPeriod.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/annotation/Annotation.h"
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

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeBaseAbstractPeriod__Annotations$0();

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
  return create_OrgJodaTimePeriod_initWithId_(self);
}

- (OrgJodaTimeMutablePeriod *)toMutablePeriod {
  return create_OrgJodaTimeMutablePeriod_initWithId_(self);
}

- (jboolean)isEqual:(id)period {
  if (self == period) {
    return true;
  }
  if ([OrgJodaTimeReadablePeriod_class_() isInstance:period] == false) {
    return false;
  }
  id<OrgJodaTimeReadablePeriod> other = (id<OrgJodaTimeReadablePeriod>) cast_check(period, OrgJodaTimeReadablePeriod_class_());
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
  return [formatter printWithOrgJodaTimeReadablePeriod:self];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationFieldType;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "[LOrgJodaTimeDurationFieldType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, 3, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimePeriod;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMutablePeriod;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 8, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 9, -1, -1, -1, 10, -1 },
    { NULL, "LNSString;", 0x1, 9, 11, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(size);
  methods[2].selector = @selector(getFieldTypeWithInt:);
  methods[3].selector = @selector(getFieldTypes);
  methods[4].selector = @selector(getValues);
  methods[5].selector = @selector(getWithOrgJodaTimeDurationFieldType:);
  methods[6].selector = @selector(isSupportedWithOrgJodaTimeDurationFieldType:);
  methods[7].selector = @selector(indexOfWithOrgJodaTimeDurationFieldType:);
  methods[8].selector = @selector(toPeriod);
  methods[9].selector = @selector(toMutablePeriod);
  methods[10].selector = @selector(isEqual:);
  methods[11].selector = @selector(hash);
  methods[12].selector = @selector(description);
  methods[13].selector = @selector(toStringWithOrgJodaTimeFormatPeriodFormatter:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getFieldType", "I", "get", "LOrgJodaTimeDurationFieldType;", "isSupported", "indexOf", "equals", "LNSObject;", "hashCode", "toString", (void *)&OrgJodaTimeBaseAbstractPeriod__Annotations$0, "LOrgJodaTimeFormatPeriodFormatter;" };
  static const J2ObjcClassInfo _OrgJodaTimeBaseAbstractPeriod = { "AbstractPeriod", "org.joda.time.base", ptrTable, methods, NULL, 7, 0x401, 14, 0, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeBaseAbstractPeriod;
}

@end

void OrgJodaTimeBaseAbstractPeriod_init(OrgJodaTimeBaseAbstractPeriod *self) {
  NSObject_init(self);
}

IOSObjectArray *OrgJodaTimeBaseAbstractPeriod__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJodaConvertToString() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeBaseAbstractPeriod)
