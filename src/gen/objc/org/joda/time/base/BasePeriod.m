//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/base/BasePeriod.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/System.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/Duration.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/MutablePeriod.h"
#include "org/joda/time/PeriodType.h"
#include "org/joda/time/ReadWritablePeriod.h"
#include "org/joda/time/ReadableDuration.h"
#include "org/joda/time/ReadableInstant.h"
#include "org/joda/time/ReadablePartial.h"
#include "org/joda/time/ReadablePeriod.h"
#include "org/joda/time/base/AbstractPeriod.h"
#include "org/joda/time/base/BaseLocal.h"
#include "org/joda/time/base/BasePeriod.h"
#include "org/joda/time/chrono/ISOChronology.h"
#include "org/joda/time/convert/ConverterManager.h"
#include "org/joda/time/convert/PeriodConverter.h"
#include "org/joda/time/field/FieldUtils.h"

@interface OrgJodaTimeBaseBasePeriod () {
 @public
  /*!
   @brief The type of period
   */
  OrgJodaTimePeriodType *iType_;
  /*!
   @brief The values
   */
  IOSIntArray *iValues_;
}

/*!
 @brief Checks whether a field type is supported, and if so adds the new value
  to the relevant index in the specified array.
 @param type the field type
 @param values the array to update
 @param newValue the new value to store if successful
 */
- (void)checkAndUpdateWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type
                                          withIntArray:(IOSIntArray *)values
                                               withInt:(jint)newValue;

/*!
 @brief Private method called from constructor.
 */
- (void)setPeriodInternalWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/*!
 @brief Private method called from constructor.
 */
- (IOSIntArray *)setPeriodInternalWithInt:(jint)years
                                  withInt:(jint)months
                                  withInt:(jint)weeks
                                  withInt:(jint)days
                                  withInt:(jint)hours
                                  withInt:(jint)minutes
                                  withInt:(jint)seconds
                                  withInt:(jint)millis;

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeBaseBasePeriod, iType_, OrgJodaTimePeriodType *)
J2OBJC_FIELD_SETTER(OrgJodaTimeBaseBasePeriod, iValues_, IOSIntArray *)

/*!
 @brief Serialization version
 */
inline jlong OrgJodaTimeBaseBasePeriod_get_serialVersionUID(void);
#define OrgJodaTimeBaseBasePeriod_serialVersionUID -2110953284060001145LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeBaseBasePeriod, serialVersionUID, jlong)

/*!
 @brief Serialization version
 */
inline id<OrgJodaTimeReadablePeriod> OrgJodaTimeBaseBasePeriod_get_DUMMY_PERIOD(void);
static id<OrgJodaTimeReadablePeriod> OrgJodaTimeBaseBasePeriod_DUMMY_PERIOD;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeBaseBasePeriod, DUMMY_PERIOD, id<OrgJodaTimeReadablePeriod>)

__attribute__((unused)) static void OrgJodaTimeBaseBasePeriod_checkAndUpdateWithOrgJodaTimeDurationFieldType_withIntArray_withInt_(OrgJodaTimeBaseBasePeriod *self, OrgJodaTimeDurationFieldType *type, IOSIntArray *values, jint newValue);

__attribute__((unused)) static void OrgJodaTimeBaseBasePeriod_setPeriodInternalWithOrgJodaTimeReadablePeriod_(OrgJodaTimeBaseBasePeriod *self, id<OrgJodaTimeReadablePeriod> period);

__attribute__((unused)) static IOSIntArray *OrgJodaTimeBaseBasePeriod_setPeriodInternalWithInt_withInt_withInt_withInt_withInt_withInt_withInt_withInt_(OrgJodaTimeBaseBasePeriod *self, jint years, jint months, jint weeks, jint days, jint hours, jint minutes, jint seconds, jint millis);

@interface OrgJodaTimeBaseBasePeriod_1 : OrgJodaTimeBaseAbstractPeriod

- (instancetype)init;

- (jint)getValueWithInt:(jint)index;

- (OrgJodaTimePeriodType *)getPeriodType;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeBaseBasePeriod_1)

__attribute__((unused)) static void OrgJodaTimeBaseBasePeriod_1_init(OrgJodaTimeBaseBasePeriod_1 *self);

__attribute__((unused)) static OrgJodaTimeBaseBasePeriod_1 *new_OrgJodaTimeBaseBasePeriod_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJodaTimeBaseBasePeriod_1 *create_OrgJodaTimeBaseBasePeriod_1_init(void);

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeBaseBasePeriod)

@implementation OrgJodaTimeBaseBasePeriod

