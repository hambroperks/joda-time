//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/base/BaseSingleFieldPeriod.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/ClassCastException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/MutablePeriod.h"
#include "org/joda/time/Period.h"
#include "org/joda/time/PeriodType.h"
#include "org/joda/time/ReadableInstant.h"
#include "org/joda/time/ReadablePartial.h"
#include "org/joda/time/ReadablePeriod.h"
#include "org/joda/time/base/BaseSingleFieldPeriod.h"
#include "org/joda/time/chrono/ISOChronology.h"
#include "org/joda/time/field/FieldUtils.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgJodaTimeBaseBaseSingleFieldPeriod () {
 @public
  volatile_jint iPeriod_;
}

@end

inline jlong OrgJodaTimeBaseBaseSingleFieldPeriod_get_serialVersionUID(void);
#define OrgJodaTimeBaseBaseSingleFieldPeriod_serialVersionUID 9386874258972LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeBaseBaseSingleFieldPeriod, serialVersionUID, jlong)

inline jlong OrgJodaTimeBaseBaseSingleFieldPeriod_get_START_1972(void);
#define OrgJodaTimeBaseBaseSingleFieldPeriod_START_1972 63072000000LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeBaseBaseSingleFieldPeriod, START_1972, jlong)

@implementation OrgJodaTimeBaseBaseSingleFieldPeriod

+ (jint)betweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
               withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end
             withOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)field {
  return OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimeDurationFieldType_(start, end, field);
}

+ (jint)betweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
               withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end
                withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)zeroInstance {
  return OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePeriod_(start, end, zeroInstance);
}

+ (jint)standardPeriodInWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                             withLong:(jlong)millisPerUnit {
  return OrgJodaTimeBaseBaseSingleFieldPeriod_standardPeriodInWithOrgJodaTimeReadablePeriod_withLong_(period, millisPerUnit);
}

- (instancetype)initWithInt:(jint)period {
  OrgJodaTimeBaseBaseSingleFieldPeriod_initWithInt_(self, period);
  return self;
}

- (jint)getValue {
  return JreLoadVolatileInt(&iPeriod_);
}

- (void)setValueWithInt:(jint)value {
  JreAssignVolatileInt(&iPeriod_, value);
}

- (OrgJodaTimeDurationFieldType *)getFieldType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgJodaTimePeriodType *)getPeriodType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)size {
  return 1;
}

- (OrgJodaTimeDurationFieldType *)getFieldTypeWithInt:(jint)index {
  if (index != 0) {
    @throw create_JavaLangIndexOutOfBoundsException_initWithNSString_(NSString_java_valueOfInt_(index));
  }
  return [self getFieldType];
}

- (jint)getValueWithInt:(jint)index {
  if (index != 0) {
    @throw create_JavaLangIndexOutOfBoundsException_initWithNSString_(NSString_java_valueOfInt_(index));
  }
  return [self getValue];
}

- (jint)getWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type {
  if (type == [self getFieldType]) {
    return [self getValue];
  }
  return 0;
}

- (jboolean)isSupportedWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type {
  return type == [self getFieldType];
}

- (OrgJodaTimePeriod *)toPeriod {
  return [((OrgJodaTimePeriod *) nil_chk(JreLoadStatic(OrgJodaTimePeriod, ZERO))) withFieldsWithOrgJodaTimeReadablePeriod:self];
}

- (OrgJodaTimeMutablePeriod *)toMutablePeriod {
  OrgJodaTimeMutablePeriod *period = create_OrgJodaTimeMutablePeriod_init();
  [period addWithOrgJodaTimeReadablePeriod:self];
  return period;
}

- (jboolean)isEqual:(id)period {
  if (self == period) {
    return true;
  }
  if ([OrgJodaTimeReadablePeriod_class_() isInstance:period] == false) {
    return false;
  }
  id<OrgJodaTimeReadablePeriod> other = (id<OrgJodaTimeReadablePeriod>) cast_check(period, OrgJodaTimeReadablePeriod_class_());
  return ([((id<OrgJodaTimeReadablePeriod>) nil_chk(other)) getPeriodType] == [self getPeriodType] && [other getValueWithInt:0] == [self getValue]);
}

