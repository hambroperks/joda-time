//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/Joda-Time/src/main/java/org/joda/time/Minutes.java
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

@interface OrgJodaTimeMinutes ()

/*!
 @brief Creates a new instance representing a number of minutes.
 You should consider using the factory method <code>minutes(int)</code>
 instead of the constructor.
 @param minutes  the number of minutes to represent
 */
- (instancetype)initWithInt:(jint)minutes;

/*!
 @brief Resolves singletons.
 @return the singleton instance
 */
- (id)readResolve;

@end

/*!
 @brief The paser to use for this class.
 */
inline OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeMinutes_get_PARSER();
static OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeMinutes_PARSER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMinutes, PARSER, OrgJodaTimeFormatPeriodFormatter *)

/*!
 @brief Serialization version.
 */
inline jlong OrgJodaTimeMinutes_get_serialVersionUID();
#define OrgJodaTimeMinutes_serialVersionUID 87525275727380863LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeMinutes, serialVersionUID, jlong)

__attribute__((unused)) static void OrgJodaTimeMinutes_initWithInt_(OrgJodaTimeMinutes *self, jint minutes);

__attribute__((unused)) static OrgJodaTimeMinutes *new_OrgJodaTimeMinutes_initWithInt_(jint minutes) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJodaTimeMinutes *create_OrgJodaTimeMinutes_initWithInt_(jint minutes);

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeMinutes__Annotations$0();

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeMinutes__Annotations$1();

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeMinutes)

OrgJodaTimeMinutes *OrgJodaTimeMinutes_ZERO;
OrgJodaTimeMinutes *OrgJodaTimeMinutes_ONE;
OrgJodaTimeMinutes *OrgJodaTimeMinutes_TWO;
OrgJodaTimeMinutes *OrgJodaTimeMinutes_THREE;
OrgJodaTimeMinutes *OrgJodaTimeMinutes_MAX_VALUE;
OrgJodaTimeMinutes *OrgJodaTimeMinutes_MIN_VALUE;

@implementation OrgJodaTimeMinutes

+ (OrgJodaTimeMinutes *)minutesWithInt:(jint)minutes {
  return OrgJodaTimeMinutes_minutesWithInt_(minutes);
}

+ (OrgJodaTimeMinutes *)minutesBetweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                                      withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end {
  return OrgJodaTimeMinutes_minutesBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(start, end);
}

+ (OrgJodaTimeMinutes *)minutesBetweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                                      withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end {
  return OrgJodaTimeMinutes_minutesBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(start, end);
}

+ (OrgJodaTimeMinutes *)minutesInWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval {
  return OrgJodaTimeMinutes_minutesInWithOrgJodaTimeReadableInterval_(interval);
}

+ (OrgJodaTimeMinutes *)standardMinutesInWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  return OrgJodaTimeMinutes_standardMinutesInWithOrgJodaTimeReadablePeriod_(period);
}

+ (OrgJodaTimeMinutes *)parseMinutesWithNSString:(NSString *)periodStr {
  return OrgJodaTimeMinutes_parseMinutesWithNSString_(periodStr);
}

- (instancetype)initWithInt:(jint)minutes {
  OrgJodaTimeMinutes_initWithInt_(self, minutes);
  return self;
}

- (id)readResolve {
  return OrgJodaTimeMinutes_minutesWithInt_([self getValue]);
}

- (OrgJodaTimeDurationFieldType *)getFieldType {
  return OrgJodaTimeDurationFieldType_minutes();
}

- (OrgJodaTimePeriodType *)getPeriodType {
  return OrgJodaTimePeriodType_minutes();
}

- (OrgJodaTimeWeeks *)toStandardWeeks {
  return OrgJodaTimeWeeks_weeksWithInt_([self getValue] / OrgJodaTimeDateTimeConstants_MINUTES_PER_WEEK);
}

- (OrgJodaTimeDays *)toStandardDays {
  return OrgJodaTimeDays_daysWithInt_([self getValue] / OrgJodaTimeDateTimeConstants_MINUTES_PER_DAY);
}

- (OrgJodaTimeHours *)toStandardHours {
  return OrgJodaTimeHours_hoursWithInt_([self getValue] / OrgJodaTimeDateTimeConstants_MINUTES_PER_HOUR);
}

- (OrgJodaTimeSeconds *)toStandardSeconds {
  return OrgJodaTimeSeconds_secondsWithInt_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([self getValue], OrgJodaTimeDateTimeConstants_SECONDS_PER_MINUTE));
}

