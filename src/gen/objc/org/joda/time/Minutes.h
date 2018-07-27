//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/Minutes.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeMinutes")
#ifdef RESTRICT_OrgJodaTimeMinutes
#define INCLUDE_ALL_OrgJodaTimeMinutes 0
#else
#define INCLUDE_ALL_OrgJodaTimeMinutes 1
#endif
#undef RESTRICT_OrgJodaTimeMinutes

#if !defined (OrgJodaTimeMinutes_) && (INCLUDE_ALL_OrgJodaTimeMinutes || defined(INCLUDE_OrgJodaTimeMinutes))
#define OrgJodaTimeMinutes_

#define RESTRICT_OrgJodaTimeBaseBaseSingleFieldPeriod 1
#define INCLUDE_OrgJodaTimeBaseBaseSingleFieldPeriod 1
#include "org/joda/time/base/BaseSingleFieldPeriod.h"

@class OrgJodaTimeDays;
@class OrgJodaTimeDuration;
@class OrgJodaTimeDurationFieldType;
@class OrgJodaTimeHours;
@class OrgJodaTimePeriodType;
@class OrgJodaTimeSeconds;
@class OrgJodaTimeWeeks;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadableInterval;
@protocol OrgJodaTimeReadablePartial;
@protocol OrgJodaTimeReadablePeriod;

@interface OrgJodaTimeMinutes : OrgJodaTimeBaseBaseSingleFieldPeriod

#pragma mark Public

- (OrgJodaTimeMinutes *)dividedByWithInt:(jint)divisor;

- (OrgJodaTimeDurationFieldType *)getFieldType;

- (jint)getMinutes;

- (OrgJodaTimePeriodType *)getPeriodType;

- (jboolean)isGreaterThanWithOrgJodaTimeMinutes:(OrgJodaTimeMinutes *)other;

- (jboolean)isLessThanWithOrgJodaTimeMinutes:(OrgJodaTimeMinutes *)other;

- (OrgJodaTimeMinutes *)minusWithInt:(jint)minutes;

- (OrgJodaTimeMinutes *)minusWithOrgJodaTimeMinutes:(OrgJodaTimeMinutes *)minutes;

+ (OrgJodaTimeMinutes *)minutesWithInt:(jint)minutes;

+ (OrgJodaTimeMinutes *)minutesBetweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                                      withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

+ (OrgJodaTimeMinutes *)minutesBetweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                                      withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end;

+ (OrgJodaTimeMinutes *)minutesInWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval;

- (OrgJodaTimeMinutes *)multipliedByWithInt:(jint)scalar;

- (OrgJodaTimeMinutes *)negated;

+ (OrgJodaTimeMinutes *)parseMinutesWithNSString:(NSString *)periodStr;

- (OrgJodaTimeMinutes *)plusWithInt:(jint)minutes;

- (OrgJodaTimeMinutes *)plusWithOrgJodaTimeMinutes:(OrgJodaTimeMinutes *)minutes;

+ (OrgJodaTimeMinutes *)standardMinutesInWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

- (OrgJodaTimeDays *)toStandardDays;

- (OrgJodaTimeDuration *)toStandardDuration;

- (OrgJodaTimeHours *)toStandardHours;

- (OrgJodaTimeSeconds *)toStandardSeconds;

- (OrgJodaTimeWeeks *)toStandardWeeks;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeMinutes)

inline OrgJodaTimeMinutes *OrgJodaTimeMinutes_get_ZERO();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMinutes *OrgJodaTimeMinutes_ZERO;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMinutes, ZERO, OrgJodaTimeMinutes *)

inline OrgJodaTimeMinutes *OrgJodaTimeMinutes_get_ONE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMinutes *OrgJodaTimeMinutes_ONE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMinutes, ONE, OrgJodaTimeMinutes *)

inline OrgJodaTimeMinutes *OrgJodaTimeMinutes_get_TWO();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMinutes *OrgJodaTimeMinutes_TWO;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMinutes, TWO, OrgJodaTimeMinutes *)

inline OrgJodaTimeMinutes *OrgJodaTimeMinutes_get_THREE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMinutes *OrgJodaTimeMinutes_THREE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMinutes, THREE, OrgJodaTimeMinutes *)

inline OrgJodaTimeMinutes *OrgJodaTimeMinutes_get_MAX_VALUE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMinutes *OrgJodaTimeMinutes_MAX_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMinutes, MAX_VALUE, OrgJodaTimeMinutes *)

inline OrgJodaTimeMinutes *OrgJodaTimeMinutes_get_MIN_VALUE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMinutes *OrgJodaTimeMinutes_MIN_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMinutes, MIN_VALUE, OrgJodaTimeMinutes *)

FOUNDATION_EXPORT OrgJodaTimeMinutes *OrgJodaTimeMinutes_minutesWithInt_(jint minutes);

FOUNDATION_EXPORT OrgJodaTimeMinutes *OrgJodaTimeMinutes_minutesBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT OrgJodaTimeMinutes *OrgJodaTimeMinutes_minutesBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end);

FOUNDATION_EXPORT OrgJodaTimeMinutes *OrgJodaTimeMinutes_minutesInWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval);

FOUNDATION_EXPORT OrgJodaTimeMinutes *OrgJodaTimeMinutes_standardMinutesInWithOrgJodaTimeReadablePeriod_(id<OrgJodaTimeReadablePeriod> period);

FOUNDATION_EXPORT OrgJodaTimeMinutes *OrgJodaTimeMinutes_parseMinutesWithNSString_(NSString *periodStr);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeMinutes)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeMinutes")
