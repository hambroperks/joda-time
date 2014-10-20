//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/base/AbstractPartial.java
//

#include "AbstractPartial.h"
#include "Chronology.h"
#include "DateTime.h"
#include "DateTimeField.h"
#include "DateTimeFieldType.h"
#include "DateTimeFormatter.h"
#include "DateTimeUtils.h"
#include "DurationFieldType.h"
#include "FieldUtils.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "ReadableInstant.h"
#include "ReadablePartial.h"
#include "java/lang/ClassCastException.h"
#include "java/lang/IllegalArgumentException.h"

@implementation OrgJodaTimeBaseAbstractPartial

- (instancetype)init {
  return [super init];
}

- (OrgJodaTimeDateTimeField *)getFieldWithInt:(int)index
                    withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgJodaTimeDateTimeFieldType *)getFieldTypeWithInt:(int)index {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getFieldWithInt:index withOrgJodaTimeChronology:[self getChronology]])) getType];
}

- (IOSObjectArray *)getFieldTypes {
  IOSObjectArray *result = [IOSObjectArray arrayWithLength:[self size] type:[IOSClass classWithClass:[OrgJodaTimeDateTimeFieldType class]]];
  for (int i = 0; i < (int) [result count]; i++) {
    (void) IOSObjectArray_Set(result, i, [self getFieldTypeWithInt:i]);
  }
  return result;
}

- (OrgJodaTimeDateTimeField *)getFieldWithInt:(int)index {
  return [self getFieldWithInt:index withOrgJodaTimeChronology:[self getChronology]];
}

- (IOSObjectArray *)getFields {
  IOSObjectArray *result = [IOSObjectArray arrayWithLength:[self size] type:[IOSClass classWithClass:[OrgJodaTimeDateTimeField class]]];
  for (int i = 0; i < (int) [result count]; i++) {
    (void) IOSObjectArray_Set(result, i, [self getFieldWithInt:i]);
  }
  return result;
}

- (IOSIntArray *)getValues {
  IOSIntArray *result = [IOSIntArray arrayWithLength:[self size]];
  for (int i = 0; i < (int) [result count]; i++) {
    (*IOSIntArray_GetRef(result, i)) = [self getValueWithInt:i];
  }
  return result;
}

- (int)getWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type {
  return [self getValueWithInt:[self indexOfSupportedWithOrgJodaTimeDateTimeFieldType:type]];
}

- (BOOL)isSupportedWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type {
  return ([self indexOfWithOrgJodaTimeDateTimeFieldType:type] != -1);
}

- (int)indexOfWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type {
  for (int i = 0, isize = [self size]; i < isize; i++) {
    if ([self getFieldTypeWithInt:i] == type) {
      return i;
    }
  }
  return -1;
}

- (int)indexOfSupportedWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type {
  int index = [self indexOfWithOrgJodaTimeDateTimeFieldType:type];
  if (index == -1) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Field '%@' is not supported", type]];
  }
  return index;
}

- (int)indexOfWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type {
  for (int i = 0, isize = [self size]; i < isize; i++) {
    if ([((OrgJodaTimeDateTimeFieldType *) nil_chk([self getFieldTypeWithInt:i])) getDurationType] == type) {
      return i;
    }
  }
  return -1;
}

- (int)indexOfSupportedWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type {
  int index = [self indexOfWithOrgJodaTimeDurationFieldType:type];
  if (index == -1) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Field '%@' is not supported", type]];
  }
  return index;
}

- (OrgJodaTimeDateTime *)toDateTimeWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)baseInstant {
  OrgJodaTimeChronology *chrono = [OrgJodaTimeDateTimeUtils getInstantChronologyWithOrgJodaTimeReadableInstant:baseInstant];
  long long int instantMillis = [OrgJodaTimeDateTimeUtils getInstantMillisWithOrgJodaTimeReadableInstant:baseInstant];
  long long int resolved = [((OrgJodaTimeChronology *) nil_chk(chrono)) setWithOrgJodaTimeReadablePartial:self withLong:instantMillis];
  return [[OrgJodaTimeDateTime alloc] initWithLong:resolved withOrgJodaTimeChronology:chrono];
}

- (BOOL)isEqual:(id)partial {
  if (self == partial) {
    return YES;
  }
  if ([partial conformsToProtocol: @protocol(OrgJodaTimeReadablePartial)] == NO) {
    return NO;
  }
  id<OrgJodaTimeReadablePartial> other = (id<OrgJodaTimeReadablePartial>) check_protocol_cast(partial, @protocol(OrgJodaTimeReadablePartial));
  if ([self size] != [((id<OrgJodaTimeReadablePartial>) nil_chk(other)) size]) {
    return NO;
  }
  for (int i = 0, isize = [self size]; i < isize; i++) {
    if ([self getValueWithInt:i] != [other getValueWithInt:i] || [self getFieldTypeWithInt:i] != [other getFieldTypeWithInt:i]) {
      return NO;
    }
  }
  return [OrgJodaTimeFieldFieldUtils equalsWithId:[self getChronology] withId:[other getChronology]];
}

