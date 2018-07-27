//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/Hours.java
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

@interface OrgJodaTimeHours ()

- (instancetype)initWithInt:(jint)hours;

- (id)readResolve;

@end

inline OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeHours_get_PARSER();
static OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeHours_PARSER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeHours, PARSER, OrgJodaTimeFormatPeriodFormatter *)

inline jlong OrgJodaTimeHours_get_serialVersionUID();
#define OrgJodaTimeHours_serialVersionUID 87525275727380864LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeHours, serialVersionUID, jlong)

__attribute__((unused)) static void OrgJodaTimeHours_initWithInt_(OrgJodaTimeHours *self, jint hours);

__attribute__((unused)) static OrgJodaTimeHours *new_OrgJodaTimeHours_initWithInt_(jint hours) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJodaTimeHours *create_OrgJodaTimeHours_initWithInt_(jint hours);

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeHours__Annotations$0();

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeHours__Annotations$1();

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeHours)

OrgJodaTimeHours *OrgJodaTimeHours_ZERO;
OrgJodaTimeHours *OrgJodaTimeHours_ONE;
OrgJodaTimeHours *OrgJodaTimeHours_TWO;
OrgJodaTimeHours *OrgJodaTimeHours_THREE;
OrgJodaTimeHours *OrgJodaTimeHours_FOUR;
OrgJodaTimeHours *OrgJodaTimeHours_FIVE;
OrgJodaTimeHours *OrgJodaTimeHours_SIX;
OrgJodaTimeHours *OrgJodaTimeHours_SEVEN;
OrgJodaTimeHours *OrgJodaTimeHours_EIGHT;
OrgJodaTimeHours *OrgJodaTimeHours_MAX_VALUE;
OrgJodaTimeHours *OrgJodaTimeHours_MIN_VALUE;

@implementation OrgJodaTimeHours

+ (OrgJodaTimeHours *)hoursWithInt:(jint)hours {
  return OrgJodaTimeHours_hoursWithInt_(hours);
}

+ (OrgJodaTimeHours *)hoursBetweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                                  withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end {
  return OrgJodaTimeHours_hoursBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(start, end);
}

+ (OrgJodaTimeHours *)hoursBetweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                                  withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end {
  return OrgJodaTimeHours_hoursBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(start, end);
}

+ (OrgJodaTimeHours *)hoursInWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval {
  return OrgJodaTimeHours_hoursInWithOrgJodaTimeReadableInterval_(interval);
}

+ (OrgJodaTimeHours *)standardHoursInWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  return OrgJodaTimeHours_standardHoursInWithOrgJodaTimeReadablePeriod_(period);
}

+ (OrgJodaTimeHours *)parseHoursWithNSString:(NSString *)periodStr {
  return OrgJodaTimeHours_parseHoursWithNSString_(periodStr);
}

- (instancetype)initWithInt:(jint)hours {
  OrgJodaTimeHours_initWithInt_(self, hours);
  return self;
}

- (id)readResolve {
  return OrgJodaTimeHours_hoursWithInt_([self getValue]);
}

- (OrgJodaTimeDurationFieldType *)getFieldType {
  return OrgJodaTimeDurationFieldType_hours();
}

- (OrgJodaTimePeriodType *)getPeriodType {
  return OrgJodaTimePeriodType_hours();
}

- (OrgJodaTimeWeeks *)toStandardWeeks {
  return OrgJodaTimeWeeks_weeksWithInt_([self getValue] / OrgJodaTimeDateTimeConstants_HOURS_PER_WEEK);
}

- (OrgJodaTimeDays *)toStandardDays {
  return OrgJodaTimeDays_daysWithInt_([self getValue] / OrgJodaTimeDateTimeConstants_HOURS_PER_DAY);
}

- (OrgJodaTimeMinutes *)toStandardMinutes {
  return OrgJodaTimeMinutes_minutesWithInt_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([self getValue], OrgJodaTimeDateTimeConstants_MINUTES_PER_HOUR));
}

- (OrgJodaTimeSeconds *)toStandardSeconds {
  return OrgJodaTimeSeconds_secondsWithInt_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([self getValue], OrgJodaTimeDateTimeConstants_SECONDS_PER_HOUR));
}

- (OrgJodaTimeDuration *)toStandardDuration {
  jlong hours = [self getValue];
  return create_OrgJodaTimeDuration_initWithLong_(hours * OrgJodaTimeDateTimeConstants_MILLIS_PER_HOUR);
}

- (jint)getHours {
  return [self getValue];
}

