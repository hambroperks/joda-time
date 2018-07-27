//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/tz/CachedDateTimeZone.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeTzCachedDateTimeZone")
#ifdef RESTRICT_OrgJodaTimeTzCachedDateTimeZone
#define INCLUDE_ALL_OrgJodaTimeTzCachedDateTimeZone 0
#else
#define INCLUDE_ALL_OrgJodaTimeTzCachedDateTimeZone 1
#endif
#undef RESTRICT_OrgJodaTimeTzCachedDateTimeZone

#if !defined (OrgJodaTimeTzCachedDateTimeZone_) && (INCLUDE_ALL_OrgJodaTimeTzCachedDateTimeZone || defined(INCLUDE_OrgJodaTimeTzCachedDateTimeZone))
#define OrgJodaTimeTzCachedDateTimeZone_

#define RESTRICT_OrgJodaTimeDateTimeZone 1
#define INCLUDE_OrgJodaTimeDateTimeZone 1
#include "org/joda/time/DateTimeZone.h"

@interface OrgJodaTimeTzCachedDateTimeZone : OrgJodaTimeDateTimeZone

#pragma mark Public

- (jboolean)isEqual:(id)obj;

+ (OrgJodaTimeTzCachedDateTimeZone *)forZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

- (NSString *)getNameKeyWithLong:(jlong)instant;

- (jint)getOffsetWithLong:(jlong)instant;

- (jint)getStandardOffsetWithLong:(jlong)instant;

- (OrgJodaTimeDateTimeZone *)getUncachedZone;

- (NSUInteger)hash;

- (jboolean)isFixed;

- (jlong)nextTransitionWithLong:(jlong)instant;

- (jlong)previousTransitionWithLong:(jlong)instant;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeTzCachedDateTimeZone)

FOUNDATION_EXPORT OrgJodaTimeTzCachedDateTimeZone *OrgJodaTimeTzCachedDateTimeZone_forZoneWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeTzCachedDateTimeZone)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeTzCachedDateTimeZone")
