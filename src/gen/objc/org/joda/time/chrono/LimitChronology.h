//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/chrono/LimitChronology.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeChronoLimitChronology")
#ifdef RESTRICT_OrgJodaTimeChronoLimitChronology
#define INCLUDE_ALL_OrgJodaTimeChronoLimitChronology 0
#else
#define INCLUDE_ALL_OrgJodaTimeChronoLimitChronology 1
#endif
#undef RESTRICT_OrgJodaTimeChronoLimitChronology

#if !defined (OrgJodaTimeChronoLimitChronology_) && (INCLUDE_ALL_OrgJodaTimeChronoLimitChronology || defined(INCLUDE_OrgJodaTimeChronoLimitChronology))
#define OrgJodaTimeChronoLimitChronology_

#define RESTRICT_OrgJodaTimeChronoAssembledChronology 1
#define INCLUDE_OrgJodaTimeChronoAssembledChronology 1
#include "org/joda/time/chrono/AssembledChronology.h"

@class OrgJodaTimeChronoAssembledChronology_Fields;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTime;
@class OrgJodaTimeDateTimeZone;
@protocol OrgJodaTimeReadableDateTime;

@interface OrgJodaTimeChronoLimitChronology : OrgJodaTimeChronoAssembledChronology {
 @public
  OrgJodaTimeDateTime *iLowerLimit_;
  OrgJodaTimeDateTime *iUpperLimit_;
}

#pragma mark Public

- (jboolean)isEqual:(id)obj;

- (jlong)getDateTimeMillisWithInt:(jint)year
                          withInt:(jint)monthOfYear
                          withInt:(jint)dayOfMonth
                          withInt:(jint)millisOfDay;

- (jlong)getDateTimeMillisWithInt:(jint)year
                          withInt:(jint)monthOfYear
                          withInt:(jint)dayOfMonth
                          withInt:(jint)hourOfDay
                          withInt:(jint)minuteOfHour
                          withInt:(jint)secondOfMinute
                          withInt:(jint)millisOfSecond;

- (jlong)getDateTimeMillisWithLong:(jlong)instant
                           withInt:(jint)hourOfDay
                           withInt:(jint)minuteOfHour
                           withInt:(jint)secondOfMinute
                           withInt:(jint)millisOfSecond;

+ (OrgJodaTimeChronoLimitChronology *)getInstanceWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base
                                           withOrgJodaTimeReadableDateTime:(id<OrgJodaTimeReadableDateTime>)lowerLimit
                                           withOrgJodaTimeReadableDateTime:(id<OrgJodaTimeReadableDateTime>)upperLimit;

- (OrgJodaTimeDateTime *)getLowerLimit;

- (OrgJodaTimeDateTime *)getUpperLimit;

- (NSUInteger)hash;

- (NSString *)description;

- (OrgJodaTimeChronology *)withUTC;

- (OrgJodaTimeChronology *)withZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

#pragma mark Protected

- (void)assembleWithOrgJodaTimeChronoAssembledChronology_Fields:(OrgJodaTimeChronoAssembledChronology_Fields *)fields;

#pragma mark Package-Private

- (void)checkLimitsWithLong:(jlong)instant
               withNSString:(NSString *)desc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeChronoLimitChronology)

J2OBJC_FIELD_SETTER(OrgJodaTimeChronoLimitChronology, iLowerLimit_, OrgJodaTimeDateTime *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoLimitChronology, iUpperLimit_, OrgJodaTimeDateTime *)

FOUNDATION_EXPORT OrgJodaTimeChronoLimitChronology *OrgJodaTimeChronoLimitChronology_getInstanceWithOrgJodaTimeChronology_withOrgJodaTimeReadableDateTime_withOrgJodaTimeReadableDateTime_(OrgJodaTimeChronology *base, id<OrgJodaTimeReadableDateTime> lowerLimit, id<OrgJodaTimeReadableDateTime> upperLimit);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoLimitChronology)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeChronoLimitChronology")