- (instancetype)initWithInt:(jint)years
                    withInt:(jint)months
                    withInt:(jint)weeks
                    withInt:(jint)days
                    withInt:(jint)hours
                    withInt:(jint)minutes
                    withInt:(jint)seconds
                    withInt:(jint)millis
  withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type {
  OrgJodaTimeBaseBasePeriod_initWithInt_withInt_withInt_withInt_withInt_withInt_withInt_withInt_withOrgJodaTimePeriodType_(self, years, months, weeks, days, hours, minutes, seconds, millis, type);
  return self;
}

- (instancetype)initWithLong:(jlong)startInstant
                    withLong:(jlong)endInstant
   withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  OrgJodaTimeBaseBasePeriod_initWithLong_withLong_withOrgJodaTimePeriodType_withOrgJodaTimeChronology_(self, startInstant, endInstant, type, chrono);
  return self;
}

- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)startInstant
                    withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)endInstant
                         withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type {
  OrgJodaTimeBaseBasePeriod_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimePeriodType_(self, startInstant, endInstant, type);
  return self;
}

- (instancetype)initWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                    withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end
                         withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type {
  OrgJodaTimeBaseBasePeriod_initWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_withOrgJodaTimePeriodType_(self, start, end, type);
  return self;
}

- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)startInstant
                   withOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration
                         withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type {
  OrgJodaTimeBaseBasePeriod_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableDuration_withOrgJodaTimePeriodType_(self, startInstant, duration, type);
  return self;
}

- (instancetype)initWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration
                     withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)endInstant
                          withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type {
  OrgJodaTimeBaseBasePeriod_initWithOrgJodaTimeReadableDuration_withOrgJodaTimeReadableInstant_withOrgJodaTimePeriodType_(self, duration, endInstant, type);
  return self;
}

- (instancetype)initWithLong:(jlong)duration {
  OrgJodaTimeBaseBasePeriod_initWithLong_(self, duration);
  return self;
}

- (instancetype)initWithLong:(jlong)duration
   withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  OrgJodaTimeBaseBasePeriod_initWithLong_withOrgJodaTimePeriodType_withOrgJodaTimeChronology_(self, duration, type, chrono);
  return self;
}

- (instancetype)initWithId:(id)period
 withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  OrgJodaTimeBaseBasePeriod_initWithId_withOrgJodaTimePeriodType_withOrgJodaTimeChronology_(self, period, type, chrono);
  return self;
}

- (instancetype)initWithIntArray:(IOSIntArray *)values
       withOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type {
  OrgJodaTimeBaseBasePeriod_initWithIntArray_withOrgJodaTimePeriodType_(self, values, type);
  return self;
}

- (OrgJodaTimePeriodType *)checkPeriodTypeWithOrgJodaTimePeriodType:(OrgJodaTimePeriodType *)type {
  return OrgJodaTimeDateTimeUtils_getPeriodTypeWithOrgJodaTimePeriodType_(type);
}

- (OrgJodaTimePeriodType *)getPeriodType {
  return iType_;
}

- (jint)getValueWithInt:(jint)index {
  return IOSIntArray_Get(nil_chk(iValues_), index);
}

- (OrgJodaTimeDuration *)toDurationFromWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)startInstant {
  jlong startMillis = OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(startInstant);
  OrgJodaTimeChronology *chrono = OrgJodaTimeDateTimeUtils_getInstantChronologyWithOrgJodaTimeReadableInstant_(startInstant);
  jlong endMillis = [((OrgJodaTimeChronology *) nil_chk(chrono)) addWithOrgJodaTimeReadablePeriod:self withLong:startMillis withInt:1];
  return create_OrgJodaTimeDuration_initWithLong_withLong_(startMillis, endMillis);
}

- (OrgJodaTimeDuration *)toDurationToWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)endInstant {
  jlong endMillis = OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(endInstant);
  OrgJodaTimeChronology *chrono = OrgJodaTimeDateTimeUtils_getInstantChronologyWithOrgJodaTimeReadableInstant_(endInstant);
  jlong startMillis = [((OrgJodaTimeChronology *) nil_chk(chrono)) addWithOrgJodaTimeReadablePeriod:self withLong:endMillis withInt:-1];
  return create_OrgJodaTimeDuration_initWithLong_withLong_(startMillis, endMillis);
}

- (void)checkAndUpdateWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type
                                          withIntArray:(IOSIntArray *)values
                                               withInt:(jint)newValue {
  OrgJodaTimeBaseBasePeriod_checkAndUpdateWithOrgJodaTimeDurationFieldType_withIntArray_withInt_(self, type, values, newValue);
}

