//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/tz/CachedDateTimeZone.java
//

#ifndef _OrgJodaTimeTzCachedDateTimeZone_H_
#define _OrgJodaTimeTzCachedDateTimeZone_H_

@class IOSObjectArray;
@class OrgJodaTimeTzCachedDateTimeZone_Info;

#import "JreEmulation.h"
#include "DateTimeZone.h"

#define OrgJodaTimeTzCachedDateTimeZone_serialVersionUID 5472298452022250685LL

/**
 @brief Improves the performance of requesting time zone offsets and name keys by caching the results.
 Time zones that have simple rules or are fixed should not be cached, as it is unlikely to improve performance. <p> CachedDateTimeZone is thread-safe and immutable.
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeTzCachedDateTimeZone : OrgJodaTimeDateTimeZone {
 @public
  OrgJodaTimeDateTimeZone *iZone_;
  IOSObjectArray *iInfoCache_;
}

/**
 @brief Returns a new CachedDateTimeZone unless given zone is already cached.
 */
+ (OrgJodaTimeTzCachedDateTimeZone *)forZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

- (instancetype)initWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/**
 @brief Returns the DateTimeZone being wrapped.
 */
- (OrgJodaTimeDateTimeZone *)getUncachedZone;

- (NSString *)getNameKeyWithLong:(long long int)instant;

- (int)getOffsetWithLong:(long long int)instant;

- (int)getStandardOffsetWithLong:(long long int)instant;

- (BOOL)isFixed;

- (long long int)nextTransitionWithLong:(long long int)instant;

- (long long int)previousTransitionWithLong:(long long int)instant;

- (NSUInteger)hash;

- (BOOL)isEqual:(id)obj;

- (OrgJodaTimeTzCachedDateTimeZone_Info *)getInfoWithLong:(long long int)millis;

- (OrgJodaTimeTzCachedDateTimeZone_Info *)createInfoWithLong:(long long int)millis;

- (void)copyAllFieldsTo:(OrgJodaTimeTzCachedDateTimeZone *)other;

@end

FOUNDATION_EXPORT BOOL OrgJodaTimeTzCachedDateTimeZone_initialized;
J2OBJC_STATIC_INIT(OrgJodaTimeTzCachedDateTimeZone)

J2OBJC_FIELD_SETTER(OrgJodaTimeTzCachedDateTimeZone, iZone_, OrgJodaTimeDateTimeZone *)
J2OBJC_FIELD_SETTER(OrgJodaTimeTzCachedDateTimeZone, iInfoCache_, IOSObjectArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeTzCachedDateTimeZone, serialVersionUID, long long int)

FOUNDATION_EXPORT int OrgJodaTimeTzCachedDateTimeZone_cInfoCacheMask_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeTzCachedDateTimeZone, cInfoCacheMask_, int)

@interface OrgJodaTimeTzCachedDateTimeZone_Info : NSObject {
 @public
  long long int iPeriodStart_;
  OrgJodaTimeDateTimeZone *iZoneRef_;
  OrgJodaTimeTzCachedDateTimeZone_Info *iNextInfo_;
  NSString *iNameKey_;
  int iOffset_;
  int iStandardOffset_;
}

- (instancetype)initWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone
                                       withLong:(long long int)periodStart;

- (NSString *)getNameKeyWithLong:(long long int)millis;

- (int)getOffsetWithLong:(long long int)millis;

- (int)getStandardOffsetWithLong:(long long int)millis;

- (void)copyAllFieldsTo:(OrgJodaTimeTzCachedDateTimeZone_Info *)other;

@end

__attribute__((always_inline)) inline void OrgJodaTimeTzCachedDateTimeZone_Info_init() {}

J2OBJC_FIELD_SETTER(OrgJodaTimeTzCachedDateTimeZone_Info, iZoneRef_, OrgJodaTimeDateTimeZone *)
J2OBJC_FIELD_SETTER(OrgJodaTimeTzCachedDateTimeZone_Info, iNextInfo_, OrgJodaTimeTzCachedDateTimeZone_Info *)
J2OBJC_FIELD_SETTER(OrgJodaTimeTzCachedDateTimeZone_Info, iNameKey_, NSString *)

#endif // _OrgJodaTimeTzCachedDateTimeZone_H_
