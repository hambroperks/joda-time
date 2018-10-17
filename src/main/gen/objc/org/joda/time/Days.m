//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/Days.java
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
#include "org/joda/time/LocalDate.h"
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

@interface OrgJodaTimeDays ()

/*!
 @brief Creates a new instance representing a number of days.
 You should consider using the factory method <code>days(int)</code>
 instead of the constructor.
 @param days  the number of days to represent
 */
- (instancetype)initWithInt:(jint)days;

/*!
 @brief Resolves singletons.
 @return the singleton instance
 */
- (id)readResolve;

@end

/*!
 @brief The parser to use for this class.
 */
inline OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeDays_get_PARSER();
static OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeDays_PARSER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDays, PARSER, OrgJodaTimeFormatPeriodFormatter *)

/*!
 @brief Serialization version.
 */
inline jlong OrgJodaTimeDays_get_serialVersionUID();
#define OrgJodaTimeDays_serialVersionUID 87525275727380865LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeDays, serialVersionUID, jlong)

__attribute__((unused)) static void OrgJodaTimeDays_initWithInt_(OrgJodaTimeDays *self, jint days);

__attribute__((unused)) static OrgJodaTimeDays *new_OrgJodaTimeDays_initWithInt_(jint days) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJodaTimeDays *create_OrgJodaTimeDays_initWithInt_(jint days);

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeDays__Annotations$0();

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeDays__Annotations$1();

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeDays)

OrgJodaTimeDays *OrgJodaTimeDays_ZERO;
OrgJodaTimeDays *OrgJodaTimeDays_ONE;
OrgJodaTimeDays *OrgJodaTimeDays_TWO;
OrgJodaTimeDays *OrgJodaTimeDays_THREE;
OrgJodaTimeDays *OrgJodaTimeDays_FOUR;
OrgJodaTimeDays *OrgJodaTimeDays_FIVE;
OrgJodaTimeDays *OrgJodaTimeDays_SIX;
OrgJodaTimeDays *OrgJodaTimeDays_SEVEN;
OrgJodaTimeDays *OrgJodaTimeDays_MAX_VALUE;
OrgJodaTimeDays *OrgJodaTimeDays_MIN_VALUE;

@implementation OrgJodaTimeDays

+ (OrgJodaTimeDays *)daysWithInt:(jint)days {
  return OrgJodaTimeDays_daysWithInt_(days);
}

+ (OrgJodaTimeDays *)daysBetweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                                withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end {
  return OrgJodaTimeDays_daysBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(start, end);
}

+ (OrgJodaTimeDays *)daysBetweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                                withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end {
  return OrgJodaTimeDays_daysBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(start, end);
}

+ (OrgJodaTimeDays *)daysInWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval {
  return OrgJodaTimeDays_daysInWithOrgJodaTimeReadableInterval_(interval);
}

+ (OrgJodaTimeDays *)standardDaysInWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  return OrgJodaTimeDays_standardDaysInWithOrgJodaTimeReadablePeriod_(period);
}

+ (OrgJodaTimeDays *)parseDaysWithNSString:(NSString *)periodStr {
  return OrgJodaTimeDays_parseDaysWithNSString_(periodStr);
}

- (instancetype)initWithInt:(jint)days {
  OrgJodaTimeDays_initWithInt_(self, days);
  return self;
}

- (id)readResolve {
  return OrgJodaTimeDays_daysWithInt_([self getValue]);
}

- (OrgJodaTimeDurationFieldType *)getFieldType {
  return OrgJodaTimeDurationFieldType_days();
}

- (OrgJodaTimePeriodType *)getPeriodType {
  return OrgJodaTimePeriodType_days();
}

- (OrgJodaTimeWeeks *)toStandardWeeks {
  return OrgJodaTimeWeeks_weeksWithInt_([self getValue] / OrgJodaTimeDateTimeConstants_DAYS_PER_WEEK);
}

- (OrgJodaTimeHours *)toStandardHours {
  return OrgJodaTimeHours_hoursWithInt_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([self getValue], OrgJodaTimeDateTimeConstants_HOURS_PER_DAY));
}

- (OrgJodaTimeMinutes *)toStandardMinutes {
  return OrgJodaTimeMinutes_minutesWithInt_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([self getValue], OrgJodaTimeDateTimeConstants_MINUTES_PER_DAY));
}

- (OrgJodaTimeSeconds *)toStandardSeconds {
  return OrgJodaTimeSeconds_secondsWithInt_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([self getValue], OrgJodaTimeDateTimeConstants_SECONDS_PER_DAY));
}

