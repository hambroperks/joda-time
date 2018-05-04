//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/Duration.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/ArithmeticException.h"
#include "java/lang/Long.h"
#include "java/lang/annotation/Annotation.h"
#include "java/math/RoundingMode.h"
#include "org/joda/convert/FromString.h"
#include "org/joda/time/DateTimeConstants.h"
#include "org/joda/time/Days.h"
#include "org/joda/time/Duration.h"
#include "org/joda/time/Hours.h"
#include "org/joda/time/Minutes.h"
#include "org/joda/time/ReadableDuration.h"
#include "org/joda/time/ReadableInstant.h"
#include "org/joda/time/Seconds.h"
#include "org/joda/time/base/BaseDuration.h"
#include "org/joda/time/field/FieldUtils.h"

inline jlong OrgJodaTimeDuration_get_serialVersionUID(void);
#define OrgJodaTimeDuration_serialVersionUID 2471658376918LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeDuration, serialVersionUID, jlong)

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeDuration__Annotations$0(void);

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeDuration)

OrgJodaTimeDuration *OrgJodaTimeDuration_ZERO;

@implementation OrgJodaTimeDuration

+ (OrgJodaTimeDuration *)parseWithNSString:(NSString *)str {
  return OrgJodaTimeDuration_parseWithNSString_(str);
}

+ (OrgJodaTimeDuration *)standardDaysWithLong:(jlong)days {
  return OrgJodaTimeDuration_standardDaysWithLong_(days);
}

+ (OrgJodaTimeDuration *)standardHoursWithLong:(jlong)hours {
  return OrgJodaTimeDuration_standardHoursWithLong_(hours);
}

+ (OrgJodaTimeDuration *)standardMinutesWithLong:(jlong)minutes {
  return OrgJodaTimeDuration_standardMinutesWithLong_(minutes);
}

+ (OrgJodaTimeDuration *)standardSecondsWithLong:(jlong)seconds {
  return OrgJodaTimeDuration_standardSecondsWithLong_(seconds);
}

+ (OrgJodaTimeDuration *)millisWithLong:(jlong)millis {
  return OrgJodaTimeDuration_millisWithLong_(millis);
}

- (instancetype)initWithLong:(jlong)duration {
  OrgJodaTimeDuration_initWithLong_(self, duration);
  return self;
}

- (instancetype)initWithLong:(jlong)startInstant
                    withLong:(jlong)endInstant {
  OrgJodaTimeDuration_initWithLong_withLong_(self, startInstant, endInstant);
  return self;
}

- (instancetype)initWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                    withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end {
  OrgJodaTimeDuration_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(self, start, end);
  return self;
}

- (instancetype)initWithId:(id)duration {
  OrgJodaTimeDuration_initWithId_(self, duration);
  return self;
}

- (jlong)getStandardDays {
  return [self getMillis] / OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY;
}

- (jlong)getStandardHours {
  return [self getMillis] / OrgJodaTimeDateTimeConstants_MILLIS_PER_HOUR;
}

- (jlong)getStandardMinutes {
  return [self getMillis] / OrgJodaTimeDateTimeConstants_MILLIS_PER_MINUTE;
}

- (jlong)getStandardSeconds {
  return [self getMillis] / OrgJodaTimeDateTimeConstants_MILLIS_PER_SECOND;
}

- (OrgJodaTimeDuration *)toDuration {
  return self;
}

- (OrgJodaTimeDays *)toStandardDays {
  jlong days = [self getStandardDays];
  return OrgJodaTimeDays_daysWithInt_(OrgJodaTimeFieldFieldUtils_safeToIntWithLong_(days));
}

- (OrgJodaTimeHours *)toStandardHours {
  jlong hours = [self getStandardHours];
  return OrgJodaTimeHours_hoursWithInt_(OrgJodaTimeFieldFieldUtils_safeToIntWithLong_(hours));
}