- (NSUInteger)hash {
  int total = 157;
  for (int i = 0, isize = [self size]; i < isize; i++) {
    total = 23 * total + [self getValueWithInt:i];
    total = 23 * total + ((int) [((OrgJodaTimeDateTimeFieldType *) nil_chk([self getFieldTypeWithInt:i])) hash]);
  }
  total += ((int) [((OrgJodaTimeChronology *) nil_chk([self getChronology])) hash]);
  return total;
}

- (int)compareToWithId:(id<OrgJodaTimeReadablePartial>)other {
  if (other != nil && ![(id) other conformsToProtocol: @protocol(OrgJodaTimeReadablePartial)]) {
    @throw [[JavaLangClassCastException alloc] init];
  }
  if (self == other) {
    return 0;
  }
  if ([self size] != [((id<OrgJodaTimeReadablePartial>) nil_chk(other)) size]) {
    @throw [[JavaLangClassCastException alloc] initWithNSString:@"ReadablePartial objects must have matching field types"];
  }
  for (int i = 0, isize = [self size]; i < isize; i++) {
    if ([self getFieldTypeWithInt:i] != [other getFieldTypeWithInt:i]) {
      @throw [[JavaLangClassCastException alloc] initWithNSString:@"ReadablePartial objects must have matching field types"];
    }
  }
  for (int i = 0, isize = [self size]; i < isize; i++) {
    if ([self getValueWithInt:i] > [other getValueWithInt:i]) {
      return 1;
    }
    if ([self getValueWithInt:i] < [other getValueWithInt:i]) {
      return -1;
    }
  }
  return 0;
}

- (BOOL)isAfterWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial {
  if (partial == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Partial cannot be null"];
  }
  return [self compareToWithId:partial] > 0;
}

- (BOOL)isBeforeWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial {
  if (partial == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Partial cannot be null"];
  }
  return [self compareToWithId:partial] < 0;
}

- (BOOL)isEqualWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial {
  if (partial == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Partial cannot be null"];
  }
  return [self compareToWithId:partial] == 0;
}

- (NSString *)toStringWithOrgJodaTimeFormatDateTimeFormatter:(OrgJodaTimeFormatDateTimeFormatter *)formatter {
  if (formatter == nil) {
    return [self description];
  }
  return [((OrgJodaTimeFormatDateTimeFormatter *) nil_chk(formatter)) printWithOrgJodaTimeReadablePartial:self];
}

- (OrgJodaTimeChronology *)getChronology {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)getValueWithInt:(int)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)size {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", "AbstractPartial", NULL, 0x4, NULL },
    { "getFieldWithInt:withOrgJodaTimeChronology:", "getField", "Lorg.joda.time.DateTimeField;", 0x404, NULL },
    { "getFieldTypeWithInt:", "getFieldType", "Lorg.joda.time.DateTimeFieldType;", 0x1, NULL },
    { "getFieldTypes", NULL, "[Lorg.joda.time.DateTimeFieldType;", 0x1, NULL },
    { "getFieldWithInt:", "getField", "Lorg.joda.time.DateTimeField;", 0x1, NULL },
    { "getFields", NULL, "[Lorg.joda.time.DateTimeField;", 0x1, NULL },
    { "getValues", NULL, "[I", 0x1, NULL },
    { "getWithOrgJodaTimeDateTimeFieldType:", "get", "I", 0x1, NULL },
    { "isSupportedWithOrgJodaTimeDateTimeFieldType:", "isSupported", "Z", 0x1, NULL },
    { "indexOfWithOrgJodaTimeDateTimeFieldType:", "indexOf", "I", 0x1, NULL },
    { "indexOfSupportedWithOrgJodaTimeDateTimeFieldType:", "indexOfSupported", "I", 0x4, NULL },
    { "indexOfWithOrgJodaTimeDurationFieldType:", "indexOf", "I", 0x4, NULL },
    { "indexOfSupportedWithOrgJodaTimeDurationFieldType:", "indexOfSupported", "I", 0x4, NULL },
    { "toDateTimeWithOrgJodaTimeReadableInstant:", "toDateTime", "Lorg.joda.time.DateTime;", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "compareToWithOrgJodaTimeReadablePartial:", "compareTo", "I", 0x1, NULL },
    { "isAfterWithOrgJodaTimeReadablePartial:", "isAfter", "Z", 0x1, NULL },
    { "isBeforeWithOrgJodaTimeReadablePartial:", "isBefore", "Z", 0x1, NULL },
    { "isEqualWithOrgJodaTimeReadablePartial:", "isEqual", "Z", 0x1, NULL },
    { "toStringWithOrgJodaTimeFormatDateTimeFormatter:", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "getChronology", NULL, "Lorg.joda.time.Chronology;", 0x401, NULL },
    { "getValueWithInt:", "getValue", "I", 0x401, NULL },
    { "size", NULL, "I", 0x401, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x401, NULL },
  };
  static J2ObjcClassInfo _OrgJodaTimeBaseAbstractPartial = { "AbstractPartial", "org.joda.time.base", NULL, 0x401, 25, methods, 0, NULL, 0, NULL};
  return &_OrgJodaTimeBaseAbstractPartial;
}

@end