- (OrgJodaTimeHours *)plusWithInt:(jint)hours {
  if (hours == 0) {
    return self;
  }
  return OrgJodaTimeHours_hoursWithInt_(OrgJodaTimeFieldFieldUtils_safeAddWithInt_withInt_([self getValue], hours));
}

- (OrgJodaTimeHours *)plusWithOrgJodaTimeHours:(OrgJodaTimeHours *)hours {
  if (hours == nil) {
    return self;
  }
  return [self plusWithInt:[hours getValue]];
}

- (OrgJodaTimeHours *)minusWithInt:(jint)hours {
  return [self plusWithInt:OrgJodaTimeFieldFieldUtils_safeNegateWithInt_(hours)];
}

- (OrgJodaTimeHours *)minusWithOrgJodaTimeHours:(OrgJodaTimeHours *)hours {
  if (hours == nil) {
    return self;
  }
  return [self minusWithInt:[hours getValue]];
}

- (OrgJodaTimeHours *)multipliedByWithInt:(jint)scalar {
  return OrgJodaTimeHours_hoursWithInt_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([self getValue], scalar));
}

- (OrgJodaTimeHours *)dividedByWithInt:(jint)divisor {
  if (divisor == 1) {
    return self;
  }
  return OrgJodaTimeHours_hoursWithInt_([self getValue] / divisor);
}

- (OrgJodaTimeHours *)negated {
  return OrgJodaTimeHours_hoursWithInt_(OrgJodaTimeFieldFieldUtils_safeNegateWithInt_([self getValue]));
}

- (jboolean)isGreaterThanWithOrgJodaTimeHours:(OrgJodaTimeHours *)other {
  if (other == nil) {
    return [self getValue] > 0;
  }
  return [self getValue] > [other getValue];
}

- (jboolean)isLessThanWithOrgJodaTimeHours:(OrgJodaTimeHours *)other {
  if (other == nil) {
    return [self getValue] < 0;
  }
  return [self getValue] < [other getValue];
}

