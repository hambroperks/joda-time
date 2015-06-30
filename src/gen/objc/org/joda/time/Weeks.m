//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/Weeks.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
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

#define OrgJodaTimeWeeks_serialVersionUID 87525275727380866LL

@interface OrgJodaTimeWeeks ()

/**
 @brief Creates a new instance representing a number of weeks.
 You should consider using the factory method #weeks(int) instead of the constructor.
 @param weeks the number of weeks to represent
 */
- (instancetype)initWithInt:(jint)weeks;

/**
 @brief Resolves singletons.
 @return the singleton instance
 */
- (id)readResolve;

@end

static OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeWeeks_PARSER_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeWeeks, PARSER_, OrgJodaTimeFormatPeriodFormatter *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeWeeks, serialVersionUID, jlong)

__attribute__((unused)) static void OrgJodaTimeWeeks_initWithInt_(OrgJodaTimeWeeks *self, jint weeks);

__attribute__((unused)) static OrgJodaTimeWeeks *new_OrgJodaTimeWeeks_initWithInt_(jint weeks) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeWeeks)

OrgJodaTimeWeeks *OrgJodaTimeWeeks_ZERO_;
OrgJodaTimeWeeks *OrgJodaTimeWeeks_ONE_;
OrgJodaTimeWeeks *OrgJodaTimeWeeks_TWO_;
OrgJodaTimeWeeks *OrgJodaTimeWeeks_THREE_;
OrgJodaTimeWeeks *OrgJodaTimeWeeks_MAX_VALUE_;
OrgJodaTimeWeeks *OrgJodaTimeWeeks_MIN_VALUE_;

@implementation OrgJodaTimeWeeks

+ (OrgJodaTimeWeeks *)weeksWithInt:(jint)weeks {
  return OrgJodaTimeWeeks_weeksWithInt_(weeks);
}

+ (OrgJodaTimeWeeks *)weeksBetweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                                  withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end {
  return OrgJodaTimeWeeks_weeksBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(start, end);
}

+ (OrgJodaTimeWeeks *)weeksBetweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                                  withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end {
  return OrgJodaTimeWeeks_weeksBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(start, end);
}

+ (OrgJodaTimeWeeks *)weeksInWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval {
  return OrgJodaTimeWeeks_weeksInWithOrgJodaTimeReadableInterval_(interval);
}

+ (OrgJodaTimeWeeks *)standardWeeksInWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period {
  return OrgJodaTimeWeeks_standardWeeksInWithOrgJodaTimeReadablePeriod_(period);
}

+ (OrgJodaTimeWeeks *)parseWeeksWithNSString:(NSString *)periodStr {
  return OrgJodaTimeWeeks_parseWeeksWithNSString_(periodStr);
}

- (instancetype)initWithInt:(jint)weeks {
  OrgJodaTimeWeeks_initWithInt_(self, weeks);
  return self;
}

- (id)readResolve {
  return OrgJodaTimeWeeks_weeksWithInt_([self getValue]);
}

- (OrgJodaTimeDurationFieldType *)getFieldType {
  return OrgJodaTimeDurationFieldType_weeks();
}

- (OrgJodaTimePeriodType *)getPeriodType {
  return OrgJodaTimePeriodType_weeks();
}

- (OrgJodaTimeDays *)toStandardDays {
  return OrgJodaTimeDays_daysWithInt_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([self getValue], OrgJodaTimeDateTimeConstants_DAYS_PER_WEEK));
}

- (OrgJodaTimeHours *)toStandardHours {
  return OrgJodaTimeHours_hoursWithInt_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([self getValue], OrgJodaTimeDateTimeConstants_HOURS_PER_WEEK));
}

- (OrgJodaTimeMinutes *)toStandardMinutes {
  return OrgJodaTimeMinutes_minutesWithInt_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([self getValue], OrgJodaTimeDateTimeConstants_MINUTES_PER_WEEK));
}

- (OrgJodaTimeSeconds *)toStandardSeconds {
  return OrgJodaTimeSeconds_secondsWithInt_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([self getValue], OrgJodaTimeDateTimeConstants_SECONDS_PER_WEEK));
}

- (OrgJodaTimeDuration *)toStandardDuration {
  jlong weeks = [self getValue];
  return [new_OrgJodaTimeDuration_initWithLong_(weeks * OrgJodaTimeDateTimeConstants_MILLIS_PER_WEEK) autorelease];
}