- (NSUInteger)hash {
  jint total = 17;
  total = 27 * total + [self getValue];
  total = 27 * total + ((jint) [((OrgJodaTimeDurationFieldType *) nil_chk([self getFieldType])) hash]);
  return total;
}

- (jint)compareToWithId:(OrgJodaTimeBaseBaseSingleFieldPeriod *)other {
  cast_chk(other, [OrgJodaTimeBaseBaseSingleFieldPeriod class]);
  if ([((OrgJodaTimeBaseBaseSingleFieldPeriod *) nil_chk(other)) java_getClass] != [self java_getClass]) {
    @throw create_JavaLangClassCastException_initWithNSString_(JreStrcat("@$@", [self java_getClass], @" cannot be compared to ", [other java_getClass]));
  }
  jint otherValue = [other getValue];
  jint thisValue = [self getValue];
  if (thisValue > otherValue) {
    return 1;
  }
  if (thisValue < otherValue) {
    return -1;
  }
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0xc, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0xc, 0, 2, -1, -1, -1, -1 },
    { NULL, "I", 0xc, 3, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 6, 5, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationFieldType;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimePeriodType;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationFieldType;", 0x1, 7, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 8, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 11, 10, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimePeriod;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMutablePeriod;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 14, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 15, 16, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(betweenWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableInstant:withOrgJodaTimeDurationFieldType:);
  methods[1].selector = @selector(betweenWithOrgJodaTimeReadablePartial:withOrgJodaTimeReadablePartial:withOrgJodaTimeReadablePeriod:);
  methods[2].selector = @selector(standardPeriodInWithOrgJodaTimeReadablePeriod:withLong:);
  methods[3].selector = @selector(initWithInt:);
  methods[4].selector = @selector(getValue);
  methods[5].selector = @selector(setValueWithInt:);
  methods[6].selector = @selector(getFieldType);
  methods[7].selector = @selector(getPeriodType);
  methods[8].selector = @selector(size);
  methods[9].selector = @selector(getFieldTypeWithInt:);
  methods[10].selector = @selector(getValueWithInt:);
  methods[11].selector = @selector(getWithOrgJodaTimeDurationFieldType:);
  methods[12].selector = @selector(isSupportedWithOrgJodaTimeDurationFieldType:);
  methods[13].selector = @selector(toPeriod);
  methods[14].selector = @selector(toMutablePeriod);
  methods[15].selector = @selector(isEqual:);
  methods[16].selector = @selector(hash);
  methods[17].selector = @selector(compareToWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeBaseBaseSingleFieldPeriod_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "START_1972", "J", .constantValue.asLong = OrgJodaTimeBaseBaseSingleFieldPeriod_START_1972, 0x1a, -1, -1, -1, -1 },
    { "iPeriod_", "I", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "between", "LOrgJodaTimeReadableInstant;LOrgJodaTimeReadableInstant;LOrgJodaTimeDurationFieldType;", "LOrgJodaTimeReadablePartial;LOrgJodaTimeReadablePartial;LOrgJodaTimeReadablePeriod;", "standardPeriodIn", "LOrgJodaTimeReadablePeriod;J", "I", "setValue", "getFieldType", "getValue", "get", "LOrgJodaTimeDurationFieldType;", "isSupported", "equals", "LNSObject;", "hashCode", "compareTo", "LOrgJodaTimeBaseBaseSingleFieldPeriod;", "Ljava/lang/Object;Lorg/joda/time/ReadablePeriod;Ljava/lang/Comparable<Lorg/joda/time/base/BaseSingleFieldPeriod;>;Ljava/io/Serializable;" };
  static const J2ObjcClassInfo _OrgJodaTimeBaseBaseSingleFieldPeriod = { "BaseSingleFieldPeriod", "org.joda.time.base", ptrTable, methods, fields, 7, 0x401, 18, 3, -1, -1, -1, 17, -1 };
  return &_OrgJodaTimeBaseBaseSingleFieldPeriod;
}

