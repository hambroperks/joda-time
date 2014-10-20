//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/field/AbstractReadableInstantFieldProperty.java
//

#include "AbstractReadableInstantFieldProperty.h"
#include "Chronology.h"
#include "DateTimeField.h"
#include "DateTimeFieldType.h"
#include "DateTimeUtils.h"
#include "DurationField.h"
#include "FieldUtils.h"
#include "IOSClass.h"
#include "Interval.h"
#include "ReadableInstant.h"
#include "ReadablePartial.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Locale.h"

@implementation OrgJodaTimeFieldAbstractReadableInstantFieldProperty

- (instancetype)init {
  return [super init];
}

- (OrgJodaTimeDateTimeField *)getField {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgJodaTimeDateTimeFieldType *)getFieldType {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getType];
}

- (NSString *)getName {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getName];
}

- (long long int)getMillis {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgJodaTimeChronology *)getChronology {
  @throw [[JavaLangUnsupportedOperationException alloc] initWithNSString:@"The method getChronology() was added in v1.4 and needs to be implemented by subclasses of AbstractReadableInstantFieldProperty"];
}

- (int)get {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getWithLong:[self getMillis]];
}

- (NSString *)getAsString {
  return [JavaLangInteger toStringWithInt:[self get]];
}

- (NSString *)getAsText {
  return [self getAsTextWithJavaUtilLocale:nil];
}

- (NSString *)getAsTextWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getAsTextWithLong:[self getMillis] withJavaUtilLocale:locale];
}

- (NSString *)getAsShortText {
  return [self getAsShortTextWithJavaUtilLocale:nil];
}

- (NSString *)getAsShortTextWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getAsShortTextWithLong:[self getMillis] withJavaUtilLocale:locale];
}

- (int)getDifferenceWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant {
  if (instant == nil) {
    return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getDifferenceWithLong:[self getMillis] withLong:[OrgJodaTimeDateTimeUtils currentTimeMillis]];
  }
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getDifferenceWithLong:[self getMillis] withLong:[((id<OrgJodaTimeReadableInstant>) nil_chk(instant)) getMillis]];
}

- (long long int)getDifferenceAsLongWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant {
  if (instant == nil) {
    return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getDifferenceAsLongWithLong:[self getMillis] withLong:[OrgJodaTimeDateTimeUtils currentTimeMillis]];
  }
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getDifferenceAsLongWithLong:[self getMillis] withLong:[((id<OrgJodaTimeReadableInstant>) nil_chk(instant)) getMillis]];
}

- (OrgJodaTimeDurationField *)getDurationField {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getDurationField];
}

- (OrgJodaTimeDurationField *)getRangeDurationField {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getRangeDurationField];
}

- (BOOL)isLeap {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) isLeapWithLong:[self getMillis]];
}

- (int)getLeapAmount {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getLeapAmountWithLong:[self getMillis]];
}

- (OrgJodaTimeDurationField *)getLeapDurationField {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getLeapDurationField];
}

- (int)getMinimumValueOverall {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getMinimumValue];
}

- (int)getMinimumValue {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getMinimumValueWithLong:[self getMillis]];
}

- (int)getMaximumValueOverall {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getMaximumValue];
}

- (int)getMaximumValue {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getMaximumValueWithLong:[self getMillis]];
}

- (int)getMaximumTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getMaximumTextLengthWithJavaUtilLocale:locale];
}

- (int)getMaximumShortTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getMaximumShortTextLengthWithJavaUtilLocale:locale];
}

- (long long int)remainder {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) remainderWithLong:[self getMillis]];
}

- (OrgJodaTimeInterval *)toInterval {
  OrgJodaTimeDateTimeField *field = [self getField];
  long long int start = [((OrgJodaTimeDateTimeField *) nil_chk(field)) roundFloorWithLong:[self getMillis]];
  long long int end = [field addWithLong:start withInt:1];
  OrgJodaTimeInterval *interval = [[OrgJodaTimeInterval alloc] initWithLong:start withLong:end];
  return interval;
}

- (int)compareToWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant {
  if (instant == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"The instant must not be null"];
  }
  int thisValue = [self get];
  int otherValue = [((id<OrgJodaTimeReadableInstant>) nil_chk(instant)) getWithOrgJodaTimeDateTimeFieldType:[self getFieldType]];
  if (thisValue < otherValue) {
    return -1;
  }
  else if (thisValue > otherValue) {
    return 1;
  }
  else {
    return 0;
  }
}

