//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/chrono/GJCacheKey.java
//

#ifndef _OrgJodaTimeChronoGJCacheKey_H_
#define _OrgJodaTimeChronoGJCacheKey_H_

#include "J2ObjC_header.h"

@class OrgJodaTimeDateTimeZone;
@class OrgJodaTimeInstant;

/**
 @brief For internal usage in GJChronology only.
 */
@interface OrgJodaTimeChronoGJCacheKey : NSObject

#pragma mark Public

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

#pragma mark Package-Private

- (instancetype)initWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone
                         withOrgJodaTimeInstant:(OrgJodaTimeInstant *)cutoverInstant
                                        withInt:(jint)minDaysInFirstWeek;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeChronoGJCacheKey)

FOUNDATION_EXPORT void OrgJodaTimeChronoGJCacheKey_initWithOrgJodaTimeDateTimeZone_withOrgJodaTimeInstant_withInt_(OrgJodaTimeChronoGJCacheKey *self, OrgJodaTimeDateTimeZone *zone, OrgJodaTimeInstant *cutoverInstant, jint minDaysInFirstWeek);

FOUNDATION_EXPORT OrgJodaTimeChronoGJCacheKey *new_OrgJodaTimeChronoGJCacheKey_initWithOrgJodaTimeDateTimeZone_withOrgJodaTimeInstant_withInt_(OrgJodaTimeDateTimeZone *zone, OrgJodaTimeInstant *cutoverInstant, jint minDaysInFirstWeek) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoGJCacheKey)

#endif // _OrgJodaTimeChronoGJCacheKey_H_
