//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/Seconds.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeSeconds")
#ifdef RESTRICT_OrgJodaTimeSeconds
#define INCLUDE_ALL_OrgJodaTimeSeconds 0
#else
#define INCLUDE_ALL_OrgJodaTimeSeconds 1
#endif
#undef RESTRICT_OrgJodaTimeSeconds

#if !defined (OrgJodaTimeSeconds_) && (INCLUDE_ALL_OrgJodaTimeSeconds || defined(INCLUDE_OrgJodaTimeSeconds))
#define OrgJodaTimeSeconds_

#define RESTRICT_OrgJodaTimeBaseBaseSingleFieldPeriod 1
#define INCLUDE_OrgJodaTimeBaseBaseSingleFieldPeriod 1
#include "org/joda/time/base/BaseSingleFieldPeriod.h"

@class OrgJodaTimeDays;
@class OrgJodaTimeDuration;
@class OrgJodaTimeDurationFieldType;
@class OrgJodaTimeHours;
@class OrgJodaTimeMinutes;
@class OrgJodaTimePeriodType;
@class OrgJodaTimeWeeks;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadableInterval;
@protocol OrgJodaTimeReadablePartial;
@protocol OrgJodaTimeReadablePeriod;

@interface OrgJodaTimeSeconds : OrgJodaTimeBaseBaseSingleFieldPeriod

#pragma mark Public

- (OrgJodaTimeSeconds *)dividedByWithInt:(jint)divisor;

- (OrgJodaTimeDurationFieldType *)getFieldType;

- (OrgJodaTimePeriodType *)getPeriodType;

- (jint)getSeconds;

- (jboolean)isGreaterThanWithOrgJodaTimeSeconds:(OrgJodaTimeSeconds *)other;

- (jboolean)isLessThanWithOrgJodaTimeSeconds:(OrgJodaTimeSeconds *)other;

- (OrgJodaTimeSeconds *)minusWithInt:(jint)seconds;

- (OrgJodaTimeSeconds *)minusWithOrgJodaTimeSeconds:(OrgJodaTimeSeconds *)seconds;

- (OrgJodaTimeSeconds *)multipliedByWithInt:(jint)scalar;

- (OrgJodaTimeSeconds *)negated;

+ (OrgJodaTimeSeconds *)parseSecondsWithNSString:(NSString *)periodStr;

- (OrgJodaTimeSeconds *)plusWithInt:(jint)seconds;

- (OrgJodaTimeSeconds *)plusWithOrgJodaTimeSeconds:(OrgJodaTimeSeconds *)seconds;

+ (OrgJodaTimeSeconds *)secondsWithInt:(jint)seconds;

+ (OrgJodaTimeSeconds *)secondsBetweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                                      withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

+ (OrgJodaTimeSeconds *)secondsBetweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                                      withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end;

+ (OrgJodaTimeSeconds *)secondsInWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval;

+ (OrgJodaTimeSeconds *)standardSecondsInWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

- (OrgJodaTimeDays *)toStandardDays;

- (OrgJodaTimeDuration *)toStandardDuration;

- (OrgJodaTimeHours *)toStandardHours;

- (OrgJodaTimeMinutes *)toStandardMinutes;

- (OrgJodaTimeWeeks *)toStandardWeeks;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeSeconds)

inline OrgJodaTimeSeconds *OrgJodaTimeSeconds_get_ZERO();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_ZERO;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeSeconds, ZERO, OrgJodaTimeSeconds *)

inline OrgJodaTimeSeconds *OrgJodaTimeSeconds_get_ONE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_ONE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeSeconds, ONE, OrgJodaTimeSeconds *)

inline OrgJodaTimeSeconds *OrgJodaTimeSeconds_get_TWO();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_TWO;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeSeconds, TWO, OrgJodaTimeSeconds *)

inline OrgJodaTimeSeconds *OrgJodaTimeSeconds_get_THREE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_THREE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeSeconds, THREE, OrgJodaTimeSeconds *)

inline OrgJodaTimeSeconds *OrgJodaTimeSeconds_get_MAX_VALUE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_MAX_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeSeconds, MAX_VALUE, OrgJodaTimeSeconds *)

inline OrgJodaTimeSeconds *OrgJodaTimeSeconds_get_MIN_VALUE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_MIN_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeSeconds, MIN_VALUE, OrgJodaTimeSeconds *)

FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_secondsWithInt_(jint seconds);

FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_secondsBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_secondsBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end);

FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_secondsInWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval);

FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_standardSecondsInWithOrgJodaTimeReadablePeriod_(id<OrgJodaTimeReadablePeriod> period);

FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_parseSecondsWithNSString_(NSString *periodStr);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeSeconds)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeSeconds")