- (jint)getWeeks {
  return [self getValue];
}

- (OrgJodaTimeWeeks *)plusWithInt:(jint)weeks {
  if (weeks == 0) {
    return self;
  }
  return OrgJodaTimeWeeks_weeksWithInt_(OrgJodaTimeFieldFieldUtils_safeAddWithInt_withInt_([self getValue], weeks));
}

- (OrgJodaTimeWeeks *)plusWithOrgJodaTimeWeeks:(OrgJodaTimeWeeks *)weeks {
  if (weeks == nil) {
    return self;
  }
  return [self plusWithInt:[((OrgJodaTimeWeeks *) nil_chk(weeks)) getValue]];
}

- (OrgJodaTimeWeeks *)minusWithInt:(jint)weeks {
  return [self plusWithInt:OrgJodaTimeFieldFieldUtils_safeNegateWithInt_(weeks)];
}

- (OrgJodaTimeWeeks *)minusWithOrgJodaTimeWeeks:(OrgJodaTimeWeeks *)weeks {
  if (weeks == nil) {
    return self;
  }
  return [self minusWithInt:[((OrgJodaTimeWeeks *) nil_chk(weeks)) getValue]];
}

- (OrgJodaTimeWeeks *)multipliedByWithInt:(jint)scalar {
  return OrgJodaTimeWeeks_weeksWithInt_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([self getValue], scalar));
}

- (OrgJodaTimeWeeks *)dividedByWithInt:(jint)divisor {
  if (divisor == 1) {
    return self;
  }
  return OrgJodaTimeWeeks_weeksWithInt_([self getValue] / divisor);
}

- (OrgJodaTimeWeeks *)negated {
  return OrgJodaTimeWeeks_weeksWithInt_(OrgJodaTimeFieldFieldUtils_safeNegateWithInt_([self getValue]));
}

- (jboolean)isGreaterThanWithOrgJodaTimeWeeks:(OrgJodaTimeWeeks *)other {
  if (other == nil) {
    return [self getValue] > 0;
  }
  return [self getValue] > [((OrgJodaTimeWeeks *) nil_chk(other)) getValue];
}

- (jboolean)isLessThanWithOrgJodaTimeWeeks:(OrgJodaTimeWeeks *)other {
  if (other == nil) {
    return [self getValue] < 0;
  }
  return [self getValue] < [((OrgJodaTimeWeeks *) nil_chk(other)) getValue];
}

- (NSString *)description {
  return JreStrcat("C$C", 'P', NSString_valueOfInt_([self getValue]), 'W');
}

+ (void)initialize {
  if (self == [OrgJodaTimeWeeks class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeWeeks_ZERO_, nil, new_OrgJodaTimeWeeks_initWithInt_(0));
    JreStrongAssignAndConsume(&OrgJodaTimeWeeks_ONE_, nil, new_OrgJodaTimeWeeks_initWithInt_(1));
    JreStrongAssignAndConsume(&OrgJodaTimeWeeks_TWO_, nil, new_OrgJodaTimeWeeks_initWithInt_(2));
    JreStrongAssignAndConsume(&OrgJodaTimeWeeks_THREE_, nil, new_OrgJodaTimeWeeks_initWithInt_(3));
    JreStrongAssignAndConsume(&OrgJodaTimeWeeks_MAX_VALUE_, nil, new_OrgJodaTimeWeeks_initWithInt_(JavaLangInteger_MAX_VALUE));
    JreStrongAssignAndConsume(&OrgJodaTimeWeeks_MIN_VALUE_, nil, new_OrgJodaTimeWeeks_initWithInt_(JavaLangInteger_MIN_VALUE));
    JreStrongAssign(&OrgJodaTimeWeeks_PARSER_, nil, [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeFormatISOPeriodFormat_standard())) withParseTypeWithOrgJodaTimePeriodType:OrgJodaTimePeriodType_weeks()]);
    J2OBJC_SET_INITIALIZED(OrgJodaTimeWeeks)
  }
}