- (OrgJodaTimeDuration *)toStandardDuration {
  jlong minutes = [self getValue];
  return create_OrgJodaTimeDuration_initWithLong_(minutes * OrgJodaTimeDateTimeConstants_MILLIS_PER_MINUTE);
}

- (jint)getMinutes {
  return [self getValue];
}

- (OrgJodaTimeMinutes *)plusWithInt:(jint)minutes {
  if (minutes == 0) {
    return self;
  }
  return OrgJodaTimeMinutes_minutesWithInt_(OrgJodaTimeFieldFieldUtils_safeAddWithInt_withInt_([self getValue], minutes));
}

- (OrgJodaTimeMinutes *)plusWithOrgJodaTimeMinutes:(OrgJodaTimeMinutes *)minutes {
  if (minutes == nil) {
    return self;
  }
  return [self plusWithInt:[minutes getValue]];
}

- (OrgJodaTimeMinutes *)minusWithInt:(jint)minutes {
  return [self plusWithInt:OrgJodaTimeFieldFieldUtils_safeNegateWithInt_(minutes)];
}

- (OrgJodaTimeMinutes *)minusWithOrgJodaTimeMinutes:(OrgJodaTimeMinutes *)minutes {
  if (minutes == nil) {
    return self;
  }
  return [self minusWithInt:[minutes getValue]];
}

- (OrgJodaTimeMinutes *)multipliedByWithInt:(jint)scalar {
  return OrgJodaTimeMinutes_minutesWithInt_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([self getValue], scalar));
}

- (OrgJodaTimeMinutes *)dividedByWithInt:(jint)divisor {
  if (divisor == 1) {
    return self;
  }
  return OrgJodaTimeMinutes_minutesWithInt_([self getValue] / divisor);
}

- (OrgJodaTimeMinutes *)negated {
  return OrgJodaTimeMinutes_minutesWithInt_(OrgJodaTimeFieldFieldUtils_safeNegateWithInt_([self getValue]));
}

- (jboolean)isGreaterThanWithOrgJodaTimeMinutes:(OrgJodaTimeMinutes *)other {
  if (other == nil) {
    return [self getValue] > 0;
  }
  return [self getValue] > [other getValue];
}

- (jboolean)isLessThanWithOrgJodaTimeMinutes:(OrgJodaTimeMinutes *)other {
  if (other == nil) {
    return [self getValue] < 0;
  }
  return [self getValue] < [other getValue];
}