- (OrgJodaTimeDuration *)toStandardDuration {
  jlong days = [self getValue];
  return create_OrgJodaTimeDuration_initWithLong_(days * OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY);
}

- (jint)getDays {
  return [self getValue];
}

- (OrgJodaTimeDays *)plusWithInt:(jint)days {
  if (days == 0) {
    return self;
  }
  return OrgJodaTimeDays_daysWithInt_(OrgJodaTimeFieldFieldUtils_safeAddWithInt_withInt_([self getValue], days));
}

- (OrgJodaTimeDays *)plusWithOrgJodaTimeDays:(OrgJodaTimeDays *)days {
  if (days == nil) {
    return self;
  }
  return [self plusWithInt:[days getValue]];
}

- (OrgJodaTimeDays *)minusWithInt:(jint)days {
  return [self plusWithInt:OrgJodaTimeFieldFieldUtils_safeNegateWithInt_(days)];
}

- (OrgJodaTimeDays *)minusWithOrgJodaTimeDays:(OrgJodaTimeDays *)days {
  if (days == nil) {
    return self;
  }
  return [self minusWithInt:[days getValue]];
}

- (OrgJodaTimeDays *)multipliedByWithInt:(jint)scalar {
  return OrgJodaTimeDays_daysWithInt_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([self getValue], scalar));
}

- (OrgJodaTimeDays *)dividedByWithInt:(jint)divisor {
  if (divisor == 1) {
    return self;
  }
  return OrgJodaTimeDays_daysWithInt_([self getValue] / divisor);
}

- (OrgJodaTimeDays *)negated {
  return OrgJodaTimeDays_daysWithInt_(OrgJodaTimeFieldFieldUtils_safeNegateWithInt_([self getValue]));
}

- (jboolean)isGreaterThanWithOrgJodaTimeDays:(OrgJodaTimeDays *)other {
  if (other == nil) {
    return [self getValue] > 0;
  }
  return [self getValue] > [other getValue];
}

- (jboolean)isLessThanWithOrgJodaTimeDays:(OrgJodaTimeDays *)other {
  if (other == nil) {
    return [self getValue] < 0;
  }
  return [self getValue] < [other getValue];
}