- (void)setPeriodWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  if (period == nil) {
    [self setValuesWithIntArray:[IOSIntArray arrayWithLength:[self size]]];
  }
  else {
    OrgJodaTimeBaseBasePeriod_setPeriodInternalWithOrgJodaTimeReadablePeriod_(self, period);
  }
}

- (void)setPeriodInternalWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  OrgJodaTimeBaseBasePeriod_setPeriodInternalWithOrgJodaTimeReadablePeriod_(self, period);
}

- (void)setPeriodWithInt:(jint)years
                 withInt:(jint)months
                 withInt:(jint)weeks
                 withInt:(jint)days
                 withInt:(jint)hours
                 withInt:(jint)minutes
                 withInt:(jint)seconds
                 withInt:(jint)millis {
  IOSIntArray *newValues = OrgJodaTimeBaseBasePeriod_setPeriodInternalWithInt_withInt_withInt_withInt_withInt_withInt_withInt_withInt_(self, years, months, weeks, days, hours, minutes, seconds, millis);
  [self setValuesWithIntArray:newValues];
}

- (IOSIntArray *)setPeriodInternalWithInt:(jint)years
                                  withInt:(jint)months
                                  withInt:(jint)weeks
                                  withInt:(jint)days
                                  withInt:(jint)hours
                                  withInt:(jint)minutes
                                  withInt:(jint)seconds
                                  withInt:(jint)millis {
  return OrgJodaTimeBaseBasePeriod_setPeriodInternalWithInt_withInt_withInt_withInt_withInt_withInt_withInt_withInt_(self, years, months, weeks, days, hours, minutes, seconds, millis);
}

- (void)setFieldWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)field
                                         withInt:(jint)value {
  [self setFieldIntoWithIntArray:iValues_ withOrgJodaTimeDurationFieldType:field withInt:value];
}

- (void)setFieldIntoWithIntArray:(IOSIntArray *)values
withOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)field
                         withInt:(jint)value {
  jint index = [self indexOfWithOrgJodaTimeDurationFieldType:field];
  if (index == -1) {
    if (value != 0 || field == nil) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@C", @"Period does not support field '", field, '\''));
    }
  }
  else {
    *IOSIntArray_GetRef(nil_chk(values), index) = value;
  }
}

- (void)addFieldWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)field
                                         withInt:(jint)value {
  [self addFieldIntoWithIntArray:iValues_ withOrgJodaTimeDurationFieldType:field withInt:value];
}

- (void)addFieldIntoWithIntArray:(IOSIntArray *)values
withOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)field
                         withInt:(jint)value {
  jint index = [self indexOfWithOrgJodaTimeDurationFieldType:field];
  if (index == -1) {
    if (value != 0 || field == nil) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@C", @"Period does not support field '", field, '\''));
    }
  }
  else {
    *IOSIntArray_GetRef(nil_chk(values), index) = OrgJodaTimeFieldFieldUtils_safeAddWithInt_withInt_(IOSIntArray_Get(values, index), value);
  }
}

- (void)mergePeriodWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  if (period != nil) {
    [self setValuesWithIntArray:[self mergePeriodIntoWithIntArray:[self getValues] withOrgJodaTimeReadablePeriod:period]];
  }
}

- (IOSIntArray *)mergePeriodIntoWithIntArray:(IOSIntArray *)values
               withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  for (jint i = 0, isize = [((id<OrgJodaTimeReadablePeriod>) nil_chk(period)) size]; i < isize; i++) {
    OrgJodaTimeDurationFieldType *type = [period getFieldTypeWithInt:i];
    jint value = [period getValueWithInt:i];
    OrgJodaTimeBaseBasePeriod_checkAndUpdateWithOrgJodaTimeDurationFieldType_withIntArray_withInt_(self, type, values, value);
  }
  return values;
}

- (void)addPeriodWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  if (period != nil) {
    [self setValuesWithIntArray:[self addPeriodIntoWithIntArray:[self getValues] withOrgJodaTimeReadablePeriod:period]];
  }
}

- (IOSIntArray *)addPeriodIntoWithIntArray:(IOSIntArray *)values
             withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  for (jint i = 0, isize = [((id<OrgJodaTimeReadablePeriod>) nil_chk(period)) size]; i < isize; i++) {
    OrgJodaTimeDurationFieldType *type = [period getFieldTypeWithInt:i];
    jint value = [period getValueWithInt:i];
    if (value != 0) {
      jint index = [self indexOfWithOrgJodaTimeDurationFieldType:type];
      if (index == -1) {
        @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$C", @"Period does not support field '", [((OrgJodaTimeDurationFieldType *) nil_chk(type)) getName], '\''));
      }
      else {
        *IOSIntArray_GetRef(nil_chk(values), index) = OrgJodaTimeFieldFieldUtils_safeAddWithInt_withInt_([self getValueWithInt:index], value);
      }
    }
  }
  return values;
}

