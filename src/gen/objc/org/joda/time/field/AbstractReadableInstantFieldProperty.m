//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/field/AbstractReadableInstantFieldProperty.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Locale.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/Interval.h"
#include "org/joda/time/ReadableInstant.h"
#include "org/joda/time/ReadablePartial.h"
#include "org/joda/time/field/AbstractReadableInstantFieldProperty.h"
#include "org/joda/time/field/FieldUtils.h"

#define OrgJodaTimeFieldAbstractReadableInstantFieldProperty_serialVersionUID 1971226328211649661LL

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeFieldAbstractReadableInstantFieldProperty, serialVersionUID, jlong)

@implementation OrgJodaTimeFieldAbstractReadableInstantFieldProperty

- (instancetype)init {
  OrgJodaTimeFieldAbstractReadableInstantFieldProperty_init(self);
  return self;
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

- (jlong)getMillis {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgJodaTimeChronology *)getChronology {
  @throw [new_JavaLangUnsupportedOperationException_initWithNSString_(@"The method getChronology() was added in v1.4 and needs to be implemented by subclasses of AbstractReadableInstantFieldProperty") autorelease];
}

- (jint)get {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getWithLong:[self getMillis]];
}

- (NSString *)getAsString {
  return JavaLangInteger_toStringWithInt_([self get]);
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

- (jint)getDifferenceWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant {
  if (instant == nil) {
    return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getDifferenceWithLong:[self getMillis] withLong:OrgJodaTimeDateTimeUtils_currentTimeMillis()];
  }
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getDifferenceWithLong:[self getMillis] withLong:[((id<OrgJodaTimeReadableInstant>) nil_chk(instant)) getMillis]];
}

- (jlong)getDifferenceAsLongWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant {
  if (instant == nil) {
    return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getDifferenceAsLongWithLong:[self getMillis] withLong:OrgJodaTimeDateTimeUtils_currentTimeMillis()];
  }
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getDifferenceAsLongWithLong:[self getMillis] withLong:[((id<OrgJodaTimeReadableInstant>) nil_chk(instant)) getMillis]];
}

- (OrgJodaTimeDurationField *)getDurationField {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getDurationField];
}

- (OrgJodaTimeDurationField *)getRangeDurationField {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getRangeDurationField];
}

- (jboolean)isLeap {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) isLeapWithLong:[self getMillis]];
}

- (jint)getLeapAmount {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getLeapAmountWithLong:[self getMillis]];
}

- (OrgJodaTimeDurationField *)getLeapDurationField {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getLeapDurationField];
}

- (jint)getMinimumValueOverall {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getMinimumValue];
}

- (jint)getMinimumValue {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getMinimumValueWithLong:[self getMillis]];
}

- (jint)getMaximumValueOverall {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getMaximumValue];
}

- (jint)getMaximumValue {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getMaximumValueWithLong:[self getMillis]];
}

- (jint)getMaximumTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getMaximumTextLengthWithJavaUtilLocale:locale];
}

- (jint)getMaximumShortTextLengthWithJavaUtilLocale:(JavaUtilLocale *)locale {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) getMaximumShortTextLengthWithJavaUtilLocale:locale];
}

- (jlong)remainder {
  return [((OrgJodaTimeDateTimeField *) nil_chk([self getField])) remainderWithLong:[self getMillis]];
}

- (OrgJodaTimeInterval *)toInterval {
  OrgJodaTimeDateTimeField *field = [self getField];
  jlong start = [((OrgJodaTimeDateTimeField *) nil_chk(field)) roundFloorWithLong:[self getMillis]];
  jlong end = [field addWithLong:start withInt:1];
  OrgJodaTimeInterval *interval = [new_OrgJodaTimeInterval_initWithLong_withLong_(start, end) autorelease];
  return interval;
}

- (jint)compareToWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant {
  if (instant == nil) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"The instant must not be null") autorelease];
  }
  jint thisValue = [self get];
  jint otherValue = [((id<OrgJodaTimeReadableInstant>) nil_chk(instant)) getWithOrgJodaTimeDateTimeFieldType:[self getFieldType]];
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

- (jint)compareToWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial {
  if (partial == nil) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"The partial must not be null") autorelease];
  }
  jint thisValue = [self get];
  jint otherValue = [((id<OrgJodaTimeReadablePartial>) nil_chk(partial)) getWithOrgJodaTimeDateTimeFieldType:[self getFieldType]];
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