- (NSString *)description {
  return JreStrcat("C$C", 'P', NSString_valueOfInt_([self getValue]), 'D');
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgJodaTimeDays;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDays;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDays;", 0x9, 2, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDays;", 0x9, 5, 6, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDays;", 0x9, 7, 8, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDays;", 0x9, 9, 10, -1, -1, 11, -1 },
    { NULL, NULL, 0x2, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationFieldType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimePeriodType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeWeeks;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeHours;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMinutes;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeSeconds;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDays;", 0x1, 12, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDays;", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDays;", 0x1, 14, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDays;", 0x1, 14, 13, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDays;", 0x1, 15, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDays;", 0x1, 16, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDays;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 17, 13, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 18, 13, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 19, -1, -1, -1, 20, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(daysWithInt:);
  methods[1].selector = @selector(daysBetweenWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableInstant:);
  methods[2].selector = @selector(daysBetweenWithOrgJodaTimeReadablePartial:withOrgJodaTimeReadablePartial:);
  methods[3].selector = @selector(daysInWithOrgJodaTimeReadableInterval:);
  methods[4].selector = @selector(standardDaysInWithOrgJodaTimeReadablePeriod:);
  methods[5].selector = @selector(parseDaysWithNSString:);
  methods[6].selector = @selector(initWithInt:);
  methods[7].selector = @selector(readResolve);
  methods[8].selector = @selector(getFieldType);
  methods[9].selector = @selector(getPeriodType);
  methods[10].selector = @selector(toStandardWeeks);
  methods[11].selector = @selector(toStandardHours);
  methods[12].selector = @selector(toStandardMinutes);
  methods[13].selector = @selector(toStandardSeconds);
  methods[14].selector = @selector(toStandardDuration);
  methods[15].selector = @selector(getDays);
  methods[16].selector = @selector(plusWithInt:);
  methods[17].selector = @selector(plusWithOrgJodaTimeDays:);
  methods[18].selector = @selector(minusWithInt:);
  methods[19].selector = @selector(minusWithOrgJodaTimeDays:);
  methods[20].selector = @selector(multipliedByWithInt:);
  methods[21].selector = @selector(dividedByWithInt:);
  methods[22].selector = @selector(negated);
  methods[23].selector = @selector(isGreaterThanWithOrgJodaTimeDays:);
  methods[24].selector = @selector(isLessThanWithOrgJodaTimeDays:);
  methods[25].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ZERO", "LOrgJodaTimeDays;", .constantValue.asLong = 0, 0x19, -1, 21, -1, -1 },
    { "ONE", "LOrgJodaTimeDays;", .constantValue.asLong = 0, 0x19, -1, 22, -1, -1 },
    { "TWO", "LOrgJodaTimeDays;", .constantValue.asLong = 0, 0x19, -1, 23, -1, -1 },
    { "THREE", "LOrgJodaTimeDays;", .constantValue.asLong = 0, 0x19, -1, 24, -1, -1 },
    { "FOUR", "LOrgJodaTimeDays;", .constantValue.asLong = 0, 0x19, -1, 25, -1, -1 },
    { "FIVE", "LOrgJodaTimeDays;", .constantValue.asLong = 0, 0x19, -1, 26, -1, -1 },
    { "SIX", "LOrgJodaTimeDays;", .constantValue.asLong = 0, 0x19, -1, 27, -1, -1 },
    { "SEVEN", "LOrgJodaTimeDays;", .constantValue.asLong = 0, 0x19, -1, 28, -1, -1 },
    { "MAX_VALUE", "LOrgJodaTimeDays;", .constantValue.asLong = 0, 0x19, -1, 29, -1, -1 },
    { "MIN_VALUE", "LOrgJodaTimeDays;", .constantValue.asLong = 0, 0x19, -1, 30, -1, -1 },
    { "PARSER", "LOrgJodaTimeFormatPeriodFormatter;", .constantValue.asLong = 0, 0x1a, -1, 31, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeDays_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "days", "I", "daysBetween", "LOrgJodaTimeReadableInstant;LOrgJodaTimeReadableInstant;", "LOrgJodaTimeReadablePartial;LOrgJodaTimeReadablePartial;", "daysIn", "LOrgJodaTimeReadableInterval;", "standardDaysIn", "LOrgJodaTimeReadablePeriod;", "parseDays", "LNSString;", (void *)&OrgJodaTimeDays__Annotations$0, "plus", "LOrgJodaTimeDays;", "minus", "multipliedBy", "dividedBy", "isGreaterThan", "isLessThan", "toString", (void *)&OrgJodaTimeDays__Annotations$1, &OrgJodaTimeDays_ZERO, &OrgJodaTimeDays_ONE, &OrgJodaTimeDays_TWO, &OrgJodaTimeDays_THREE, &OrgJodaTimeDays_FOUR, &OrgJodaTimeDays_FIVE, &OrgJodaTimeDays_SIX, &OrgJodaTimeDays_SEVEN, &OrgJodaTimeDays_MAX_VALUE, &OrgJodaTimeDays_MIN_VALUE, &OrgJodaTimeDays_PARSER };
  static const J2ObjcClassInfo _OrgJodaTimeDays = { "Days", "org.joda.time", ptrTable, methods, fields, 7, 0x11, 26, 12, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeDays;
}

+ (void)initialize {
  if (self == [OrgJodaTimeDays class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeDays_ZERO, new_OrgJodaTimeDays_initWithInt_(0));
    JreStrongAssignAndConsume(&OrgJodaTimeDays_ONE, new_OrgJodaTimeDays_initWithInt_(1));
    JreStrongAssignAndConsume(&OrgJodaTimeDays_TWO, new_OrgJodaTimeDays_initWithInt_(2));
    JreStrongAssignAndConsume(&OrgJodaTimeDays_THREE, new_OrgJodaTimeDays_initWithInt_(3));
    JreStrongAssignAndConsume(&OrgJodaTimeDays_FOUR, new_OrgJodaTimeDays_initWithInt_(4));
    JreStrongAssignAndConsume(&OrgJodaTimeDays_FIVE, new_OrgJodaTimeDays_initWithInt_(5));
    JreStrongAssignAndConsume(&OrgJodaTimeDays_SIX, new_OrgJodaTimeDays_initWithInt_(6));
    JreStrongAssignAndConsume(&OrgJodaTimeDays_SEVEN, new_OrgJodaTimeDays_initWithInt_(7));
    JreStrongAssignAndConsume(&OrgJodaTimeDays_MAX_VALUE, new_OrgJodaTimeDays_initWithInt_(JavaLangInteger_MAX_VALUE));
    JreStrongAssignAndConsume(&OrgJodaTimeDays_MIN_VALUE, new_OrgJodaTimeDays_initWithInt_(JavaLangInteger_MIN_VALUE));
    JreStrongAssign(&OrgJodaTimeDays_PARSER, [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeFormatISOPeriodFormat_standard())) withParseTypeWithOrgJodaTimePeriodType:OrgJodaTimePeriodType_days()]);
    J2OBJC_SET_INITIALIZED(OrgJodaTimeDays)
  }
}

@end

OrgJodaTimeDays *OrgJodaTimeDays_daysWithInt_(jint days) {
  OrgJodaTimeDays_initialize();
  switch (days) {
    case 0:
    return OrgJodaTimeDays_ZERO;
    case 1:
    return OrgJodaTimeDays_ONE;
    case 2:
    return OrgJodaTimeDays_TWO;
    case 3:
    return OrgJodaTimeDays_THREE;
    case 4:
    return OrgJodaTimeDays_FOUR;
    case 5:
    return OrgJodaTimeDays_FIVE;
    case 6:
    return OrgJodaTimeDays_SIX;
    case 7:
    return OrgJodaTimeDays_SEVEN;
    case JavaLangInteger_MAX_VALUE:
    return OrgJodaTimeDays_MAX_VALUE;
    case JavaLangInteger_MIN_VALUE:
    return OrgJodaTimeDays_MIN_VALUE;
    default:
    return create_OrgJodaTimeDays_initWithInt_(days);
  }
}

OrgJodaTimeDays *OrgJodaTimeDays_daysBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeDays_initialize();
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimeDurationFieldType_(start, end, OrgJodaTimeDurationFieldType_days());
  return OrgJodaTimeDays_daysWithInt_(amount);
}

OrgJodaTimeDays *OrgJodaTimeDays_daysBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end) {
  OrgJodaTimeDays_initialize();
  if ([start isKindOfClass:[OrgJodaTimeLocalDate class]] && [end isKindOfClass:[OrgJodaTimeLocalDate class]]) {
    OrgJodaTimeChronology *chrono = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_([((id<OrgJodaTimeReadablePartial>) nil_chk(start)) getChronology]);
    jint days = [((OrgJodaTimeDurationField *) nil_chk([((OrgJodaTimeChronology *) nil_chk(chrono)) days])) getDifferenceWithLong:[((OrgJodaTimeLocalDate *) nil_chk(((OrgJodaTimeLocalDate *) cast_chk(end, [OrgJodaTimeLocalDate class])))) getLocalMillis] withLong:[((OrgJodaTimeLocalDate *) cast_chk(start, [OrgJodaTimeLocalDate class])) getLocalMillis]];
    return OrgJodaTimeDays_daysWithInt_(days);
  }
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePeriod_(start, end, OrgJodaTimeDays_ZERO);
  return OrgJodaTimeDays_daysWithInt_(amount);
}

OrgJodaTimeDays *OrgJodaTimeDays_daysInWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval) {
  OrgJodaTimeDays_initialize();
  if (interval == nil) {
    return OrgJodaTimeDays_ZERO;
  }
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimeDurationFieldType_([interval getStart], [interval getEnd], OrgJodaTimeDurationFieldType_days());
  return OrgJodaTimeDays_daysWithInt_(amount);
}

OrgJodaTimeDays *OrgJodaTimeDays_standardDaysInWithOrgJodaTimeReadablePeriod_(id<OrgJodaTimeReadablePeriod> period) {
  OrgJodaTimeDays_initialize();
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_standardPeriodInWithOrgJodaTimeReadablePeriod_withLong_(period, OrgJodaTimeDateTimeConstants_MILLIS_PER_DAY);
  return OrgJodaTimeDays_daysWithInt_(amount);
}

OrgJodaTimeDays *OrgJodaTimeDays_parseDaysWithNSString_(NSString *periodStr) {
  OrgJodaTimeDays_initialize();
  if (periodStr == nil) {
    return OrgJodaTimeDays_ZERO;
  }
  OrgJodaTimePeriod *p = [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeDays_PARSER)) parsePeriodWithNSString:periodStr];
  return OrgJodaTimeDays_daysWithInt_([((OrgJodaTimePeriod *) nil_chk(p)) getDays]);
}

void OrgJodaTimeDays_initWithInt_(OrgJodaTimeDays *self, jint days) {
  OrgJodaTimeBaseBaseSingleFieldPeriod_initWithInt_(self, days);
}

OrgJodaTimeDays *new_OrgJodaTimeDays_initWithInt_(jint days) {
  J2OBJC_NEW_IMPL(OrgJodaTimeDays, initWithInt_, days)
}

OrgJodaTimeDays *create_OrgJodaTimeDays_initWithInt_(jint days) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeDays, initWithInt_, days)
}

IOSObjectArray *OrgJodaTimeDays__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJodaConvertFromString() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgJodaTimeDays__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJodaConvertToString() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeDays)