- (NSString *)description {
  return JreStrcat("$$C", @"PT", NSString_valueOfInt_([self getValue]), 'M');
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgJodaTimeMinutes;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMinutes;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMinutes;", 0x9, 2, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMinutes;", 0x9, 5, 6, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMinutes;", 0x9, 7, 8, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMinutes;", 0x9, 9, 10, -1, -1, 11, -1 },
    { NULL, NULL, 0x2, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationFieldType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimePeriodType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeWeeks;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDays;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeHours;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeSeconds;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMinutes;", 0x1, 12, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMinutes;", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMinutes;", 0x1, 14, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMinutes;", 0x1, 14, 13, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMinutes;", 0x1, 15, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMinutes;", 0x1, 16, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMinutes;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 17, 13, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 18, 13, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 19, -1, -1, -1, 20, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(minutesWithInt:);
  methods[1].selector = @selector(minutesBetweenWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableInstant:);
  methods[2].selector = @selector(minutesBetweenWithOrgJodaTimeReadablePartial:withOrgJodaTimeReadablePartial:);
  methods[3].selector = @selector(minutesInWithOrgJodaTimeReadableInterval:);
  methods[4].selector = @selector(standardMinutesInWithOrgJodaTimeReadablePeriod:);
  methods[5].selector = @selector(parseMinutesWithNSString:);
  methods[6].selector = @selector(initWithInt:);
  methods[7].selector = @selector(readResolve);
  methods[8].selector = @selector(getFieldType);
  methods[9].selector = @selector(getPeriodType);
  methods[10].selector = @selector(toStandardWeeks);
  methods[11].selector = @selector(toStandardDays);
  methods[12].selector = @selector(toStandardHours);
  methods[13].selector = @selector(toStandardSeconds);
  methods[14].selector = @selector(toStandardDuration);
  methods[15].selector = @selector(getMinutes);
  methods[16].selector = @selector(plusWithInt:);
  methods[17].selector = @selector(plusWithOrgJodaTimeMinutes:);
  methods[18].selector = @selector(minusWithInt:);
  methods[19].selector = @selector(minusWithOrgJodaTimeMinutes:);
  methods[20].selector = @selector(multipliedByWithInt:);
  methods[21].selector = @selector(dividedByWithInt:);
  methods[22].selector = @selector(negated);
  methods[23].selector = @selector(isGreaterThanWithOrgJodaTimeMinutes:);
  methods[24].selector = @selector(isLessThanWithOrgJodaTimeMinutes:);
  methods[25].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ZERO", "LOrgJodaTimeMinutes;", .constantValue.asLong = 0, 0x19, -1, 21, -1, -1 },
    { "ONE", "LOrgJodaTimeMinutes;", .constantValue.asLong = 0, 0x19, -1, 22, -1, -1 },
    { "TWO", "LOrgJodaTimeMinutes;", .constantValue.asLong = 0, 0x19, -1, 23, -1, -1 },
    { "THREE", "LOrgJodaTimeMinutes;", .constantValue.asLong = 0, 0x19, -1, 24, -1, -1 },
    { "MAX_VALUE", "LOrgJodaTimeMinutes;", .constantValue.asLong = 0, 0x19, -1, 25, -1, -1 },
    { "MIN_VALUE", "LOrgJodaTimeMinutes;", .constantValue.asLong = 0, 0x19, -1, 26, -1, -1 },
    { "PARSER", "LOrgJodaTimeFormatPeriodFormatter;", .constantValue.asLong = 0, 0x1a, -1, 27, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeMinutes_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "minutes", "I", "minutesBetween", "LOrgJodaTimeReadableInstant;LOrgJodaTimeReadableInstant;", "LOrgJodaTimeReadablePartial;LOrgJodaTimeReadablePartial;", "minutesIn", "LOrgJodaTimeReadableInterval;", "standardMinutesIn", "LOrgJodaTimeReadablePeriod;", "parseMinutes", "LNSString;", (void *)&OrgJodaTimeMinutes__Annotations$0, "plus", "LOrgJodaTimeMinutes;", "minus", "multipliedBy", "dividedBy", "isGreaterThan", "isLessThan", "toString", (void *)&OrgJodaTimeMinutes__Annotations$1, &OrgJodaTimeMinutes_ZERO, &OrgJodaTimeMinutes_ONE, &OrgJodaTimeMinutes_TWO, &OrgJodaTimeMinutes_THREE, &OrgJodaTimeMinutes_MAX_VALUE, &OrgJodaTimeMinutes_MIN_VALUE, &OrgJodaTimeMinutes_PARSER };
  static const J2ObjcClassInfo _OrgJodaTimeMinutes = { "Minutes", "org.joda.time", ptrTable, methods, fields, 7, 0x11, 26, 8, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeMinutes;
}

+ (void)initialize {
  if (self == [OrgJodaTimeMinutes class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeMinutes_ZERO, new_OrgJodaTimeMinutes_initWithInt_(0));
    JreStrongAssignAndConsume(&OrgJodaTimeMinutes_ONE, new_OrgJodaTimeMinutes_initWithInt_(1));
    JreStrongAssignAndConsume(&OrgJodaTimeMinutes_TWO, new_OrgJodaTimeMinutes_initWithInt_(2));
    JreStrongAssignAndConsume(&OrgJodaTimeMinutes_THREE, new_OrgJodaTimeMinutes_initWithInt_(3));
    JreStrongAssignAndConsume(&OrgJodaTimeMinutes_MAX_VALUE, new_OrgJodaTimeMinutes_initWithInt_(JavaLangInteger_MAX_VALUE));
    JreStrongAssignAndConsume(&OrgJodaTimeMinutes_MIN_VALUE, new_OrgJodaTimeMinutes_initWithInt_(JavaLangInteger_MIN_VALUE));
    JreStrongAssign(&OrgJodaTimeMinutes_PARSER, [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeFormatISOPeriodFormat_standard())) withParseTypeWithOrgJodaTimePeriodType:OrgJodaTimePeriodType_minutes()]);
    J2OBJC_SET_INITIALIZED(OrgJodaTimeMinutes)
  }
}

@end

