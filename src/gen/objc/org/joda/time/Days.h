//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/Days.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeDays")
#ifdef RESTRICT_OrgJodaTimeDays
#define INCLUDE_ALL_OrgJodaTimeDays 0
#else
#define INCLUDE_ALL_OrgJodaTimeDays 1
#endif
#undef RESTRICT_OrgJodaTimeDays

#if !defined (OrgJodaTimeDays_) && (INCLUDE_ALL_OrgJodaTimeDays || defined(INCLUDE_OrgJodaTimeDays))
#define OrgJodaTimeDays_

#define RESTRICT_OrgJodaTimeBaseBaseSingleFieldPeriod 1
#define INCLUDE_OrgJodaTimeBaseBaseSingleFieldPeriod 1
#include "org/joda/time/base/BaseSingleFieldPeriod.h"

@class OrgJodaTimeDuration;
@class OrgJodaTimeDurationFieldType;
@class OrgJodaTimeHours;
@class OrgJodaTimeMinutes;
@class OrgJodaTimePeriodType;
@class OrgJodaTimeSeconds;
@class OrgJodaTimeWeeks;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadableInterval;
@protocol OrgJodaTimeReadablePartial;
@protocol OrgJodaTimeReadablePeriod;

@interface OrgJodaTimeDays : OrgJodaTimeBaseBaseSingleFieldPeriod

#pragma mark Public

+ (OrgJodaTimeDays *)daysWithInt:(jint)days;

+ (OrgJodaTimeDays *)daysBetweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                                withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

+ (OrgJodaTimeDays *)daysBetweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                                withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end;

+ (OrgJodaTimeDays *)daysInWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval;

- (OrgJodaTimeDays *)dividedByWithInt:(jint)divisor;

- (jint)getDays;

- (OrgJodaTimeDurationFieldType *)getFieldType;

- (OrgJodaTimePeriodType *)getPeriodType;

- (jboolean)isGreaterThanWithOrgJodaTimeDays:(OrgJodaTimeDays *)other;

- (jboolean)isLessThanWithOrgJodaTimeDays:(OrgJodaTimeDays *)other;

- (OrgJodaTimeDays *)minusWithOrgJodaTimeDays:(OrgJodaTimeDays *)days;

- (OrgJodaTimeDays *)minusWithInt:(jint)days;

- (OrgJodaTimeDays *)multipliedByWithInt:(jint)scalar;

- (OrgJodaTimeDays *)negated;

+ (OrgJodaTimeDays *)parseDaysWithNSString:(NSString *)periodStr;

- (OrgJodaTimeDays *)plusWithOrgJodaTimeDays:(OrgJodaTimeDays *)days;

- (OrgJodaTimeDays *)plusWithInt:(jint)days;

+ (OrgJodaTimeDays *)standardDaysInWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

- (OrgJodaTimeDuration *)toStandardDuration;

- (OrgJodaTimeHours *)toStandardHours;

- (OrgJodaTimeMinutes *)toStandardMinutes;

- (OrgJodaTimeSeconds *)toStandardSeconds;

- (OrgJodaTimeWeeks *)toStandardWeeks;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeDays)

inline OrgJodaTimeDays *OrgJodaTimeDays_get_ZERO();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDays *OrgJodaTimeDays_ZERO;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDays, ZERO, OrgJodaTimeDays *)

inline OrgJodaTimeDays *OrgJodaTimeDays_get_ONE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDays *OrgJodaTimeDays_ONE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDays, ONE, OrgJodaTimeDays *)

inline OrgJodaTimeDays *OrgJodaTimeDays_get_TWO();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDays *OrgJodaTimeDays_TWO;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDays, TWO, OrgJodaTimeDays *)

inline OrgJodaTimeDays *OrgJodaTimeDays_get_THREE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDays *OrgJodaTimeDays_THREE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDays, THREE, OrgJodaTimeDays *)

inline OrgJodaTimeDays *OrgJodaTimeDays_get_FOUR();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDays *OrgJodaTimeDays_FOUR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDays, FOUR, OrgJodaTimeDays *)

inline OrgJodaTimeDays *OrgJodaTimeDays_get_FIVE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDays *OrgJodaTimeDays_FIVE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDays, FIVE, OrgJodaTimeDays *)

inline OrgJodaTimeDays *OrgJodaTimeDays_get_SIX();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDays *OrgJodaTimeDays_SIX;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDays, SIX, OrgJodaTimeDays *)

inline OrgJodaTimeDays *OrgJodaTimeDays_get_SEVEN();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDays *OrgJodaTimeDays_SEVEN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDays, SEVEN, OrgJodaTimeDays *)

inline OrgJodaTimeDays *OrgJodaTimeDays_get_MAX_VALUE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDays *OrgJodaTimeDays_MAX_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDays, MAX_VALUE, OrgJodaTimeDays *)

inline OrgJodaTimeDays *OrgJodaTimeDays_get_MIN_VALUE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDays *OrgJodaTimeDays_MIN_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDays, MIN_VALUE, OrgJodaTimeDays *)

FOUNDATION_EXPORT OrgJodaTimeDays *OrgJodaTimeDays_daysWithInt_(jint days);

FOUNDATION_EXPORT OrgJodaTimeDays *OrgJodaTimeDays_daysBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT OrgJodaTimeDays *OrgJodaTimeDays_daysBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end);

FOUNDATION_EXPORT OrgJodaTimeDays *OrgJodaTimeDays_daysInWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval);

FOUNDATION_EXPORT OrgJodaTimeDays *OrgJodaTimeDays_standardDaysInWithOrgJodaTimeReadablePeriod_(id<OrgJodaTimeReadablePeriod> period);

FOUNDATION_EXPORT OrgJodaTimeDays *OrgJodaTimeDays_parseDaysWithNSString_(NSString *periodStr);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeDays)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeDays")