- (jboolean)isEqual:(id)object {
  if (self == object) {
    return YES;
  }
  if ([object isKindOfClass:[OrgJodaTimeFieldAbstractReadableInstantFieldProperty class]] == NO) {
    return NO;
  }
  OrgJodaTimeFieldAbstractReadableInstantFieldProperty *other = (OrgJodaTimeFieldAbstractReadableInstantFieldProperty *) check_class_cast(object, [OrgJodaTimeFieldAbstractReadableInstantFieldProperty class]);
  return [self get] == [((OrgJodaTimeFieldAbstractReadableInstantFieldProperty *) nil_chk(other)) get] && [((OrgJodaTimeDateTimeFieldType *) nil_chk([self getFieldType])) isEqual:[other getFieldType]] && OrgJodaTimeFieldFieldUtils_equalsWithId_withId_([self getChronology], [other getChronology]);
}

- (NSUInteger)hash {
  return [self get] * 17 + ((jint) [((OrgJodaTimeDateTimeFieldType *) nil_chk([self getFieldType])) hash]) + ((jint) [((OrgJodaTimeChronology *) nil_chk([self getChronology])) hash]);
}

- (NSString *)description {
  return JreStrcat("$$C", @"Property[", [self getName], ']');
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "AbstractReadableInstantFieldProperty", NULL, 0x1, NULL, NULL },
    { "getField", NULL, "Lorg.joda.time.DateTimeField;", 0x401, NULL, NULL },
    { "getFieldType", NULL, "Lorg.joda.time.DateTimeFieldType;", 0x1, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getMillis", NULL, "J", 0x404, NULL, NULL },
    { "getChronology", NULL, "Lorg.joda.time.Chronology;", 0x4, NULL, NULL },
    { "get", NULL, "I", 0x1, NULL, NULL },
    { "getAsString", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getAsText", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getAsTextWithJavaUtilLocale:", "getAsText", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getAsShortText", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getAsShortTextWithJavaUtilLocale:", "getAsShortText", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getDifferenceWithOrgJodaTimeReadableInstant:", "getDifference", "I", 0x1, NULL, NULL },
    { "getDifferenceAsLongWithOrgJodaTimeReadableInstant:", "getDifferenceAsLong", "J", 0x1, NULL, NULL },
    { "getDurationField", NULL, "Lorg.joda.time.DurationField;", 0x1, NULL, NULL },
    { "getRangeDurationField", NULL, "Lorg.joda.time.DurationField;", 0x1, NULL, NULL },
    { "isLeap", NULL, "Z", 0x1, NULL, NULL },
    { "getLeapAmount", NULL, "I", 0x1, NULL, NULL },
    { "getLeapDurationField", NULL, "Lorg.joda.time.DurationField;", 0x1, NULL, NULL },
    { "getMinimumValueOverall", NULL, "I", 0x1, NULL, NULL },
    { "getMinimumValue", NULL, "I", 0x1, NULL, NULL },
    { "getMaximumValueOverall", NULL, "I", 0x1, NULL, NULL },
    { "getMaximumValue", NULL, "I", 0x1, NULL, NULL },
    { "getMaximumTextLengthWithJavaUtilLocale:", "getMaximumTextLength", "I", 0x1, NULL, NULL },
    { "getMaximumShortTextLengthWithJavaUtilLocale:", "getMaximumShortTextLength", "I", 0x1, NULL, NULL },
    { "remainder", NULL, "J", 0x1, NULL, NULL },
    { "toInterval", NULL, "Lorg.joda.time.Interval;", 0x1, NULL, NULL },
    { "compareToWithOrgJodaTimeReadableInstant:", "compareTo", "I", 0x1, NULL, NULL },
    { "compareToWithOrgJodaTimeReadablePartial:", "compareTo", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeFieldAbstractReadableInstantFieldProperty_serialVersionUID },
  };
  static const J2ObjcClassInfo _OrgJodaTimeFieldAbstractReadableInstantFieldProperty = { 2, "AbstractReadableInstantFieldProperty", "org.joda.time.field", NULL, 0x401, 32, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeFieldAbstractReadableInstantFieldProperty;
}

@end

void OrgJodaTimeFieldAbstractReadableInstantFieldProperty_init(OrgJodaTimeFieldAbstractReadableInstantFieldProperty *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFieldAbstractReadableInstantFieldProperty)
