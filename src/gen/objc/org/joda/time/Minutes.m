//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/Minutes.java
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

#define OrgJodaTimeMinutes_serialVersionUID 87525275727380863LL

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

static OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeMinutes_PARSER_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMinutes, PARSER_, OrgJodaTimeFormatPeriodFormatter *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMinutes, serialVersionUID, jlong)

__attribute__((unused)) static void OrgJodaTimeMinutes_initWithInt_(OrgJodaTimeMinutes *self, jint minutes);

__attribute__((unused)) static OrgJodaTimeMinutes *new_OrgJodaTimeMinutes_initWithInt_(jint minutes) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeMinutes)

OrgJodaTimeMinutes *OrgJodaTimeMinutes_ZERO_;
OrgJodaTimeMinutes *OrgJodaTimeMinutes_ONE_;
OrgJodaTimeMinutes *OrgJodaTimeMinutes_TWO_;
OrgJodaTimeMinutes *OrgJodaTimeMinutes_THREE_;
OrgJodaTimeMinutes *OrgJodaTimeMinutes_MAX_VALUE_;
OrgJodaTimeMinutes *OrgJodaTimeMinutes_MIN_VALUE_;

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
  return [new_OrgJodaTimeDuration_initWithLong_(minutes * OrgJodaTimeDateTimeConstants_MILLIS_PER_MINUTE) autorelease];
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
  return [self plusWithInt:[((OrgJodaTimeMinutes *) nil_chk(minutes)) getValue]];
}

- (OrgJodaTimeMinutes *)minusWithInt:(jint)minutes {
  return [self plusWithInt:OrgJodaTimeFieldFieldUtils_safeNegateWithInt_(minutes)];
}

- (OrgJodaTimeMinutes *)minusWithOrgJodaTimeMinutes:(OrgJodaTimeMinutes *)minutes {
  if (minutes == nil) {
    return self;
  }
  return [self minusWithInt:[((OrgJodaTimeMinutes *) nil_chk(minutes)) getValue]];
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
  return [self getValue] > [((OrgJodaTimeMinutes *) nil_chk(other)) getValue];
}

- (jboolean)isLessThanWithOrgJodaTimeMinutes:(OrgJodaTimeMinutes *)other {
  if (other == nil) {
    return [self getValue] < 0;
  }
  return [self getValue] < [((OrgJodaTimeMinutes *) nil_chk(other)) getValue];
}

- (NSString *)description {
  return JreStrcat("$$C", @"PT", NSString_valueOfInt_([self getValue]), 'M');
}

+ (void)initialize {
  if (self == [OrgJodaTimeMinutes class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeMinutes_ZERO_, new_OrgJodaTimeMinutes_initWithInt_(0));
    JreStrongAssignAndConsume(&OrgJodaTimeMinutes_ONE_, new_OrgJodaTimeMinutes_initWithInt_(1));
    JreStrongAssignAndConsume(&OrgJodaTimeMinutes_TWO_, new_OrgJodaTimeMinutes_initWithInt_(2));
    JreStrongAssignAndConsume(&OrgJodaTimeMinutes_THREE_, new_OrgJodaTimeMinutes_initWithInt_(3));
    JreStrongAssignAndConsume(&OrgJodaTimeMinutes_MAX_VALUE_, new_OrgJodaTimeMinutes_initWithInt_(JavaLangInteger_MAX_VALUE));
    JreStrongAssignAndConsume(&OrgJodaTimeMinutes_MIN_VALUE_, new_OrgJodaTimeMinutes_initWithInt_(JavaLangInteger_MIN_VALUE));
    JreStrongAssign(&OrgJodaTimeMinutes_PARSER_, [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeFormatISOPeriodFormat_standard())) withParseTypeWithOrgJodaTimePeriodType:OrgJodaTimePeriodType_minutes()]);
    J2OBJC_SET_INITIALIZED(OrgJodaTimeMinutes)
  }
}

+ (IOSObjectArray *)__annotations_parseMinutesWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[OrgJodaConvertFromString alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_toString {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[OrgJodaConvertToString alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "minutesWithInt:", "minutes", "Lorg.joda.time.Minutes;", 0x9, NULL, NULL },
    { "minutesBetweenWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableInstant:", "minutesBetween", "Lorg.joda.time.Minutes;", 0x9, NULL, NULL },
    { "minutesBetweenWithOrgJodaTimeReadablePartial:withOrgJodaTimeReadablePartial:", "minutesBetween", "Lorg.joda.time.Minutes;", 0x9, NULL, NULL },
    { "minutesInWithOrgJodaTimeReadableInterval:", "minutesIn", "Lorg.joda.time.Minutes;", 0x9, NULL, NULL },
    { "standardMinutesInWithOrgJodaTimeReadablePeriod:", "standardMinutesIn", "Lorg.joda.time.Minutes;", 0x9, NULL, NULL },
    { "parseMinutesWithNSString:", "parseMinutes", "Lorg.joda.time.Minutes;", 0x9, NULL, NULL },
    { "initWithInt:", "Minutes", NULL, 0x2, NULL, NULL },
    { "readResolve", NULL, "Ljava.lang.Object;", 0x2, NULL, NULL },
    { "getFieldType", NULL, "Lorg.joda.time.DurationFieldType;", 0x1, NULL, NULL },
    { "getPeriodType", NULL, "Lorg.joda.time.PeriodType;", 0x1, NULL, NULL },
    { "toStandardWeeks", NULL, "Lorg.joda.time.Weeks;", 0x1, NULL, NULL },
    { "toStandardDays", NULL, "Lorg.joda.time.Days;", 0x1, NULL, NULL },
    { "toStandardHours", NULL, "Lorg.joda.time.Hours;", 0x1, NULL, NULL },
    { "toStandardSeconds", NULL, "Lorg.joda.time.Seconds;", 0x1, NULL, NULL },
    { "toStandardDuration", NULL, "Lorg.joda.time.Duration;", 0x1, NULL, NULL },
    { "getMinutes", NULL, "I", 0x1, NULL, NULL },
    { "plusWithInt:", "plus", "Lorg.joda.time.Minutes;", 0x1, NULL, NULL },
    { "plusWithOrgJodaTimeMinutes:", "plus", "Lorg.joda.time.Minutes;", 0x1, NULL, NULL },
    { "minusWithInt:", "minus", "Lorg.joda.time.Minutes;", 0x1, NULL, NULL },
    { "minusWithOrgJodaTimeMinutes:", "minus", "Lorg.joda.time.Minutes;", 0x1, NULL, NULL },
    { "multipliedByWithInt:", "multipliedBy", "Lorg.joda.time.Minutes;", 0x1, NULL, NULL },
    { "dividedByWithInt:", "dividedBy", "Lorg.joda.time.Minutes;", 0x1, NULL, NULL },
    { "negated", NULL, "Lorg.joda.time.Minutes;", 0x1, NULL, NULL },
    { "isGreaterThanWithOrgJodaTimeMinutes:", "isGreaterThan", "Z", 0x1, NULL, NULL },
    { "isLessThanWithOrgJodaTimeMinutes:", "isLessThan", "Z", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ZERO_", NULL, 0x19, "Lorg.joda.time.Minutes;", &OrgJodaTimeMinutes_ZERO_, NULL, .constantValue.asLong = 0 },
    { "ONE_", NULL, 0x19, "Lorg.joda.time.Minutes;", &OrgJodaTimeMinutes_ONE_, NULL, .constantValue.asLong = 0 },
    { "TWO_", NULL, 0x19, "Lorg.joda.time.Minutes;", &OrgJodaTimeMinutes_TWO_, NULL, .constantValue.asLong = 0 },
    { "THREE_", NULL, 0x19, "Lorg.joda.time.Minutes;", &OrgJodaTimeMinutes_THREE_, NULL, .constantValue.asLong = 0 },
    { "MAX_VALUE_", NULL, 0x19, "Lorg.joda.time.Minutes;", &OrgJodaTimeMinutes_MAX_VALUE_, NULL, .constantValue.asLong = 0 },
    { "MIN_VALUE_", NULL, 0x19, "Lorg.joda.time.Minutes;", &OrgJodaTimeMinutes_MIN_VALUE_, NULL, .constantValue.asLong = 0 },
    { "PARSER_", NULL, 0x1a, "Lorg.joda.time.format.PeriodFormatter;", &OrgJodaTimeMinutes_PARSER_, NULL, .constantValue.asLong = 0 },
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeMinutes_serialVersionUID },
  };
  static const J2ObjcClassInfo _OrgJodaTimeMinutes = { 2, "Minutes", "org.joda.time", NULL, 0x11, 26, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeMinutes;
}

@end

OrgJodaTimeMinutes *OrgJodaTimeMinutes_minutesWithInt_(jint minutes) {
  OrgJodaTimeMinutes_initialize();
  switch (minutes) {
    case 0:
    return OrgJodaTimeMinutes_ZERO_;
    case 1:
    return OrgJodaTimeMinutes_ONE_;
    case 2:
    return OrgJodaTimeMinutes_TWO_;
    case 3:
    return OrgJodaTimeMinutes_THREE_;
    case JavaLangInteger_MAX_VALUE:
    return OrgJodaTimeMinutes_MAX_VALUE_;
    case JavaLangInteger_MIN_VALUE:
    return OrgJodaTimeMinutes_MIN_VALUE_;
    default:
    return [new_OrgJodaTimeMinutes_initWithInt_(minutes) autorelease];
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
    jint minutes = [((OrgJodaTimeDurationField *) nil_chk([((OrgJodaTimeChronology *) nil_chk(chrono)) minutes])) getDifferenceWithLong:[((OrgJodaTimeLocalTime *) nil_chk(((OrgJodaTimeLocalTime *) check_class_cast(end, [OrgJodaTimeLocalTime class])))) getLocalMillis] withLong:[((OrgJodaTimeLocalTime *) check_class_cast(start, [OrgJodaTimeLocalTime class])) getLocalMillis]];
    return OrgJodaTimeMinutes_minutesWithInt_(minutes);
  }
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePeriod_(start, end, OrgJodaTimeMinutes_ZERO_);
  return OrgJodaTimeMinutes_minutesWithInt_(amount);
}

OrgJodaTimeMinutes *OrgJodaTimeMinutes_minutesInWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval) {
  OrgJodaTimeMinutes_initialize();
  if (interval == nil) {
    return OrgJodaTimeMinutes_ZERO_;
  }
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimeDurationFieldType_([((id<OrgJodaTimeReadableInterval>) nil_chk(interval)) getStart], [interval getEnd], OrgJodaTimeDurationFieldType_minutes());
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
    return OrgJodaTimeMinutes_ZERO_;
  }
  OrgJodaTimePeriod *p = [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeMinutes_PARSER_)) parsePeriodWithNSString:periodStr];
  return OrgJodaTimeMinutes_minutesWithInt_([((OrgJodaTimePeriod *) nil_chk(p)) getMinutes]);
}

void OrgJodaTimeMinutes_initWithInt_(OrgJodaTimeMinutes *self, jint minutes) {
  OrgJodaTimeBaseBaseSingleFieldPeriod_initWithInt_(self, minutes);
}

OrgJodaTimeMinutes *new_OrgJodaTimeMinutes_initWithInt_(jint minutes) {
  OrgJodaTimeMinutes *self = [OrgJodaTimeMinutes alloc];
  OrgJodaTimeMinutes_initWithInt_(self, minutes);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeMinutes)