- (OrgJodaTimeMinutes *)toStandardMinutes {
  jlong minutes = [self getStandardMinutes];
  return OrgJodaTimeMinutes_minutesWithInt_(OrgJodaTimeFieldFieldUtils_safeToIntWithLong_(minutes));
}

- (OrgJodaTimeSeconds *)toStandardSeconds {
  jlong seconds = [self getStandardSeconds];
  return OrgJodaTimeSeconds_secondsWithInt_(OrgJodaTimeFieldFieldUtils_safeToIntWithLong_(seconds));
}

- (OrgJodaTimeDuration *)withMillisWithLong:(jlong)duration {
  if (duration == [self getMillis]) {
    return self;
  }
  return create_OrgJodaTimeDuration_initWithLong_(duration);
}

- (OrgJodaTimeDuration *)withDurationAddedWithLong:(jlong)durationToAdd
                                           withInt:(jint)scalar {
  if (durationToAdd == 0 || scalar == 0) {
    return self;
  }
  jlong add = OrgJodaTimeFieldFieldUtils_safeMultiplyWithLong_withInt_(durationToAdd, scalar);
  jlong duration = OrgJodaTimeFieldFieldUtils_safeAddWithLong_withLong_([self getMillis], add);
  return create_OrgJodaTimeDuration_initWithLong_(duration);
}

- (OrgJodaTimeDuration *)withDurationAddedWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)durationToAdd
                                                                  withInt:(jint)scalar {
  if (durationToAdd == nil || scalar == 0) {
    return self;
  }
  return [self withDurationAddedWithLong:[durationToAdd getMillis] withInt:scalar];
}

- (OrgJodaTimeDuration *)plusWithLong:(jlong)amount {
  return [self withDurationAddedWithLong:amount withInt:1];
}

- (OrgJodaTimeDuration *)plusWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)amount {
  if (amount == nil) {
    return self;
  }
  return [self withDurationAddedWithLong:[amount getMillis] withInt:1];
}

- (OrgJodaTimeDuration *)minusWithLong:(jlong)amount {
  return [self withDurationAddedWithLong:amount withInt:-1];
}

- (OrgJodaTimeDuration *)minusWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)amount {
  if (amount == nil) {
    return self;
  }
  return [self withDurationAddedWithLong:[amount getMillis] withInt:-1];
}

- (OrgJodaTimeDuration *)multipliedByWithLong:(jlong)multiplicand {
  if (multiplicand == 1) {
    return self;
  }
  return create_OrgJodaTimeDuration_initWithLong_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithLong_withLong_([self getMillis], multiplicand));
}

- (OrgJodaTimeDuration *)dividedByWithLong:(jlong)divisor {
  if (divisor == 1) {
    return self;
  }
  return create_OrgJodaTimeDuration_initWithLong_(OrgJodaTimeFieldFieldUtils_safeDivideWithLong_withLong_([self getMillis], divisor));
}

- (OrgJodaTimeDuration *)dividedByWithLong:(jlong)divisor
                  withJavaMathRoundingMode:(JavaMathRoundingMode *)roundingMode {
  if (divisor == 1) {
    return self;
  }
  return create_OrgJodaTimeDuration_initWithLong_(OrgJodaTimeFieldFieldUtils_safeDivideWithLong_withLong_withJavaMathRoundingMode_([self getMillis], divisor, roundingMode));
}

- (OrgJodaTimeDuration *)negated {
  if ([self getMillis] == JavaLangLong_MIN_VALUE) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"Negation of this duration would overflow");
  }
  return create_OrgJodaTimeDuration_initWithLong_(-[self getMillis]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgJodaTimeDuration;", 0x9, 0, 1, -1, -1, 2, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x9, 5, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x9, 6, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x9, 7, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x9, 8, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 9, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 10, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 11, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDays;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeHours;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMinutes;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeSeconds;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, 12, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, 13, 15, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, 16, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, 16, 17, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, 18, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, 18, 17, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, 19, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, 20, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, 20, 21, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(parseWithNSString:);
  methods[1].selector = @selector(standardDaysWithLong:);
  methods[2].selector = @selector(standardHoursWithLong:);
  methods[3].selector = @selector(standardMinutesWithLong:);
  methods[4].selector = @selector(standardSecondsWithLong:);
  methods[5].selector = @selector(millisWithLong:);
  methods[6].selector = @selector(initWithLong:);
  methods[7].selector = @selector(initWithLong:withLong:);
  methods[8].selector = @selector(initWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableInstant:);
  methods[9].selector = @selector(initWithId:);
  methods[10].selector = @selector(getStandardDays);
  methods[11].selector = @selector(getStandardHours);
  methods[12].selector = @selector(getStandardMinutes);
  methods[13].selector = @selector(getStandardSeconds);
  methods[14].selector = @selector(toDuration);
  methods[15].selector = @selector(toStandardDays);
  methods[16].selector = @selector(toStandardHours);
  methods[17].selector = @selector(toStandardMinutes);
  methods[18].selector = @selector(toStandardSeconds);
  methods[19].selector = @selector(withMillisWithLong:);
  methods[20].selector = @selector(withDurationAddedWithLong:withInt:);
  methods[21].selector = @selector(withDurationAddedWithOrgJodaTimeReadableDuration:withInt:);
  methods[22].selector = @selector(plusWithLong:);
  methods[23].selector = @selector(plusWithOrgJodaTimeReadableDuration:);
  methods[24].selector = @selector(minusWithLong:);
  methods[25].selector = @selector(minusWithOrgJodaTimeReadableDuration:);
  methods[26].selector = @selector(multipliedByWithLong:);
  methods[27].selector = @selector(dividedByWithLong:);
  methods[28].selector = @selector(dividedByWithLong:withJavaMathRoundingMode:);
  methods[29].selector = @selector(negated);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ZERO", "LOrgJodaTimeDuration;", .constantValue.asLong = 0, 0x19, -1, 22, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeDuration_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "parse", "LNSString;", (void *)&OrgJodaTimeDuration__Annotations$0, "standardDays", "J", "standardHours", "standardMinutes", "standardSeconds", "millis", "JJ", "LOrgJodaTimeReadableInstant;LOrgJodaTimeReadableInstant;", "LNSObject;", "withMillis", "withDurationAdded", "JI", "LOrgJodaTimeReadableDuration;I", "plus", "LOrgJodaTimeReadableDuration;", "minus", "multipliedBy", "dividedBy", "JLJavaMathRoundingMode;", &OrgJodaTimeDuration_ZERO };
  static const J2ObjcClassInfo _OrgJodaTimeDuration = { "Duration", "org.joda.time", ptrTable, methods, fields, 7, 0x11, 30, 2, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeDuration;
}

+ (void)initialize {
  if (self == [OrgJodaTimeDuration class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeDuration_ZERO, new_OrgJodaTimeDuration_initWithLong_(0LL));
    J2OBJC_SET_INITIALIZED(OrgJodaTimeDuration)
  }
}

@end

OrgJodaTimeDuration *OrgJodaTimeDuration_parseWithNSString_(NSString *str) {
  OrgJodaTimeDuration_initialize();
  return create_OrgJodaTimeDuration_initWithId_(str);
}

OrgJodaTimeDuration *OrgJodaTimeDuration_standardDaysWithLong_(jlong days) {
  OrgJodaTimeDuration_initialize();
  if (days == 0) {
    return OrgJodaTimeDuration_ZERO;
  }
  return create_OrgJodaTimeDuration_initWithLong_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithLong_withInt_(days, OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY));
}

OrgJodaTimeDuration *OrgJodaTimeDuration_standardHoursWithLong_(jlong hours) {
  OrgJodaTimeDuration_initialize();
  if (hours == 0) {
    return OrgJodaTimeDuration_ZERO;
  }
  return create_OrgJodaTimeDuration_initWithLong_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithLong_withInt_(hours, OrgJodaTimeDateTimeConstants_MILLIS_PER_HOUR));
}

OrgJodaTimeDuration *OrgJodaTimeDuration_standardMinutesWithLong_(jlong minutes) {
  OrgJodaTimeDuration_initialize();
  if (minutes == 0) {
    return OrgJodaTimeDuration_ZERO;
  }
  return create_OrgJodaTimeDuration_initWithLong_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithLong_withInt_(minutes, OrgJodaTimeDateTimeConstants_MILLIS_PER_MINUTE));
}

OrgJodaTimeDuration *OrgJodaTimeDuration_standardSecondsWithLong_(jlong seconds) {
  OrgJodaTimeDuration_initialize();
  if (seconds == 0) {
    return OrgJodaTimeDuration_ZERO;
  }
  return create_OrgJodaTimeDuration_initWithLong_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithLong_withInt_(seconds, OrgJodaTimeDateTimeConstants_MILLIS_PER_SECOND));
}

OrgJodaTimeDuration *OrgJodaTimeDuration_millisWithLong_(jlong millis) {
  OrgJodaTimeDuration_initialize();
  if (millis == 0) {
    return OrgJodaTimeDuration_ZERO;
  }
  return create_OrgJodaTimeDuration_initWithLong_(millis);
}

void OrgJodaTimeDuration_initWithLong_(OrgJodaTimeDuration *self, jlong duration) {
  OrgJodaTimeBaseBaseDuration_initWithLong_(self, duration);
}

OrgJodaTimeDuration *new_OrgJodaTimeDuration_initWithLong_(jlong duration) {
  J2OBJC_NEW_IMPL(OrgJodaTimeDuration, initWithLong_, duration)
}

OrgJodaTimeDuration *create_OrgJodaTimeDuration_initWithLong_(jlong duration) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeDuration, initWithLong_, duration)
}

void OrgJodaTimeDuration_initWithLong_withLong_(OrgJodaTimeDuration *self, jlong startInstant, jlong endInstant) {
  OrgJodaTimeBaseBaseDuration_initWithLong_withLong_(self, startInstant, endInstant);
}

OrgJodaTimeDuration *new_OrgJodaTimeDuration_initWithLong_withLong_(jlong startInstant, jlong endInstant) {
  J2OBJC_NEW_IMPL(OrgJodaTimeDuration, initWithLong_withLong_, startInstant, endInstant)
}

OrgJodaTimeDuration *create_OrgJodaTimeDuration_initWithLong_withLong_(jlong startInstant, jlong endInstant) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeDuration, initWithLong_withLong_, startInstant, endInstant)
}

void OrgJodaTimeDuration_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(OrgJodaTimeDuration *self, id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeBaseBaseDuration_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(self, start, end);
}

OrgJodaTimeDuration *new_OrgJodaTimeDuration_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end) {
  J2OBJC_NEW_IMPL(OrgJodaTimeDuration, initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_, start, end)
}

OrgJodaTimeDuration *create_OrgJodaTimeDuration_initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeDuration, initWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_, start, end)
}

void OrgJodaTimeDuration_initWithId_(OrgJodaTimeDuration *self, id duration) {
  OrgJodaTimeBaseBaseDuration_initWithId_(self, duration);
}

OrgJodaTimeDuration *new_OrgJodaTimeDuration_initWithId_(id duration) {
  J2OBJC_NEW_IMPL(OrgJodaTimeDuration, initWithId_, duration)
}

OrgJodaTimeDuration *create_OrgJodaTimeDuration_initWithId_(id duration) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeDuration, initWithId_, duration)
}

IOSObjectArray *OrgJodaTimeDuration__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJodaConvertFromString() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeDuration)