OrgJodaTimeMinutes *OrgJodaTimeMinutes_minutesWithInt_(jint minutes) {
  OrgJodaTimeMinutes_initialize();
  switch (minutes) {
    case 0:
    return OrgJodaTimeMinutes_ZERO;
    case 1:
    return OrgJodaTimeMinutes_ONE;
    case 2:
    return OrgJodaTimeMinutes_TWO;
    case 3:
    return OrgJodaTimeMinutes_THREE;
    case JavaLangInteger_MAX_VALUE:
    return OrgJodaTimeMinutes_MAX_VALUE;
    case JavaLangInteger_MIN_VALUE:
    return OrgJodaTimeMinutes_MIN_VALUE;
    default:
    return create_OrgJodaTimeMinutes_initWithInt_(minutes);
  }
}

OrgJodaTimeMinutes *OrgJodaTimeMinutes_minutesBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeMinutes_initialize();
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimeDurationFieldType_(start, end, OrgJodaTimeDurationFieldType_minutes());
  return OrgJodaTimeMinutes_minutesWithInt_(amount);
}

OrgJodaTimeMinutes *OrgJodaTimeMinutes_minutesBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end) {
  OrgJodaTimeMinutes_initialize();
  if ([start isKindOfClass:[OrgJodaTimeLocalTime class]] && [end isKindOfClass:[OrgJodaTimeLocalTime class]]) {
    OrgJodaTimeChronology *chrono = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_([((id<OrgJodaTimeReadablePartial>) nil_chk(start)) getChronology]);
    jint minutes = [((OrgJodaTimeDurationField *) nil_chk([((OrgJodaTimeChronology *) nil_chk(chrono)) minutes])) getDifferenceWithLong:[((OrgJodaTimeLocalTime *) nil_chk(((OrgJodaTimeLocalTime *) cast_chk(end, [OrgJodaTimeLocalTime class])))) getLocalMillis] withLong:[((OrgJodaTimeLocalTime *) cast_chk(start, [OrgJodaTimeLocalTime class])) getLocalMillis]];
    return OrgJodaTimeMinutes_minutesWithInt_(minutes);
  }
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePeriod_(start, end, OrgJodaTimeMinutes_ZERO);
  return OrgJodaTimeMinutes_minutesWithInt_(amount);
}

OrgJodaTimeMinutes *OrgJodaTimeMinutes_minutesInWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval) {
  OrgJodaTimeMinutes_initialize();
  if (interval == nil) {
    return OrgJodaTimeMinutes_ZERO;
  }
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimeDurationFieldType_([interval getStart], [interval getEnd], OrgJodaTimeDurationFieldType_minutes());
  return OrgJodaTimeMinutes_minutesWithInt_(amount);
}

OrgJodaTimeMinutes *OrgJodaTimeMinutes_standardMinutesInWithOrgJodaTimeReadablePeriod_(id<OrgJodaTimeReadablePeriod> period) {
  OrgJodaTimeMinutes_initialize();
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_standardPeriodInWithOrgJodaTimeReadablePeriod_withLong_(period, OrgJodaTimeDateTimeConstants_MILLIS_PER_MINUTE);
  return OrgJodaTimeMinutes_minutesWithInt_(amount);
}

OrgJodaTimeMinutes *OrgJodaTimeMinutes_parseMinutesWithNSString_(NSString *periodStr) {
  OrgJodaTimeMinutes_initialize();
  if (periodStr == nil) {
    return OrgJodaTimeMinutes_ZERO;
  }
  OrgJodaTimePeriod *p = [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeMinutes_PARSER)) parsePeriodWithNSString:periodStr];
  return OrgJodaTimeMinutes_minutesWithInt_([((OrgJodaTimePeriod *) nil_chk(p)) getMinutes]);
}

void OrgJodaTimeMinutes_initWithInt_(OrgJodaTimeMinutes *self, jint minutes) {
  OrgJodaTimeBaseBaseSingleFieldPeriod_initWithInt_(self, minutes);
}

OrgJodaTimeMinutes *new_OrgJodaTimeMinutes_initWithInt_(jint minutes) {
  J2OBJC_NEW_IMPL(OrgJodaTimeMinutes, initWithInt_, minutes)
}

OrgJodaTimeMinutes *create_OrgJodaTimeMinutes_initWithInt_(jint minutes) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeMinutes, initWithInt_, minutes)
}

IOSObjectArray *OrgJodaTimeMinutes__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJodaConvertFromString() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgJodaTimeMinutes__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJodaConvertToString() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeMinutes)