- (void)setValueWithInt:(jint)index
                withInt:(jint)value {
  *IOSIntArray_GetRef(nil_chk(iValues_), index) = value;
}

- (void)setValuesWithIntArray:(IOSIntArray *)values {
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(values, 0, iValues_, 0, ((IOSIntArray *) nil_chk(iValues_))->size_);
}

- (void)dealloc {
  RELEASE_(iType_);
  RELEASE_(iValues_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 5, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 6, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 7, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 8, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 9, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimePeriodType;", 0x4, 10, 11, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimePeriodType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, 16, 15, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 17, 18, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 19, 20, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 21, 20, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 19, 22, -1, -1, -1, -1 },
    { NULL, "[I", 0x2, 21, 22, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 23, 24, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 25, 26, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 27, 24, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 28, 26, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 29, 20, -1, -1, -1, -1 },
    { NULL, "[I", 0x4, 30, 31, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 32, 20, -1, -1, -1, -1 },
    { NULL, "[I", 0x4, 33, 31, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 34, 35, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 36, 37, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:withInt:withInt:withInt:withInt:withInt:withInt:withInt:withOrgJodaTimePeriodType:);
  methods[1].selector = @selector(initWithLong:withLong:withOrgJodaTimePeriodType:withOrgJodaTimeChronology:);
  methods[2].selector = @selector(initWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableInstant:withOrgJodaTimePeriodType:);
  methods[3].selector = @selector(initWithOrgJodaTimeReadablePartial:withOrgJodaTimeReadablePartial:withOrgJodaTimePeriodType:);
  methods[4].selector = @selector(initWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableDuration:withOrgJodaTimePeriodType:);
  methods[5].selector = @selector(initWithOrgJodaTimeReadableDuration:withOrgJodaTimeReadableInstant:withOrgJodaTimePeriodType:);
  methods[6].selector = @selector(initWithLong:);
  methods[7].selector = @selector(initWithLong:withOrgJodaTimePeriodType:withOrgJodaTimeChronology:);
  methods[8].selector = @selector(initWithId:withOrgJodaTimePeriodType:withOrgJodaTimeChronology:);
  methods[9].selector = @selector(initWithIntArray:withOrgJodaTimePeriodType:);
  methods[10].selector = @selector(checkPeriodTypeWithOrgJodaTimePeriodType:);
  methods[11].selector = @selector(getPeriodType);
  methods[12].selector = @selector(getValueWithInt:);
  methods[13].selector = @selector(toDurationFromWithOrgJodaTimeReadableInstant:);
  methods[14].selector = @selector(toDurationToWithOrgJodaTimeReadableInstant:);
  methods[15].selector = @selector(checkAndUpdateWithOrgJodaTimeDurationFieldType:withIntArray:withInt:);
  methods[16].selector = @selector(setPeriodWithOrgJodaTimeReadablePeriod:);
  methods[17].selector = @selector(setPeriodInternalWithOrgJodaTimeReadablePeriod:);
  methods[18].selector = @selector(setPeriodWithInt:withInt:withInt:withInt:withInt:withInt:withInt:withInt:);
  methods[19].selector = @selector(setPeriodInternalWithInt:withInt:withInt:withInt:withInt:withInt:withInt:withInt:);
  methods[20].selector = @selector(setFieldWithOrgJodaTimeDurationFieldType:withInt:);
  methods[21].selector = @selector(setFieldIntoWithIntArray:withOrgJodaTimeDurationFieldType:withInt:);
  methods[22].selector = @selector(addFieldWithOrgJodaTimeDurationFieldType:withInt:);
  methods[23].selector = @selector(addFieldIntoWithIntArray:withOrgJodaTimeDurationFieldType:withInt:);
  methods[24].selector = @selector(mergePeriodWithOrgJodaTimeReadablePeriod:);
  methods[25].selector = @selector(mergePeriodIntoWithIntArray:withOrgJodaTimeReadablePeriod:);
  methods[26].selector = @selector(addPeriodWithOrgJodaTimeReadablePeriod:);
  methods[27].selector = @selector(addPeriodIntoWithIntArray:withOrgJodaTimeReadablePeriod:);
  methods[28].selector = @selector(setValueWithInt:withInt:);
  methods[29].selector = @selector(setValuesWithIntArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeBaseBasePeriod_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "DUMMY_PERIOD", "LOrgJodaTimeReadablePeriod;", .constantValue.asLong = 0, 0x1a, -1, 38, -1, -1 },
    { "iType_", "LOrgJodaTimePeriodType;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "iValues_", "[I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "IIIIIIIILOrgJodaTimePeriodType;", "JJLOrgJodaTimePeriodType;LOrgJodaTimeChronology;", "LOrgJodaTimeReadableInstant;LOrgJodaTimeReadableInstant;LOrgJodaTimePeriodType;", "LOrgJodaTimeReadablePartial;LOrgJodaTimeReadablePartial;LOrgJodaTimePeriodType;", "LOrgJodaTimeReadableInstant;LOrgJodaTimeReadableDuration;LOrgJodaTimePeriodType;", "LOrgJodaTimeReadableDuration;LOrgJodaTimeReadableInstant;LOrgJodaTimePeriodType;", "J", "JLOrgJodaTimePeriodType;LOrgJodaTimeChronology;", "LNSObject;LOrgJodaTimePeriodType;LOrgJodaTimeChronology;", "[ILOrgJodaTimePeriodType;", "checkPeriodType", "LOrgJodaTimePeriodType;", "getValue", "I", "toDurationFrom", "LOrgJodaTimeReadableInstant;", "toDurationTo", "checkAndUpdate", "LOrgJodaTimeDurationFieldType;[II", "setPeriod", "LOrgJodaTimeReadablePeriod;", "setPeriodInternal", "IIIIIIII", "setField", "LOrgJodaTimeDurationFieldType;I", "setFieldInto", "[ILOrgJodaTimeDurationFieldType;I", "addField", "addFieldInto", "mergePeriod", "mergePeriodInto", "[ILOrgJodaTimeReadablePeriod;", "addPeriod", "addPeriodInto", "setValue", "II", "setValues", "[I", &OrgJodaTimeBaseBasePeriod_DUMMY_PERIOD };
  static const J2ObjcClassInfo _OrgJodaTimeBaseBasePeriod = { "BasePeriod", "org.joda.time.base", ptrTable, methods, fields, 7, 0x401, 30, 4, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeBaseBasePeriod;
}

+ (void)initialize {
  if (self == [OrgJodaTimeBaseBasePeriod class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeBaseBasePeriod_DUMMY_PERIOD, new_OrgJodaTimeBaseBasePeriod_1_init());
    J2OBJC_SET_INITIALIZED(OrgJodaTimeBaseBasePeriod)
  }
}

@end

void OrgJodaTimeBaseBasePeriod_initWithInt_withInt_withInt_withInt_withInt_withInt_withInt_withInt_withOrgJodaTimePeriodType_(OrgJodaTimeBaseBasePeriod *self, jint years, jint months, jint weeks, jint days, jint hours, jint minutes, jint seconds, jint millis, OrgJodaTimePeriodType *type) {
  OrgJodaTimeBaseAbstractPeriod_init(self);
  type = [self checkPeriodTypeWithOrgJodaTimePeriodType:type];
  JreStrongAssign(&self->iType_, type);
  JreStrongAssign(&self->iValues_, OrgJodaTimeBaseBasePeriod_setPeriodInternalWithInt_withInt_withInt_withInt_withInt_withInt_withInt_withInt_(self, years, months, weeks, days, hours, minutes, seconds, millis));
}

void OrgJodaTimeBaseBasePeriod_initWithLong_withLong_withOrgJodaTimePeriodType_withOrgJodaTimeChronology_(OrgJodaTimeBaseBasePeriod *self, jlong startInstant, jlong endInstant, OrgJodaTimePeriodType *type, OrgJodaTimeChronology *chrono) {
  OrgJodaTimeBaseAbstractPeriod_init(self);
  type = [self checkPeriodTypeWithOrgJodaTimePeriodType:type];
  chrono = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(chrono);
  JreStrongAssign(&self->iType_, type);
  JreStrongAssign(&self->iValues_, [((OrgJodaTimeChronology *) nil_chk(chrono)) getWithOrgJodaTimeReadablePeriod:self withLong:startInstant withLong:endInstant]);
}

void OrgJodaTimeBaseBasePeriod_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimePeriodType_(OrgJodaTimeBaseBasePeriod *self, id<OrgJodaTimeReadableInstant> startInstant, id<OrgJodaTimeReadableInstant> endInstant, OrgJodaTimePeriodType *type) {
  OrgJodaTimeBaseAbstractPeriod_init(self);
  type = [self checkPeriodTypeWithOrgJodaTimePeriodType:type];
  if (startInstant == nil && endInstant == nil) {
    JreStrongAssign(&self->iType_, type);
    JreStrongAssignAndConsume(&self->iValues_, [IOSIntArray newArrayWithLength:[self size]]);
  }
  else {
    jlong startMillis = OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(startInstant);
    jlong endMillis = OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(endInstant);
    OrgJodaTimeChronology *chrono = OrgJodaTimeDateTimeUtils_getIntervalChronologyWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(startInstant, endInstant);
    JreStrongAssign(&self->iType_, type);
    JreStrongAssign(&self->iValues_, [((OrgJodaTimeChronology *) nil_chk(chrono)) getWithOrgJodaTimeReadablePeriod:self withLong:startMillis withLong:endMillis]);
  }
}

void OrgJodaTimeBaseBasePeriod_initWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_withOrgJodaTimePeriodType_(OrgJodaTimeBaseBasePeriod *self, id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end, OrgJodaTimePeriodType *type) {
  OrgJodaTimeBaseAbstractPeriod_init(self);
  if (start == nil || end == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"ReadablePartial objects must not be null");
  }
  if ([start isKindOfClass:[OrgJodaTimeBaseBaseLocal class]] && [end isKindOfClass:[OrgJodaTimeBaseBaseLocal class]] && [start java_getClass] == [end java_getClass]) {
    type = [self checkPeriodTypeWithOrgJodaTimePeriodType:type];
    jlong startMillis = [((OrgJodaTimeBaseBaseLocal *) cast_chk(start, [OrgJodaTimeBaseBaseLocal class])) getLocalMillis];
    jlong endMillis = [((OrgJodaTimeBaseBaseLocal *) cast_chk(end, [OrgJodaTimeBaseBaseLocal class])) getLocalMillis];
    OrgJodaTimeChronology *chrono = [start getChronology];
    chrono = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(chrono);
    JreStrongAssign(&self->iType_, type);
    JreStrongAssign(&self->iValues_, [((OrgJodaTimeChronology *) nil_chk(chrono)) getWithOrgJodaTimeReadablePeriod:self withLong:startMillis withLong:endMillis]);
  }
  else {
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
    JreStrongAssign(&self->iType_, [self checkPeriodTypeWithOrgJodaTimePeriodType:type]);
    OrgJodaTimeChronology *chrono = [((OrgJodaTimeChronology *) nil_chk(OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_([start getChronology]))) withUTC];
    JreStrongAssign(&self->iValues_, [((OrgJodaTimeChronology *) nil_chk(chrono)) getWithOrgJodaTimeReadablePeriod:self withLong:[chrono setWithOrgJodaTimeReadablePartial:start withLong:0LL] withLong:[chrono setWithOrgJodaTimeReadablePartial:end withLong:0LL]]);
  }
}

void OrgJodaTimeBaseBasePeriod_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableDuration_withOrgJodaTimePeriodType_(OrgJodaTimeBaseBasePeriod *self, id<OrgJodaTimeReadableInstant> startInstant, id<OrgJodaTimeReadableDuration> duration, OrgJodaTimePeriodType *type) {
  OrgJodaTimeBaseAbstractPeriod_init(self);
  type = [self checkPeriodTypeWithOrgJodaTimePeriodType:type];
  jlong startMillis = OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(startInstant);
  jlong durationMillis = OrgJodaTimeDateTimeUtils_getDurationMillisWithOrgJodaTimeReadableDuration_(duration);
  jlong endMillis = OrgJodaTimeFieldFieldUtils_safeAddWithLong_withLong_(startMillis, durationMillis);
  OrgJodaTimeChronology *chrono = OrgJodaTimeDateTimeUtils_getInstantChronologyWithOrgJodaTimeReadableInstant_(startInstant);
  JreStrongAssign(&self->iType_, type);
  JreStrongAssign(&self->iValues_, [((OrgJodaTimeChronology *) nil_chk(chrono)) getWithOrgJodaTimeReadablePeriod:self withLong:startMillis withLong:endMillis]);
}

void OrgJodaTimeBaseBasePeriod_initWithOrgJodaTimeReadableDuration_withOrgJodaTimeReadableInstant_withOrgJodaTimePeriodType_(OrgJodaTimeBaseBasePeriod *self, id<OrgJodaTimeReadableDuration> duration, id<OrgJodaTimeReadableInstant> endInstant, OrgJodaTimePeriodType *type) {
  OrgJodaTimeBaseAbstractPeriod_init(self);
  type = [self checkPeriodTypeWithOrgJodaTimePeriodType:type];
  jlong durationMillis = OrgJodaTimeDateTimeUtils_getDurationMillisWithOrgJodaTimeReadableDuration_(duration);
  jlong endMillis = OrgJodaTimeDateTimeUtils_getInstantMillisWithOrgJodaTimeReadableInstant_(endInstant);
  jlong startMillis = OrgJodaTimeFieldFieldUtils_safeSubtractWithLong_withLong_(endMillis, durationMillis);
  OrgJodaTimeChronology *chrono = OrgJodaTimeDateTimeUtils_getInstantChronologyWithOrgJodaTimeReadableInstant_(endInstant);
  JreStrongAssign(&self->iType_, type);
  JreStrongAssign(&self->iValues_, [((OrgJodaTimeChronology *) nil_chk(chrono)) getWithOrgJodaTimeReadablePeriod:self withLong:startMillis withLong:endMillis]);
}

void OrgJodaTimeBaseBasePeriod_initWithLong_(OrgJodaTimeBaseBasePeriod *self, jlong duration) {
  OrgJodaTimeBaseAbstractPeriod_init(self);
  JreStrongAssign(&self->iType_, OrgJodaTimePeriodType_standard());
  IOSIntArray *values = [((OrgJodaTimeChronoISOChronology *) nil_chk(OrgJodaTimeChronoISOChronology_getInstanceUTC())) getWithOrgJodaTimeReadablePeriod:OrgJodaTimeBaseBasePeriod_DUMMY_PERIOD withLong:duration];
  JreStrongAssignAndConsume(&self->iValues_, [IOSIntArray newArrayWithLength:8]);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(values, 0, self->iValues_, 4, 4);
}

void OrgJodaTimeBaseBasePeriod_initWithLong_withOrgJodaTimePeriodType_withOrgJodaTimeChronology_(OrgJodaTimeBaseBasePeriod *self, jlong duration, OrgJodaTimePeriodType *type, OrgJodaTimeChronology *chrono) {
  OrgJodaTimeBaseAbstractPeriod_init(self);
  type = [self checkPeriodTypeWithOrgJodaTimePeriodType:type];
  chrono = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(chrono);
  JreStrongAssign(&self->iType_, type);
  JreStrongAssign(&self->iValues_, [((OrgJodaTimeChronology *) nil_chk(chrono)) getWithOrgJodaTimeReadablePeriod:self withLong:duration]);
}

void OrgJodaTimeBaseBasePeriod_initWithId_withOrgJodaTimePeriodType_withOrgJodaTimeChronology_(OrgJodaTimeBaseBasePeriod *self, id period, OrgJodaTimePeriodType *type, OrgJodaTimeChronology *chrono) {
  OrgJodaTimeBaseAbstractPeriod_init(self);
  id<OrgJodaTimeConvertPeriodConverter> converter = [((OrgJodaTimeConvertConverterManager *) nil_chk(OrgJodaTimeConvertConverterManager_getInstance())) getPeriodConverterWithId:period];
  type = (type == nil ? [((id<OrgJodaTimeConvertPeriodConverter>) nil_chk(converter)) getPeriodTypeWithId:period] : type);
  type = [self checkPeriodTypeWithOrgJodaTimePeriodType:type];
  JreStrongAssign(&self->iType_, type);
  if ([OrgJodaTimeReadWritablePeriod_class_() isInstance:self]) {
    JreStrongAssignAndConsume(&self->iValues_, [IOSIntArray newArrayWithLength:[self size]]);
    chrono = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(chrono);
    [((id<OrgJodaTimeConvertPeriodConverter>) nil_chk(converter)) setIntoWithOrgJodaTimeReadWritablePeriod:(id<OrgJodaTimeReadWritablePeriod>) cast_check(self, OrgJodaTimeReadWritablePeriod_class_()) withId:period withOrgJodaTimeChronology:chrono];
  }
  else {
    JreStrongAssign(&self->iValues_, [create_OrgJodaTimeMutablePeriod_initWithId_withOrgJodaTimePeriodType_withOrgJodaTimeChronology_(period, type, chrono) getValues]);
  }
}

void OrgJodaTimeBaseBasePeriod_initWithIntArray_withOrgJodaTimePeriodType_(OrgJodaTimeBaseBasePeriod *self, IOSIntArray *values, OrgJodaTimePeriodType *type) {
  OrgJodaTimeBaseAbstractPeriod_init(self);
  JreStrongAssign(&self->iType_, type);
  JreStrongAssign(&self->iValues_, values);
}

void OrgJodaTimeBaseBasePeriod_checkAndUpdateWithOrgJodaTimeDurationFieldType_withIntArray_withInt_(OrgJodaTimeBaseBasePeriod *self, OrgJodaTimeDurationFieldType *type, IOSIntArray *values, jint newValue) {
  jint index = [self indexOfWithOrgJodaTimeDurationFieldType:type];
  if (index == -1) {
    if (newValue != 0) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$C", @"Period does not support field '", [((OrgJodaTimeDurationFieldType *) nil_chk(type)) getName], '\''));
    }
  }
  else {
    *IOSIntArray_GetRef(nil_chk(values), index) = newValue;
  }
}

void OrgJodaTimeBaseBasePeriod_setPeriodInternalWithOrgJodaTimeReadablePeriod_(OrgJodaTimeBaseBasePeriod *self, id<OrgJodaTimeReadablePeriod> period) {
  IOSIntArray *newValues = [IOSIntArray arrayWithLength:[self size]];
  for (jint i = 0, isize = [((id<OrgJodaTimeReadablePeriod>) nil_chk(period)) size]; i < isize; i++) {
    OrgJodaTimeDurationFieldType *type = [period getFieldTypeWithInt:i];
    jint value = [period getValueWithInt:i];
    OrgJodaTimeBaseBasePeriod_checkAndUpdateWithOrgJodaTimeDurationFieldType_withIntArray_withInt_(self, type, newValues, value);
  }
  [self setValuesWithIntArray:newValues];
}

IOSIntArray *OrgJodaTimeBaseBasePeriod_setPeriodInternalWithInt_withInt_withInt_withInt_withInt_withInt_withInt_withInt_(OrgJodaTimeBaseBasePeriod *self, jint years, jint months, jint weeks, jint days, jint hours, jint minutes, jint seconds, jint millis) {
  IOSIntArray *newValues = [IOSIntArray arrayWithLength:[self size]];
  OrgJodaTimeBaseBasePeriod_checkAndUpdateWithOrgJodaTimeDurationFieldType_withIntArray_withInt_(self, OrgJodaTimeDurationFieldType_years(), newValues, years);
  OrgJodaTimeBaseBasePeriod_checkAndUpdateWithOrgJodaTimeDurationFieldType_withIntArray_withInt_(self, OrgJodaTimeDurationFieldType_months(), newValues, months);
  OrgJodaTimeBaseBasePeriod_checkAndUpdateWithOrgJodaTimeDurationFieldType_withIntArray_withInt_(self, OrgJodaTimeDurationFieldType_weeks(), newValues, weeks);
  OrgJodaTimeBaseBasePeriod_checkAndUpdateWithOrgJodaTimeDurationFieldType_withIntArray_withInt_(self, OrgJodaTimeDurationFieldType_days(), newValues, days);
  OrgJodaTimeBaseBasePeriod_checkAndUpdateWithOrgJodaTimeDurationFieldType_withIntArray_withInt_(self, OrgJodaTimeDurationFieldType_hours(), newValues, hours);
  OrgJodaTimeBaseBasePeriod_checkAndUpdateWithOrgJodaTimeDurationFieldType_withIntArray_withInt_(self, OrgJodaTimeDurationFieldType_minutes(), newValues, minutes);
  OrgJodaTimeBaseBasePeriod_checkAndUpdateWithOrgJodaTimeDurationFieldType_withIntArray_withInt_(self, OrgJodaTimeDurationFieldType_seconds(), newValues, seconds);
  OrgJodaTimeBaseBasePeriod_checkAndUpdateWithOrgJodaTimeDurationFieldType_withIntArray_withInt_(self, OrgJodaTimeDurationFieldType_millis(), newValues, millis);
  return newValues;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeBaseBasePeriod)

@implementation OrgJodaTimeBaseBasePeriod_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeBaseBasePeriod_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)getValueWithInt:(jint)index {
  return 0;
}

- (OrgJodaTimePeriodType *)getPeriodType {
  return OrgJodaTimePeriodType_time();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimePeriodType;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getValueWithInt:);
  methods[2].selector = @selector(getPeriodType);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getValue", "I", "LOrgJodaTimeBaseBasePeriod;" };
  static const J2ObjcClassInfo _OrgJodaTimeBaseBasePeriod_1 = { "", "org.joda.time.base", ptrTable, methods, NULL, 7, 0x8018, 3, 0, 2, -1, -1, -1, -1 };
  return &_OrgJodaTimeBaseBasePeriod_1;
}

@end

void OrgJodaTimeBaseBasePeriod_1_init(OrgJodaTimeBaseBasePeriod_1 *self) {
  OrgJodaTimeBaseAbstractPeriod_init(self);
}

OrgJodaTimeBaseBasePeriod_1 *new_OrgJodaTimeBaseBasePeriod_1_init() {
  J2OBJC_NEW_IMPL(OrgJodaTimeBaseBasePeriod_1, init)
}

OrgJodaTimeBaseBasePeriod_1 *create_OrgJodaTimeBaseBasePeriod_1_init() {
  J2OBJC_CREATE_IMPL(OrgJodaTimeBaseBasePeriod_1, init)
}