- (NSString *)description {
  return JreStrcat("$$C", @"PT", NSString_valueOfInt_([self getValue]), 'H');
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgJodaTimeHours;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeHours;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeHours;", 0x9, 2, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeHours;", 0x9, 5, 6, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeHours;", 0x9, 7, 8, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeHours;", 0x9, 9, 10, -1, -1, 11, -1 },
    { NULL, NULL, 0x2, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationFieldType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimePeriodType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeWeeks;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDays;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMinutes;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeSeconds;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeHours;", 0x1, 12, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeHours;", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeHours;", 0x1, 14, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeHours;", 0x1, 14, 13, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeHours;", 0x1, 15, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeHours;", 0x1, 16, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeHours;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 17, 13, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 18, 13, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 19, -1, -1, -1, 20, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(hoursWithInt:);
  methods[1].selector = @selector(hoursBetweenWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableInstant:);
  methods[2].selector = @selector(hoursBetweenWithOrgJodaTimeReadablePartial:withOrgJodaTimeReadablePartial:);
  methods[3].selector = @selector(hoursInWithOrgJodaTimeReadableInterval:);
  methods[4].selector = @selector(standardHoursInWithOrgJodaTimeReadablePeriod:);
  methods[5].selector = @selector(parseHoursWithNSString:);
  methods[6].selector = @selector(initWithInt:);
  methods[7].selector = @selector(readResolve);
  methods[8].selector = @selector(getFieldType);
  methods[9].selector = @selector(getPeriodType);
  methods[10].selector = @selector(toStandardWeeks);
  methods[11].selector = @selector(toStandardDays);
  methods[12].selector = @selector(toStandardMinutes);
  methods[13].selector = @selector(toStandardSeconds);
  methods[14].selector = @selector(toStandardDuration);
  methods[15].selector = @selector(getHours);
  methods[16].selector = @selector(plusWithInt:);
  methods[17].selector = @selector(plusWithOrgJodaTimeHours:);
  methods[18].selector = @selector(minusWithInt:);
  methods[19].selector = @selector(minusWithOrgJodaTimeHours:);
  methods[20].selector = @selector(multipliedByWithInt:);
  methods[21].selector = @selector(dividedByWithInt:);
  methods[22].selector = @selector(negated);
  methods[23].selector = @selector(isGreaterThanWithOrgJodaTimeHours:);
  methods[24].selector = @selector(isLessThanWithOrgJodaTimeHours:);
  methods[25].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ZERO", "LOrgJodaTimeHours;", .constantValue.asLong = 0, 0x19, -1, 21, -1, -1 },
    { "ONE", "LOrgJodaTimeHours;", .constantValue.asLong = 0, 0x19, -1, 22, -1, -1 },
    { "TWO", "LOrgJodaTimeHours;", .constantValue.asLong = 0, 0x19, -1, 23, -1, -1 },
    { "THREE", "LOrgJodaTimeHours;", .constantValue.asLong = 0, 0x19, -1, 24, -1, -1 },
    { "FOUR", "LOrgJodaTimeHours;", .constantValue.asLong = 0, 0x19, -1, 25, -1, -1 },
    { "FIVE", "LOrgJodaTimeHours;", .constantValue.asLong = 0, 0x19, -1, 26, -1, -1 },
    { "SIX", "LOrgJodaTimeHours;", .constantValue.asLong = 0, 0x19, -1, 27, -1, -1 },
    { "SEVEN", "LOrgJodaTimeHours;", .constantValue.asLong = 0, 0x19, -1, 28, -1, -1 },
    { "EIGHT", "LOrgJodaTimeHours;", .constantValue.asLong = 0, 0x19, -1, 29, -1, -1 },
    { "MAX_VALUE", "LOrgJodaTimeHours;", .constantValue.asLong = 0, 0x19, -1, 30, -1, -1 },
    { "MIN_VALUE", "LOrgJodaTimeHours;", .constantValue.asLong = 0, 0x19, -1, 31, -1, -1 },
    { "PARSER", "LOrgJodaTimeFormatPeriodFormatter;", .constantValue.asLong = 0, 0x1a, -1, 32, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeHours_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "hours", "I", "hoursBetween", "LOrgJodaTimeReadableInstant;LOrgJodaTimeReadableInstant;", "LOrgJodaTimeReadablePartial;LOrgJodaTimeReadablePartial;", "hoursIn", "LOrgJodaTimeReadableInterval;", "standardHoursIn", "LOrgJodaTimeReadablePeriod;", "parseHours", "LNSString;", (void *)&OrgJodaTimeHours__Annotations$0, "plus", "LOrgJodaTimeHours;", "minus", "multipliedBy", "dividedBy", "isGreaterThan", "isLessThan", "toString", (void *)&OrgJodaTimeHours__Annotations$1, &OrgJodaTimeHours_ZERO, &OrgJodaTimeHours_ONE, &OrgJodaTimeHours_TWO, &OrgJodaTimeHours_THREE, &OrgJodaTimeHours_FOUR, &OrgJodaTimeHours_FIVE, &OrgJodaTimeHours_SIX, &OrgJodaTimeHours_SEVEN, &OrgJodaTimeHours_EIGHT, &OrgJodaTimeHours_MAX_VALUE, &OrgJodaTimeHours_MIN_VALUE, &OrgJodaTimeHours_PARSER };
  static const J2ObjcClassInfo _OrgJodaTimeHours = { "Hours", "org.joda.time", ptrTable, methods, fields, 7, 0x11, 26, 13, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeHours;
}

+ (void)initialize {
  if (self == [OrgJodaTimeHours class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeHours_ZERO, new_OrgJodaTimeHours_initWithInt_(0));
    JreStrongAssignAndConsume(&OrgJodaTimeHours_ONE, new_OrgJodaTimeHours_initWithInt_(1));
    JreStrongAssignAndConsume(&OrgJodaTimeHours_TWO, new_OrgJodaTimeHours_initWithInt_(2));
    JreStrongAssignAndConsume(&OrgJodaTimeHours_THREE, new_OrgJodaTimeHours_initWithInt_(3));
    JreStrongAssignAndConsume(&OrgJodaTimeHours_FOUR, new_OrgJodaTimeHours_initWithInt_(4));
    JreStrongAssignAndConsume(&OrgJodaTimeHours_FIVE, new_OrgJodaTimeHours_initWithInt_(5));
    JreStrongAssignAndConsume(&OrgJodaTimeHours_SIX, new_OrgJodaTimeHours_initWithInt_(6));
    JreStrongAssignAndConsume(&OrgJodaTimeHours_SEVEN, new_OrgJodaTimeHours_initWithInt_(7));
    JreStrongAssignAndConsume(&OrgJodaTimeHours_EIGHT, new_OrgJodaTimeHours_initWithInt_(8));
    JreStrongAssignAndConsume(&OrgJodaTimeHours_MAX_VALUE, new_OrgJodaTimeHours_initWithInt_(JavaLangInteger_MAX_VALUE));
    JreStrongAssignAndConsume(&OrgJodaTimeHours_MIN_VALUE, new_OrgJodaTimeHours_initWithInt_(JavaLangInteger_MIN_VALUE));
    JreStrongAssign(&OrgJodaTimeHours_PARSER, [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeFormatISOPeriodFormat_standard())) withParseTypeWithOrgJodaTimePeriodType:OrgJodaTimePeriodType_hours()]);
    J2OBJC_SET_INITIALIZED(OrgJodaTimeHours)
  }
}

@end

OrgJodaTimeHours *OrgJodaTimeHours_hoursWithInt_(jint hours) {
  OrgJodaTimeHours_initialize();
  switch (hours) {
    case 0:
    return OrgJodaTimeHours_ZERO;
    case 1:
    return OrgJodaTimeHours_ONE;
    case 2:
    return OrgJodaTimeHours_TWO;
    case 3:
    return OrgJodaTimeHours_THREE;
    case 4:
    return OrgJodaTimeHours_FOUR;
    case 5:
    return OrgJodaTimeHours_FIVE;
    case 6:
    return OrgJodaTimeHours_SIX;
    case 7:
    return OrgJodaTimeHours_SEVEN;
    case 8:
    return OrgJodaTimeHours_EIGHT;
    case JavaLangInteger_MAX_VALUE:
    return OrgJodaTimeHours_MAX_VALUE;
    case JavaLangInteger_MIN_VALUE:
    return OrgJodaTimeHours_MIN_VALUE;
    default:
    return create_OrgJodaTimeHours_initWithInt_(hours);
  }
}

OrgJodaTimeHours *OrgJodaTimeHours_hoursBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeHours_initialize();
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimeDurationFieldType_(start, end, OrgJodaTimeDurationFieldType_hours());
  return OrgJodaTimeHours_hoursWithInt_(amount);
}

OrgJodaTimeHours *OrgJodaTimeHours_hoursBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end) {
  OrgJodaTimeHours_initialize();
  if ([start isKindOfClass:[OrgJodaTimeLocalTime class]] && [end isKindOfClass:[OrgJodaTimeLocalTime class]]) {
    OrgJodaTimeChronology *chrono = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_([((id<OrgJodaTimeReadablePartial>) nil_chk(start)) getChronology]);
    jint hours = [((OrgJodaTimeDurationField *) nil_chk([((OrgJodaTimeChronology *) nil_chk(chrono)) hours])) getDifferenceWithLong:[((OrgJodaTimeLocalTime *) nil_chk(((OrgJodaTimeLocalTime *) cast_chk(end, [OrgJodaTimeLocalTime class])))) getLocalMillis] withLong:[((OrgJodaTimeLocalTime *) cast_chk(start, [OrgJodaTimeLocalTime class])) getLocalMillis]];
    return OrgJodaTimeHours_hoursWithInt_(hours);
  }
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePeriod_(start, end, OrgJodaTimeHours_ZERO);
  return OrgJodaTimeHours_hoursWithInt_(amount);
}

OrgJodaTimeHours *OrgJodaTimeHours_hoursInWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval) {
  OrgJodaTimeHours_initialize();
  if (interval == nil) {
    return OrgJodaTimeHours_ZERO;
  }
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimeDurationFieldType_([interval getStart], [interval getEnd], OrgJodaTimeDurationFieldType_hours());
  return OrgJodaTimeHours_hoursWithInt_(amount);
}

OrgJodaTimeHours *OrgJodaTimeHours_standardHoursInWithOrgJodaTimeReadablePeriod_(id<OrgJodaTimeReadablePeriod> period) {
  OrgJodaTimeHours_initialize();
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_standardPeriodInWithOrgJodaTimeReadablePeriod_withLong_(period, OrgJodaTimeDateTimeConstants_MILLIS_PER_HOUR);
  return OrgJodaTimeHours_hoursWithInt_(amount);
}

OrgJodaTimeHours *OrgJodaTimeHours_parseHoursWithNSString_(NSString *periodStr) {
  OrgJodaTimeHours_initialize();
  if (periodStr == nil) {
    return OrgJodaTimeHours_ZERO;
  }
  OrgJodaTimePeriod *p = [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeHours_PARSER)) parsePeriodWithNSString:periodStr];
  return OrgJodaTimeHours_hoursWithInt_([((OrgJodaTimePeriod *) nil_chk(p)) getHours]);
}

void OrgJodaTimeHours_initWithInt_(OrgJodaTimeHours *self, jint hours) {
  OrgJodaTimeBaseBaseSingleFieldPeriod_initWithInt_(self, hours);
}

OrgJodaTimeHours *new_OrgJodaTimeHours_initWithInt_(jint hours) {
  J2OBJC_NEW_IMPL(OrgJodaTimeHours, initWithInt_, hours)
}

OrgJodaTimeHours *create_OrgJodaTimeHours_initWithInt_(jint hours) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeHours, initWithInt_, hours)
}

IOSObjectArray *OrgJodaTimeHours__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJodaConvertFromString() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgJodaTimeHours__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJodaConvertToString() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeHours)
