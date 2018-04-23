//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/Seconds.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/lang/annotation/Annotation.h"
#include "org/joda/convert/FromString.h"
#include "org/joda/convert/ToString.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTime.h"
#include "org/joda/time/DateTimeConstants.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/Days.h"
#include "org/joda/time/Duration.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/Hours.h"
#include "org/joda/time/LocalTime.h"
#include "org/joda/time/Minutes.h"
#include "org/joda/time/Period.h"
#include "org/joda/time/PeriodType.h"
#include "org/joda/time/ReadableInstant.h"
#include "org/joda/time/ReadableInterval.h"
#include "org/joda/time/ReadablePartial.h"
#include "org/joda/time/ReadablePeriod.h"
#include "org/joda/time/Seconds.h"
#include "org/joda/time/Weeks.h"
#include "org/joda/time/base/BaseSingleFieldPeriod.h"
#include "org/joda/time/field/FieldUtils.h"
#include "org/joda/time/format/ISOPeriodFormat.h"
#include "org/joda/time/format/PeriodFormatter.h"

@interface OrgJodaTimeSeconds ()

/*!
 @brief Creates a new instance representing a number of seconds.
 You should consider using the factory method <code>seconds(int)</code>
  instead of the constructor.
 @param seconds the number of seconds to represent
 */
- (instancetype)initWithInt:(jint)seconds;

/*!
 @brief Resolves singletons.
 @return the singleton instance
 */
- (id)readResolve;

@end

/*!
 @brief The paser to use for this class.
 */
inline OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeSeconds_get_PARSER(void);
static OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeSeconds_PARSER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeSeconds, PARSER, OrgJodaTimeFormatPeriodFormatter *)

/*!
 @brief Serialization version.
 */
inline jlong OrgJodaTimeSeconds_get_serialVersionUID(void);
#define OrgJodaTimeSeconds_serialVersionUID 87525275727380862LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeSeconds, serialVersionUID, jlong)

__attribute__((unused)) static void OrgJodaTimeSeconds_initWithInt_(OrgJodaTimeSeconds *self, jint seconds);

__attribute__((unused)) static OrgJodaTimeSeconds *new_OrgJodaTimeSeconds_initWithInt_(jint seconds) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJodaTimeSeconds *create_OrgJodaTimeSeconds_initWithInt_(jint seconds);

__attribute__((unused)) static id OrgJodaTimeSeconds_readResolve(OrgJodaTimeSeconds *self);

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeSeconds__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeSeconds__Annotations$1(void);

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeSeconds)

OrgJodaTimeSeconds *OrgJodaTimeSeconds_ZERO;
OrgJodaTimeSeconds *OrgJodaTimeSeconds_ONE;
OrgJodaTimeSeconds *OrgJodaTimeSeconds_TWO;
OrgJodaTimeSeconds *OrgJodaTimeSeconds_THREE;
OrgJodaTimeSeconds *OrgJodaTimeSeconds_MAX_VALUE;
OrgJodaTimeSeconds *OrgJodaTimeSeconds_MIN_VALUE;

@implementation OrgJodaTimeSeconds

+ (OrgJodaTimeSeconds *)secondsWithInt:(jint)seconds {
  return OrgJodaTimeSeconds_secondsWithInt_(seconds);
}

+ (OrgJodaTimeSeconds *)secondsBetweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                                      withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end {
  return OrgJodaTimeSeconds_secondsBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(start, end);
}

+ (OrgJodaTimeSeconds *)secondsBetweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                                      withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end {
  return OrgJodaTimeSeconds_secondsBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(start, end);
}

+ (OrgJodaTimeSeconds *)secondsInWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval {
  return OrgJodaTimeSeconds_secondsInWithOrgJodaTimeReadableInterval_(interval);
}

+ (OrgJodaTimeSeconds *)standardSecondsInWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  return OrgJodaTimeSeconds_standardSecondsInWithOrgJodaTimeReadablePeriod_(period);
}

+ (OrgJodaTimeSeconds *)parseSecondsWithNSString:(NSString *)periodStr {
  return OrgJodaTimeSeconds_parseSecondsWithNSString_(periodStr);
}

- (instancetype)initWithInt:(jint)seconds {
  OrgJodaTimeSeconds_initWithInt_(self, seconds);
  return self;
}

- (id)readResolve {
  return OrgJodaTimeSeconds_readResolve(self);
}

- (OrgJodaTimeDurationFieldType *)getFieldType {
  return OrgJodaTimeDurationFieldType_seconds();
}

- (OrgJodaTimePeriodType *)getPeriodType {
  return OrgJodaTimePeriodType_seconds();
}

- (OrgJodaTimeWeeks *)toStandardWeeks {
  return OrgJodaTimeWeeks_weeksWithInt_([self getValue] / OrgJodaTimeDateTimeConstants_SECONDS_PER_WEEK);
}

- (OrgJodaTimeDays *)toStandardDays {
  return OrgJodaTimeDays_daysWithInt_([self getValue] / OrgJodaTimeDateTimeConstants_SECONDS_PER_DAY);
}

- (OrgJodaTimeHours *)toStandardHours {
  return OrgJodaTimeHours_hoursWithInt_([self getValue] / OrgJodaTimeDateTimeConstants_SECONDS_PER_HOUR);
}

- (OrgJodaTimeMinutes *)toStandardMinutes {
  return OrgJodaTimeMinutes_minutesWithInt_([self getValue] / OrgJodaTimeDateTimeConstants_SECONDS_PER_MINUTE);
}

- (OrgJodaTimeDuration *)toStandardDuration {
  jlong seconds = [self getValue];
  return create_OrgJodaTimeDuration_initWithLong_(seconds * OrgJodaTimeDateTimeConstants_MILLIS_PER_SECOND);
}

- (jint)getSeconds {
  return [self getValue];
}

- (OrgJodaTimeSeconds *)plusWithInt:(jint)seconds {
  if (seconds == 0) {
    return self;
  }
  return OrgJodaTimeSeconds_secondsWithInt_(OrgJodaTimeFieldFieldUtils_safeAddWithInt_withInt_([self getValue], seconds));
}

- (OrgJodaTimeSeconds *)plusWithOrgJodaTimeSeconds:(OrgJodaTimeSeconds *)seconds {
  if (seconds == nil) {
    return self;
  }
  return [self plusWithInt:[seconds getValue]];
}

- (OrgJodaTimeSeconds *)minusWithInt:(jint)seconds {
  return [self plusWithInt:OrgJodaTimeFieldFieldUtils_safeNegateWithInt_(seconds)];
}

- (OrgJodaTimeSeconds *)minusWithOrgJodaTimeSeconds:(OrgJodaTimeSeconds *)seconds {
  if (seconds == nil) {
    return self;
  }
  return [self minusWithInt:[seconds getValue]];
}

- (OrgJodaTimeSeconds *)multipliedByWithInt:(jint)scalar {
  return OrgJodaTimeSeconds_secondsWithInt_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([self getValue], scalar));
}

- (OrgJodaTimeSeconds *)dividedByWithInt:(jint)divisor {
  if (divisor == 1) {
    return self;
  }
  return OrgJodaTimeSeconds_secondsWithInt_([self getValue] / divisor);
}

- (OrgJodaTimeSeconds *)negated {
  return OrgJodaTimeSeconds_secondsWithInt_(OrgJodaTimeFieldFieldUtils_safeNegateWithInt_([self getValue]));
}

- (jboolean)isGreaterThanWithOrgJodaTimeSeconds:(OrgJodaTimeSeconds *)other {
  if (other == nil) {
    return [self getValue] > 0;
  }
  return [self getValue] > [other getValue];
}

- (jboolean)isLessThanWithOrgJodaTimeSeconds:(OrgJodaTimeSeconds *)other {
  if (other == nil) {
    return [self getValue] < 0;
  }
  return [self getValue] < [other getValue];
}

- (NSString *)description {
  return JreStrcat("$$C", @"PT", NSString_java_valueOfInt_([self getValue]), 'S');
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgJodaTimeSeconds;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeSeconds;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeSeconds;", 0x9, 2, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeSeconds;", 0x9, 5, 6, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeSeconds;", 0x9, 7, 8, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeSeconds;", 0x9, 9, 10, -1, -1, 11, -1 },
    { NULL, NULL, 0x2, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationFieldType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimePeriodType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeWeeks;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDays;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeHours;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMinutes;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeSeconds;", 0x1, 12, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeSeconds;", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeSeconds;", 0x1, 14, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeSeconds;", 0x1, 14, 13, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeSeconds;", 0x1, 15, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeSeconds;", 0x1, 16, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeSeconds;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 17, 13, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 18, 13, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 19, -1, -1, -1, 20, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(secondsWithInt:);
  methods[1].selector = @selector(secondsBetweenWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableInstant:);
  methods[2].selector = @selector(secondsBetweenWithOrgJodaTimeReadablePartial:withOrgJodaTimeReadablePartial:);
  methods[3].selector = @selector(secondsInWithOrgJodaTimeReadableInterval:);
  methods[4].selector = @selector(standardSecondsInWithOrgJodaTimeReadablePeriod:);
  methods[5].selector = @selector(parseSecondsWithNSString:);
  methods[6].selector = @selector(initWithInt:);
  methods[7].selector = @selector(readResolve);
  methods[8].selector = @selector(getFieldType);
  methods[9].selector = @selector(getPeriodType);
  methods[10].selector = @selector(toStandardWeeks);
  methods[11].selector = @selector(toStandardDays);
  methods[12].selector = @selector(toStandardHours);
  methods[13].selector = @selector(toStandardMinutes);
  methods[14].selector = @selector(toStandardDuration);
  methods[15].selector = @selector(getSeconds);
  methods[16].selector = @selector(plusWithInt:);
  methods[17].selector = @selector(plusWithOrgJodaTimeSeconds:);
  methods[18].selector = @selector(minusWithInt:);
  methods[19].selector = @selector(minusWithOrgJodaTimeSeconds:);
  methods[20].selector = @selector(multipliedByWithInt:);
  methods[21].selector = @selector(dividedByWithInt:);
  methods[22].selector = @selector(negated);
  methods[23].selector = @selector(isGreaterThanWithOrgJodaTimeSeconds:);
  methods[24].selector = @selector(isLessThanWithOrgJodaTimeSeconds:);
  methods[25].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ZERO", "LOrgJodaTimeSeconds;", .constantValue.asLong = 0, 0x19, -1, 21, -1, -1 },
    { "ONE", "LOrgJodaTimeSeconds;", .constantValue.asLong = 0, 0x19, -1, 22, -1, -1 },
    { "TWO", "LOrgJodaTimeSeconds;", .constantValue.asLong = 0, 0x19, -1, 23, -1, -1 },
    { "THREE", "LOrgJodaTimeSeconds;", .constantValue.asLong = 0, 0x19, -1, 24, -1, -1 },
    { "MAX_VALUE", "LOrgJodaTimeSeconds;", .constantValue.asLong = 0, 0x19, -1, 25, -1, -1 },
    { "MIN_VALUE", "LOrgJodaTimeSeconds;", .constantValue.asLong = 0, 0x19, -1, 26, -1, -1 },
    { "PARSER", "LOrgJodaTimeFormatPeriodFormatter;", .constantValue.asLong = 0, 0x1a, -1, 27, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeSeconds_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "seconds", "I", "secondsBetween", "LOrgJodaTimeReadableInstant;LOrgJodaTimeReadableInstant;", "LOrgJodaTimeReadablePartial;LOrgJodaTimeReadablePartial;", "secondsIn", "LOrgJodaTimeReadableInterval;", "standardSecondsIn", "LOrgJodaTimeReadablePeriod;", "parseSeconds", "LNSString;", (void *)&OrgJodaTimeSeconds__Annotations$0, "plus", "LOrgJodaTimeSeconds;", "minus", "multipliedBy", "dividedBy", "isGreaterThan", "isLessThan", "toString", (void *)&OrgJodaTimeSeconds__Annotations$1, &OrgJodaTimeSeconds_ZERO, &OrgJodaTimeSeconds_ONE, &OrgJodaTimeSeconds_TWO, &OrgJodaTimeSeconds_THREE, &OrgJodaTimeSeconds_MAX_VALUE, &OrgJodaTimeSeconds_MIN_VALUE, &OrgJodaTimeSeconds_PARSER };
  static const J2ObjcClassInfo _OrgJodaTimeSeconds = { "Seconds", "org.joda.time", ptrTable, methods, fields, 7, 0x11, 26, 8, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeSeconds;
}

+ (void)initialize {
  if (self == [OrgJodaTimeSeconds class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeSeconds_ZERO, new_OrgJodaTimeSeconds_initWithInt_(0));
    JreStrongAssignAndConsume(&OrgJodaTimeSeconds_ONE, new_OrgJodaTimeSeconds_initWithInt_(1));
    JreStrongAssignAndConsume(&OrgJodaTimeSeconds_TWO, new_OrgJodaTimeSeconds_initWithInt_(2));
    JreStrongAssignAndConsume(&OrgJodaTimeSeconds_THREE, new_OrgJodaTimeSeconds_initWithInt_(3));
    JreStrongAssignAndConsume(&OrgJodaTimeSeconds_MAX_VALUE, new_OrgJodaTimeSeconds_initWithInt_(JavaLangInteger_MAX_VALUE));
    JreStrongAssignAndConsume(&OrgJodaTimeSeconds_MIN_VALUE, new_OrgJodaTimeSeconds_initWithInt_(JavaLangInteger_MIN_VALUE));
    JreStrongAssign(&OrgJodaTimeSeconds_PARSER, [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeFormatISOPeriodFormat_standard())) withParseTypeWithOrgJodaTimePeriodType:OrgJodaTimePeriodType_seconds()]);
    J2OBJC_SET_INITIALIZED(OrgJodaTimeSeconds)
  }
}

@end

OrgJodaTimeSeconds *OrgJodaTimeSeconds_secondsWithInt_(jint seconds) {
  OrgJodaTimeSeconds_initialize();
  switch (seconds) {
    case 0:
    return OrgJodaTimeSeconds_ZERO;
    case 1:
    return OrgJodaTimeSeconds_ONE;
    case 2:
    return OrgJodaTimeSeconds_TWO;
    case 3:
    return OrgJodaTimeSeconds_THREE;
    case JavaLangInteger_MAX_VALUE:
    return OrgJodaTimeSeconds_MAX_VALUE;
    case JavaLangInteger_MIN_VALUE:
    return OrgJodaTimeSeconds_MIN_VALUE;
    default:
    return create_OrgJodaTimeSeconds_initWithInt_(seconds);
  }
}

OrgJodaTimeSeconds *OrgJodaTimeSeconds_secondsBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeSeconds_initialize();
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimeDurationFieldType_(start, end, OrgJodaTimeDurationFieldType_seconds());
  return OrgJodaTimeSeconds_secondsWithInt_(amount);
}

OrgJodaTimeSeconds *OrgJodaTimeSeconds_secondsBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end) {
  OrgJodaTimeSeconds_initialize();
  if ([start isKindOfClass:[OrgJodaTimeLocalTime class]] && [end isKindOfClass:[OrgJodaTimeLocalTime class]]) {
    OrgJodaTimeChronology *chrono = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_([((id<OrgJodaTimeReadablePartial>) nil_chk(start)) getChronology]);
    jint seconds = [((OrgJodaTimeDurationField *) nil_chk([((OrgJodaTimeChronology *) nil_chk(chrono)) seconds])) getDifferenceWithLong:[((OrgJodaTimeLocalTime *) nil_chk(((OrgJodaTimeLocalTime *) cast_chk(end, [OrgJodaTimeLocalTime class])))) getLocalMillis] withLong:[((OrgJodaTimeLocalTime *) cast_chk(start, [OrgJodaTimeLocalTime class])) getLocalMillis]];
    return OrgJodaTimeSeconds_secondsWithInt_(seconds);
  }
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePeriod_(start, end, OrgJodaTimeSeconds_ZERO);
  return OrgJodaTimeSeconds_secondsWithInt_(amount);
}

OrgJodaTimeSeconds *OrgJodaTimeSeconds_secondsInWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval) {
  OrgJodaTimeSeconds_initialize();
  if (interval == nil) {
    return OrgJodaTimeSeconds_ZERO;
  }
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimeDurationFieldType_([interval getStart], [interval getEnd], OrgJodaTimeDurationFieldType_seconds());
  return OrgJodaTimeSeconds_secondsWithInt_(amount);
}

OrgJodaTimeSeconds *OrgJodaTimeSeconds_standardSecondsInWithOrgJodaTimeReadablePeriod_(id<OrgJodaTimeReadablePeriod> period) {
  OrgJodaTimeSeconds_initialize();
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_standardPeriodInWithOrgJodaTimeReadablePeriod_withLong_(period, OrgJodaTimeDateTimeConstants_MILLIS_PER_SECOND);
  return OrgJodaTimeSeconds_secondsWithInt_(amount);
}

OrgJodaTimeSeconds *OrgJodaTimeSeconds_parseSecondsWithNSString_(NSString *periodStr) {
  OrgJodaTimeSeconds_initialize();
  if (periodStr == nil) {
    return OrgJodaTimeSeconds_ZERO;
  }
  OrgJodaTimePeriod *p = [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeSeconds_PARSER)) parsePeriodWithNSString:periodStr];
  return OrgJodaTimeSeconds_secondsWithInt_([((OrgJodaTimePeriod *) nil_chk(p)) getSeconds]);
}

void OrgJodaTimeSeconds_initWithInt_(OrgJodaTimeSeconds *self, jint seconds) {
  OrgJodaTimeBaseBaseSingleFieldPeriod_initWithInt_(self, seconds);
}

OrgJodaTimeSeconds *new_OrgJodaTimeSeconds_initWithInt_(jint seconds) {
  J2OBJC_NEW_IMPL(OrgJodaTimeSeconds, initWithInt_, seconds)
}

OrgJodaTimeSeconds *create_OrgJodaTimeSeconds_initWithInt_(jint seconds) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeSeconds, initWithInt_, seconds)
}

id OrgJodaTimeSeconds_readResolve(OrgJodaTimeSeconds *self) {
  return OrgJodaTimeSeconds_secondsWithInt_([self getValue]);
}

IOSObjectArray *OrgJodaTimeSeconds__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJodaConvertFromString() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgJodaTimeSeconds__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJodaConvertToString() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeSeconds)