@end

jint OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimeDurationFieldType_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end, OrgJodaTimeDurationFieldType *field) {
  OrgJodaTimeBaseBaseSingleFieldPeriod_initialize();
  if (start == nil || end == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"ReadableInstant objects must not be null");
  }
  OrgJodaTimeChronology *chrono = OrgJodaTimeDateTimeUtils_getInstantChronologyWithOrgJodaTimeReadableInstant_(start);
  jint amount = [((OrgJodaTimeDurationField *) nil_chk([((OrgJodaTimeDurationFieldType *) nil_chk(field)) getFieldWithOrgJodaTimeChronology:chrono])) getDifferenceWithLong:[end getMillis] withLong:[start getMillis]];
  return amount;
}

jint OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePeriod_(id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end, id<OrgJodaTimeReadablePeriod> zeroInstance) {
  OrgJodaTimeBaseBaseSingleFieldPeriod_initialize();
  if (start == nil || end == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"ReadablePartial objects must not be null");
  }
  if ([start size] != [end size]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"ReadablePartial objects must have the same set of fields");
  }
  for (jint i = 0, isize = [start size]; i < isize; i++) {
    if ([start getFieldTypeWithInt:i] != [end getFieldTypeWithInt:i]) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"ReadablePartial objects must have the same set of fields");
    }
  }
  if (OrgJodaTimeDateTimeUtils_isContiguousWithOrgJodaTimeReadablePartial_(start) == false) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"ReadablePartial objects must be contiguous");
  }
  OrgJodaTimeChronology *chrono = [((OrgJodaTimeChronology *) nil_chk(OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_([start getChronology]))) withUTC];
  IOSIntArray *values = [((OrgJodaTimeChronology *) nil_chk(chrono)) getWithOrgJodaTimeReadablePeriod:zeroInstance withLong:[chrono setWithOrgJodaTimeReadablePartial:start withLong:OrgJodaTimeBaseBaseSingleFieldPeriod_START_1972] withLong:[chrono setWithOrgJodaTimeReadablePartial:end withLong:OrgJodaTimeBaseBaseSingleFieldPeriod_START_1972]];
  return IOSIntArray_Get(nil_chk(values), 0);
}

jint OrgJodaTimeBaseBaseSingleFieldPeriod_standardPeriodInWithOrgJodaTimeReadablePeriod_withLong_(id<OrgJodaTimeReadablePeriod> period, jlong millisPerUnit) {
  OrgJodaTimeBaseBaseSingleFieldPeriod_initialize();
  if (period == nil) {
    return 0;
  }
  OrgJodaTimeChronology *iso = OrgJodaTimeChronoISOChronology_getInstanceUTC();
  jlong duration = 0LL;
  for (jint i = 0; i < [period size]; i++) {
    jint value = [period getValueWithInt:i];
    if (value != 0) {
      OrgJodaTimeDurationField *field = [((OrgJodaTimeDurationFieldType *) nil_chk([period getFieldTypeWithInt:i])) getFieldWithOrgJodaTimeChronology:iso];
      if ([((OrgJodaTimeDurationField *) nil_chk(field)) isPrecise] == false) {
        @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$@", @"Cannot convert period to duration as ", [field getName], @" is not precise in the period ", period));
      }
      duration = OrgJodaTimeFieldFieldUtils_safeAddWithLong_withLong_(duration, OrgJodaTimeFieldFieldUtils_safeMultiplyWithLong_withInt_([field getUnitMillis], value));
    }
  }
  return OrgJodaTimeFieldFieldUtils_safeToIntWithLong_(duration / millisPerUnit);
}

void OrgJodaTimeBaseBaseSingleFieldPeriod_initWithInt_(OrgJodaTimeBaseBaseSingleFieldPeriod *self, jint period) {
  NSObject_init(self);
  JreAssignVolatileInt(&self->iPeriod_, period);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeBaseBaseSingleFieldPeriod)
