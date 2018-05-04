//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/base/AbstractPartial.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/ClassCastException.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTime.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/ReadableInstant.h"
#include "org/joda/time/ReadablePartial.h"
#include "org/joda/time/base/AbstractPartial.h"
#include "org/joda/time/field/FieldUtils.h"
#include "org/joda/time/format/DateTimeFormatter.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation OrgJodaTimeBaseAbstractPartial

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeBaseAbstractPartial_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgJodaTimeDateTimeField *)getFieldWithInt:(jint)index
                    withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgJodaTimeDateTimeFieldType *)getFieldTypeWithInt:(jint)index {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getFieldWithInt:index withOrgJodaTimeChronology:[self getChronology]])) getType];
}

- (IOSObjectArray *)getFieldTypes {
  IOSObjectArray *result = [IOSObjectArray arrayWithLength:[self size] type:OrgJodaTimeDateTimeFieldType_class_()];
  for (jint i = 0; i < result->size_; i++) {
    IOSObjectArray_Set(result, i, [self getFieldTypeWithInt:i]);
  }
  return result;
}

- (OrgJodaTimeDateTimeField *)getFieldWithInt:(jint)index {
  return [self getFieldWithInt:index withOrgJodaTimeChronology:[self getChronology]];
}

- (IOSObjectArray *)getFields {
  IOSObjectArray *result = [IOSObjectArray arrayWithLength:[self size] type:OrgJodaTimeDateTimeField_class_()];
  for (jint i = 0; i < result->size_; i++) {
    IOSObjectArray_Set(result, i, [self getFieldWithInt:i]);
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

- (jint)getWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type {
  return [self getValueWithInt:[self indexOfSupportedWithOrgJodaTimeDateTimeFieldType:type]];
}

- (jboolean)isSupportedWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type {
  return ([self indexOfWithOrgJodaTimeDateTimeFieldType:type] != -1);
}

- (jint)indexOfWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type {
  for (jint i = 0, isize = [self size]; i < isize; i++) {
    if ([self getFieldTypeWithInt:i] == type) {
      return i;
    }
  }
  return -1;
}

- (jint)indexOfSupportedWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type {
  jint index = [self indexOfWithOrgJodaTimeDateTimeFieldType:type];
  if (index == -1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@$", @"Field '", type, @"' is not supported"));
  }
  return index;
}

- (jint)indexOfWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type {
  for (jint i = 0, isize = [self size]; i < isize; i++) {
    if ([((OrgJodaTimeDateTimeFieldType *) nil_chk([self getFieldTypeWithInt:i])) getDurationType] == type) {
      return i;
    }
  }
  return -1;
}

- (jint)indexOfSupportedWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type {
  jint index = [self indexOfWithOrgJodaTimeDurationFieldType:type];
  if (index == -1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@$", @"Field '", type, @"' is not supported"));
  }
  return index;
}

- (OrgJodaTimeDateTime *)toDateTimeWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)baseInstant {
  OrgJodaTimeChronology *chrono = OrgJodaTimeDateTimeUtils_getInstantChronologyWithOrgJodaTimeReadableInstant_(baseInstant);
  jlong instantMillis = OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(baseInstant);
  jlong resolved = [((OrgJodaTimeChronology *) nil_chk(chrono)) setWithOrgJodaTimeReadablePartial:self withLong:instantMillis];
  return create_OrgJodaTimeDateTime_initWithLong_withOrgJodaTimeChronology_(resolved, chrono);
}

- (jboolean)isEqual:(id)partial {
  if (self == partial) {
    return true;
  }
  if ([OrgJodaTimeReadablePartial_class_() isInstance:partial] == false) {
    return false;
  }
  id<OrgJodaTimeReadablePartial> other = (id<OrgJodaTimeReadablePartial>) cast_check(partial, OrgJodaTimeReadablePartial_class_());
  if ([self size] != [((id<OrgJodaTimeReadablePartial>) nil_chk(other)) size]) {
    return false;
  }
  for (jint i = 0, isize = [self size]; i < isize; i++) {
    if ([self getValueWithInt:i] != [other getValueWithInt:i] || [self getFieldTypeWithInt:i] != [other getFieldTypeWithInt:i]) {
      return false;
    }
  }
  return OrgJodaTimeFieldFieldUtils_equalsWithId_withId_([self getChronology], [other getChronology]);
}

- (NSUInteger)hash {
  jint total = 157;
  for (jint i = 0, isize = [self size]; i < isize; i++) {
    total = 23 * total + [self getValueWithInt:i];
    total = 23 * total + ((jint) [((OrgJodaTimeDateTimeFieldType *) nil_chk([self getFieldTypeWithInt:i])) hash]);
  }
  total += ((jint) [((OrgJodaTimeChronology *) nil_chk([self getChronology])) hash]);
  return total;
}

- (jint)compareToWithId:(id<OrgJodaTimeReadablePartial>)other {
  cast_check(other, OrgJodaTimeReadablePartial_class_());
  if (self == other) {
    return 0;
  }
  if ([self size] != [((id<OrgJodaTimeReadablePartial>) nil_chk(other)) size]) {
    @throw create_JavaLangClassCastException_initWithNSString_(@"ReadablePartial objects must have matching field types");
  }
  for (jint i = 0, isize = [self size]; i < isize; i++) {
    if ([self getFieldTypeWithInt:i] != [other getFieldTypeWithInt:i]) {
      @throw create_JavaLangClassCastException_initWithNSString_(@"ReadablePartial objects must have matching field types");
    }
  }
  for (jint i = 0, isize = [self size]; i < isize; i++) {
    if ([self getValueWithInt:i] > [other getValueWithInt:i]) {
      return 1;
    }
    if ([self getValueWithInt:i] < [other getValueWithInt:i]) {
      return -1;
    }
  }
  return 0;
}

- (jboolean)isAfterWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial {
  if (partial == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Partial cannot be null");
  }
  return [self compareToWithId:partial] > 0;
}

- (jboolean)isBeforeWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial {
  if (partial == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Partial cannot be null");
  }
  return [self compareToWithId:partial] < 0;
}

- (jboolean)isEqualWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial {
  if (partial == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Partial cannot be null");
  }
  return [self compareToWithId:partial] == 0;
}

- (NSString *)toStringWithOrgJodaTimeFormatDateTimeFormatter:(OrgJodaTimeFormatDateTimeFormatter *)formatter {
  if (formatter == nil) {
    return [self description];
  }
  return [formatter printWithOrgJodaTimeReadablePartial:self];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTimeField;", 0x404, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTimeFieldType;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "[LOrgJodaTimeDateTimeFieldType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTimeField;", 0x1, 0, 3, -1, -1, -1, -1 },
    { NULL, "[LOrgJodaTimeDateTimeField;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 7, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 8, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 7, 9, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 8, 9, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDateTime;", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 14, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 15, 16, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 17, 16, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 18, 16, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 19, 16, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 20, 21, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getFieldWithInt:withOrgJodaTimeChronology:);
  methods[2].selector = @selector(getFieldTypeWithInt:);
  methods[3].selector = @selector(getFieldTypes);
  methods[4].selector = @selector(getFieldWithInt:);
  methods[5].selector = @selector(getFields);
  methods[6].selector = @selector(getValues);
  methods[7].selector = @selector(getWithOrgJodaTimeDateTimeFieldType:);
  methods[8].selector = @selector(isSupportedWithOrgJodaTimeDateTimeFieldType:);
  methods[9].selector = @selector(indexOfWithOrgJodaTimeDateTimeFieldType:);
  methods[10].selector = @selector(indexOfSupportedWithOrgJodaTimeDateTimeFieldType:);
  methods[11].selector = @selector(indexOfWithOrgJodaTimeDurationFieldType:);
  methods[12].selector = @selector(indexOfSupportedWithOrgJodaTimeDurationFieldType:);
  methods[13].selector = @selector(toDateTimeWithOrgJodaTimeReadableInstant:);
  methods[14].selector = @selector(isEqual:);
  methods[15].selector = @selector(hash);
  methods[16].selector = @selector(compareToWithId:);
  methods[17].selector = @selector(isAfterWithOrgJodaTimeReadablePartial:);
  methods[18].selector = @selector(isBeforeWithOrgJodaTimeReadablePartial:);
  methods[19].selector = @selector(isEqualWithOrgJodaTimeReadablePartial:);
  methods[20].selector = @selector(toStringWithOrgJodaTimeFormatDateTimeFormatter:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getField", "ILOrgJodaTimeChronology;", "getFieldType", "I", "get", "LOrgJodaTimeDateTimeFieldType;", "isSupported", "indexOf", "indexOfSupported", "LOrgJodaTimeDurationFieldType;", "toDateTime", "LOrgJodaTimeReadableInstant;", "equals", "LNSObject;", "hashCode", "compareTo", "LOrgJodaTimeReadablePartial;", "isAfter", "isBefore", "isEqual", "toString", "LOrgJodaTimeFormatDateTimeFormatter;", "Ljava/lang/Object;Lorg/joda/time/ReadablePartial;Ljava/lang/Comparable<Lorg/joda/time/ReadablePartial;>;" };
  static const J2ObjcClassInfo _OrgJodaTimeBaseAbstractPartial = { "AbstractPartial", "org.joda.time.base", ptrTable, methods, NULL, 7, 0x401, 21, 0, -1, -1, -1, 22, -1 };
  return &_OrgJodaTimeBaseAbstractPartial;
}

@end

void OrgJodaTimeBaseAbstractPartial_init(OrgJodaTimeBaseAbstractPartial *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeBaseAbstractPartial)