- (int)compareToWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial {
  if (partial == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"The partial must not be null"];
  }
  int thisValue = [self get];
  int otherValue = [((id<OrgJodaTimeReadablePartial>) nil_chk(partial)) getWithOrgJodaTimeDateTimeFieldType:[self getFieldType]];
  if (thisValue < otherValue) {
    return -1;
  }
  else if (thisValue > otherValue) {
    return 1;
  }
  else {
    return 0;
  }
}

- (BOOL)isEqual:(id)object {
  if (self == object) {
    return YES;
  }
  if ([object isKindOfClass:[OrgJodaTimeFieldAbstractReadableInstantFieldProperty class]] == NO) {
    return NO;
  }
  OrgJodaTimeFieldAbstractReadableInstantFieldProperty *other = (OrgJodaTimeFieldAbstractReadableInstantFieldProperty *) check_class_cast(object, [OrgJodaTimeFieldAbstractReadableInstantFieldProperty class]);
  return [self get] == [((OrgJodaTimeFieldAbstractReadableInstantFieldProperty *) nil_chk(other)) get] && [((OrgJodaTimeDateTimeFieldType *) nil_chk([self getFieldType])) isEqual:[other getFieldType]] && [OrgJodaTimeFieldFieldUtils equalsWithId:[self getChronology] withId:[other getChronology]];
}

- (NSUInteger)hash {
  return [self get] * 17 + ((int) [((OrgJodaTimeDateTimeFieldType *) nil_chk([self getFieldType])) hash]) + ((int) [((OrgJodaTimeChronology *) nil_chk([self getChronology])) hash]);
}

- (NSString *)description {
  return [NSString stringWithFormat:@"Property[%@]", [self getName]];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", "AbstractReadableInstantFieldProperty", NULL, 0x1, NULL },
    { "getField", NULL, "Lorg.joda.time.DateTimeField;", 0x401, NULL },
    { "getFieldType", NULL, "Lorg.joda.time.DateTimeFieldType;", 0x1, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getMillis", NULL, "J", 0x404, NULL },
    { "getChronology", NULL, "Lorg.joda.time.Chronology;", 0x4, NULL },
    { "get", NULL, "I", 0x1, NULL },
    { "getAsString", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getAsText", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getAsTextWithJavaUtilLocale:", "getAsText", "Ljava.lang.String;", 0x1, NULL },
    { "getAsShortText", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getAsShortTextWithJavaUtilLocale:", "getAsShortText", "Ljava.lang.String;", 0x1, NULL },
    { "getDifferenceWithOrgJodaTimeReadableInstant:", "getDifference", "I", 0x1, NULL },
    { "getDifferenceAsLongWithOrgJodaTimeReadableInstant:", "getDifferenceAsLong", "J", 0x1, NULL },
    { "getDurationField", NULL, "Lorg.joda.time.DurationField;", 0x1, NULL },
    { "getRangeDurationField", NULL, "Lorg.joda.time.DurationField;", 0x1, NULL },
    { "isLeap", NULL, "Z", 0x1, NULL },
    { "getLeapAmount", NULL, "I", 0x1, NULL },
    { "getLeapDurationField", NULL, "Lorg.joda.time.DurationField;", 0x1, NULL },
    { "getMinimumValueOverall", NULL, "I", 0x1, NULL },
    { "getMinimumValue", NULL, "I", 0x1, NULL },
    { "getMaximumValueOverall", NULL, "I", 0x1, NULL },
    { "getMaximumValue", NULL, "I", 0x1, NULL },
    { "getMaximumTextLengthWithJavaUtilLocale:", "getMaximumTextLength", "I", 0x1, NULL },
    { "getMaximumShortTextLengthWithJavaUtilLocale:", "getMaximumShortTextLength", "I", 0x1, NULL },
    { "remainder", NULL, "J", 0x1, NULL },
    { "toInterval", NULL, "Lorg.joda.time.Interval;", 0x1, NULL },
    { "compareToWithOrgJodaTimeReadableInstant:", "compareTo", "I", 0x1, NULL },
    { "compareToWithOrgJodaTimeReadablePartial:", "compareTo", "I", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = OrgJodaTimeFieldAbstractReadableInstantFieldProperty_serialVersionUID },
  };
  static J2ObjcClassInfo _OrgJodaTimeFieldAbstractReadableInstantFieldProperty = { "AbstractReadableInstantFieldProperty", "org.joda.time.field", NULL, 0x401, 32, methods, 1, fields, 0, NULL};
  return &_OrgJodaTimeFieldAbstractReadableInstantFieldProperty;
}

@end