+ (IOSObjectArray *)__annotations_parseWeeksWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[OrgJodaConvertFromString alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_toString {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[OrgJodaConvertToString alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "weeksWithInt:", "weeks", "Lorg.joda.time.Weeks;", 0x9, NULL, NULL },
    { "weeksBetweenWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableInstant:", "weeksBetween", "Lorg.joda.time.Weeks;", 0x9, NULL, NULL },
    { "weeksBetweenWithOrgJodaTimeReadablePartial:withOrgJodaTimeReadablePartial:", "weeksBetween", "Lorg.joda.time.Weeks;", 0x9, NULL, NULL },
    { "weeksInWithOrgJodaTimeReadableInterval:", "weeksIn", "Lorg.joda.time.Weeks;", 0x9, NULL, NULL },
    { "standardWeeksInWithOrgJodaTimeReadablePeriod:", "standardWeeksIn", "Lorg.joda.time.Weeks;", 0x9, NULL, NULL },
    { "parseWeeksWithNSString:", "parseWeeks", "Lorg.joda.time.Weeks;", 0x9, NULL, NULL },
    { "initWithInt:", "Weeks", NULL, 0x2, NULL, NULL },
    { "readResolve", NULL, "Ljava.lang.Object;", 0x2, NULL, NULL },
    { "getFieldType", NULL, "Lorg.joda.time.DurationFieldType;", 0x1, NULL, NULL },
    { "getPeriodType", NULL, "Lorg.joda.time.PeriodType;", 0x1, NULL, NULL },
    { "toStandardDays", NULL, "Lorg.joda.time.Days;", 0x1, NULL, NULL },
    { "toStandardHours", NULL, "Lorg.joda.time.Hours;", 0x1, NULL, NULL },
    { "toStandardMinutes", NULL, "Lorg.joda.time.Minutes;", 0x1, NULL, NULL },
    { "toStandardSeconds", NULL, "Lorg.joda.time.Seconds;", 0x1, NULL, NULL },
    { "toStandardDuration", NULL, "Lorg.joda.time.Duration;", 0x1, NULL, NULL },
    { "getWeeks", NULL, "I", 0x1, NULL, NULL },
    { "plusWithInt:", "plus", "Lorg.joda.time.Weeks;", 0x1, NULL, NULL },
    { "plusWithOrgJodaTimeWeeks:", "plus", "Lorg.joda.time.Weeks;", 0x1, NULL, NULL },
    { "minusWithInt:", "minus", "Lorg.joda.time.Weeks;", 0x1, NULL, NULL },
    { "minusWithOrgJodaTimeWeeks:", "minus", "Lorg.joda.time.Weeks;", 0x1, NULL, NULL },
    { "multipliedByWithInt:", "multipliedBy", "Lorg.joda.time.Weeks;", 0x1, NULL, NULL },
    { "dividedByWithInt:", "dividedBy", "Lorg.joda.time.Weeks;", 0x1, NULL, NULL },
    { "negated", NULL, "Lorg.joda.time.Weeks;", 0x1, NULL, NULL },
    { "isGreaterThanWithOrgJodaTimeWeeks:", "isGreaterThan", "Z", 0x1, NULL, NULL },
    { "isLessThanWithOrgJodaTimeWeeks:", "isLessThan", "Z", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ZERO_", NULL, 0x19, "Lorg.joda.time.Weeks;", &OrgJodaTimeWeeks_ZERO_, NULL,  },
    { "ONE_", NULL, 0x19, "Lorg.joda.time.Weeks;", &OrgJodaTimeWeeks_ONE_, NULL,  },
    { "TWO_", NULL, 0x19, "Lorg.joda.time.Weeks;", &OrgJodaTimeWeeks_TWO_, NULL,  },
    { "THREE_", NULL, 0x19, "Lorg.joda.time.Weeks;", &OrgJodaTimeWeeks_THREE_, NULL,  },
    { "MAX_VALUE_", NULL, 0x19, "Lorg.joda.time.Weeks;", &OrgJodaTimeWeeks_MAX_VALUE_, NULL,  },
    { "MIN_VALUE_", NULL, 0x19, "Lorg.joda.time.Weeks;", &OrgJodaTimeWeeks_MIN_VALUE_, NULL,  },
    { "PARSER_", NULL, 0x1a, "Lorg.joda.time.format.PeriodFormatter;", &OrgJodaTimeWeeks_PARSER_, NULL,  },
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeWeeks_serialVersionUID },
  };
  static const J2ObjcClassInfo _OrgJodaTimeWeeks = { 2, "Weeks", "org.joda.time", NULL, 0x11, 26, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeWeeks;
}

@end

OrgJodaTimeWeeks *OrgJodaTimeWeeks_weeksWithInt_(jint weeks) {
  OrgJodaTimeWeeks_initialize();
  switch (weeks) {
    case 0:
    return OrgJodaTimeWeeks_ZERO_;
    case 1:
    return OrgJodaTimeWeeks_ONE_;
    case 2:
    return OrgJodaTimeWeeks_TWO_;
    case 3:
    return OrgJodaTimeWeeks_THREE_;
    case JavaLangInteger_MAX_VALUE:
    return OrgJodaTimeWeeks_MAX_VALUE_;
    case JavaLangInteger_MIN_VALUE:
    return OrgJodaTimeWeeks_MIN_VALUE_;
    default:
    return [new_OrgJodaTimeWeeks_initWithInt_(weeks) autorelease];
  }
}

OrgJodaTimeWeeks *OrgJodaTimeWeeks_weeksBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeWeeks_initialize();
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimeDurationFieldType_(start, end, OrgJodaTimeDurationFieldType_weeks());
  return OrgJodaTimeWeeks_weeksWithInt_(amount);
}

OrgJodaTimeWeeks *OrgJodaTimeWeeks_weeksBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end) {
  OrgJodaTimeWeeks_initialize();
  if ([start isKindOfClass:[OrgJodaTimeLocalDate class]] && [end isKindOfClass:[OrgJodaTimeLocalDate class]]) {
    OrgJodaTimeChronology *chrono = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_([((id<OrgJodaTimeReadablePartial>) nil_chk(start)) getChronology]);
    jint weeks = [((OrgJodaTimeDurationField *) nil_chk([((OrgJodaTimeChronology *) nil_chk(chrono)) weeks])) getDifferenceWithLong:[((OrgJodaTimeLocalDate *) nil_chk(((OrgJodaTimeLocalDate *) check_class_cast(end, [OrgJodaTimeLocalDate class])))) getLocalMillis] withLong:[((OrgJodaTimeLocalDate *) check_class_cast(start, [OrgJodaTimeLocalDate class])) getLocalMillis]];
    return OrgJodaTimeWeeks_weeksWithInt_(weeks);
  }
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePeriod_(start, end, OrgJodaTimeWeeks_ZERO_);
  return OrgJodaTimeWeeks_weeksWithInt_(amount);
}

OrgJodaTimeWeeks *OrgJodaTimeWeeks_weeksInWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval) {
  OrgJodaTimeWeeks_initialize();
  if (interval == nil) {
    return OrgJodaTimeWeeks_ZERO_;
  }
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimeDurationFieldType_([((id<OrgJodaTimeReadableInterval>) nil_chk(interval)) getStart], [interval getEnd], OrgJodaTimeDurationFieldType_weeks());
  return OrgJodaTimeWeeks_weeksWithInt_(amount);
}

OrgJodaTimeWeeks *OrgJodaTimeWeeks_standardWeeksInWithOrgJodaTimeReadablePeriod_(id<OrgJodaTimeReadablePeriod> period) {
  OrgJodaTimeWeeks_initialize();
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_standardPeriodInWithOrgJodaTimeReadablePeriod_withLong_(period, OrgJodaTimeDateTimeConstants_MILLIS_PER_WEEK);
  return OrgJodaTimeWeeks_weeksWithInt_(amount);
}

OrgJodaTimeWeeks *OrgJodaTimeWeeks_parseWeeksWithNSString_(NSString *periodStr) {
  OrgJodaTimeWeeks_initialize();
  if (periodStr == nil) {
    return OrgJodaTimeWeeks_ZERO_;
  }
  OrgJodaTimePeriod *p = [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeWeeks_PARSER_)) parsePeriodWithNSString:periodStr];
  return OrgJodaTimeWeeks_weeksWithInt_([((OrgJodaTimePeriod *) nil_chk(p)) getWeeks]);
}

void OrgJodaTimeWeeks_initWithInt_(OrgJodaTimeWeeks *self, jint weeks) {
  OrgJodaTimeBaseBaseSingleFieldPeriod_initWithInt_(self, weeks);
}

OrgJodaTimeWeeks *new_OrgJodaTimeWeeks_initWithInt_(jint weeks) {
  OrgJodaTimeWeeks *self = [OrgJodaTimeWeeks alloc];
  OrgJodaTimeWeeks_initWithInt_(self, weeks);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeWeeks)
