//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/Years.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeYears")
#ifdef RESTRICT_OrgJodaTimeYears
#define INCLUDE_ALL_OrgJodaTimeYears 0
#else
#define INCLUDE_ALL_OrgJodaTimeYears 1
#endif
#undef RESTRICT_OrgJodaTimeYears

#if !defined (OrgJodaTimeYears_) && (INCLUDE_ALL_OrgJodaTimeYears || defined(INCLUDE_OrgJodaTimeYears))
#define OrgJodaTimeYears_

#define RESTRICT_OrgJodaTimeBaseBaseSingleFieldPeriod 1
#define INCLUDE_OrgJodaTimeBaseBaseSingleFieldPeriod 1
#include "org/joda/time/base/BaseSingleFieldPeriod.h"

@class OrgJodaTimeDurationFieldType;
@class OrgJodaTimePeriodType;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadableInterval;
@protocol OrgJodaTimeReadablePartial;

@interface OrgJodaTimeYears : OrgJodaTimeBaseBaseSingleFieldPeriod

#pragma mark Public

- (OrgJodaTimeYears *)dividedByWithInt:(jint)divisor;

- (OrgJodaTimeDurationFieldType *)getFieldType;

- (OrgJodaTimePeriodType *)getPeriodType;

- (jint)getYears;

- (jboolean)isGreaterThanWithOrgJodaTimeYears:(OrgJodaTimeYears *)other;

- (jboolean)isLessThanWithOrgJodaTimeYears:(OrgJodaTimeYears *)other;

- (OrgJodaTimeYears *)minusWithInt:(jint)years;

- (OrgJodaTimeYears *)minusWithOrgJodaTimeYears:(OrgJodaTimeYears *)years;

- (OrgJodaTimeYears *)multipliedByWithInt:(jint)scalar;

- (OrgJodaTimeYears *)negated;

+ (OrgJodaTimeYears *)parseYearsWithNSString:(NSString *)periodStr;

- (OrgJodaTimeYears *)plusWithInt:(jint)years;

- (OrgJodaTimeYears *)plusWithOrgJodaTimeYears:(OrgJodaTimeYears *)years;

- (NSString *)description;

+ (OrgJodaTimeYears *)yearsWithInt:(jint)years;

+ (OrgJodaTimeYears *)yearsBetweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                                  withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

+ (OrgJodaTimeYears *)yearsBetweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                                  withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end;

+ (OrgJodaTimeYears *)yearsInWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeYears)

inline OrgJodaTimeYears *OrgJodaTimeYears_get_ZERO();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeYears *OrgJodaTimeYears_ZERO;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeYears, ZERO, OrgJodaTimeYears *)

inline OrgJodaTimeYears *OrgJodaTimeYears_get_ONE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeYears *OrgJodaTimeYears_ONE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeYears, ONE, OrgJodaTimeYears *)

inline OrgJodaTimeYears *OrgJodaTimeYears_get_TWO();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeYears *OrgJodaTimeYears_TWO;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeYears, TWO, OrgJodaTimeYears *)

inline OrgJodaTimeYears *OrgJodaTimeYears_get_THREE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeYears *OrgJodaTimeYears_THREE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeYears, THREE, OrgJodaTimeYears *)

inline OrgJodaTimeYears *OrgJodaTimeYears_get_MAX_VALUE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeYears *OrgJodaTimeYears_MAX_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeYears, MAX_VALUE, OrgJodaTimeYears *)

inline OrgJodaTimeYears *OrgJodaTimeYears_get_MIN_VALUE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeYears *OrgJodaTimeYears_MIN_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeYears, MIN_VALUE, OrgJodaTimeYears *)

FOUNDATION_EXPORT OrgJodaTimeYears *OrgJodaTimeYears_yearsWithInt_(jint years);

FOUNDATION_EXPORT OrgJodaTimeYears *OrgJodaTimeYears_yearsBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT OrgJodaTimeYears *OrgJodaTimeYears_yearsBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end);

FOUNDATION_EXPORT OrgJodaTimeYears *OrgJodaTimeYears_yearsInWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval);

FOUNDATION_EXPORT OrgJodaTimeYears *OrgJodaTimeYears_parseYearsWithNSString_(NSString *periodStr);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeYears)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeYears")
