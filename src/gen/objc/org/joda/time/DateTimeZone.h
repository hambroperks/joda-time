//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/DateTimeZone.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeDateTimeZone")
#ifdef RESTRICT_OrgJodaTimeDateTimeZone
#define INCLUDE_ALL_OrgJodaTimeDateTimeZone 0
#else
#define INCLUDE_ALL_OrgJodaTimeDateTimeZone 1
#endif
#undef RESTRICT_OrgJodaTimeDateTimeZone

#if !defined (OrgJodaTimeDateTimeZone_) && (INCLUDE_ALL_OrgJodaTimeDateTimeZone || defined(INCLUDE_OrgJodaTimeDateTimeZone))
#define OrgJodaTimeDateTimeZone_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class JavaUtilLocale;
@class JavaUtilTimeZone;
@class OrgJodaTimeLocalDateTime;
@protocol JavaUtilSet;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeTzNameProvider;
@protocol OrgJodaTimeTzProvider;

@interface OrgJodaTimeDateTimeZone : NSObject < JavaIoSerializable >

#pragma mark Public

- (jlong)adjustOffsetWithLong:(jlong)instant
                  withBoolean:(jboolean)earlierOrLater;

- (jlong)convertLocalToUTCWithLong:(jlong)instantLocal
                       withBoolean:(jboolean)strict;

- (jlong)convertLocalToUTCWithLong:(jlong)instantLocal
                       withBoolean:(jboolean)strict
                          withLong:(jlong)originalInstantUTC;

- (jlong)convertUTCToLocalWithLong:(jlong)instantUTC;

- (jboolean)isEqual:(id)object;

+ (OrgJodaTimeDateTimeZone *)forIDWithNSString:(NSString *)id_;

+ (OrgJodaTimeDateTimeZone *)forOffsetHoursWithInt:(jint)hoursOffset;

+ (OrgJodaTimeDateTimeZone *)forOffsetHoursMinutesWithInt:(jint)hoursOffset
                                                  withInt:(jint)minutesOffset;

+ (OrgJodaTimeDateTimeZone *)forOffsetMillisWithInt:(jint)millisOffset;

+ (OrgJodaTimeDateTimeZone *)forTimeZoneWithJavaUtilTimeZone:(JavaUtilTimeZone *)zone;

+ (id<JavaUtilSet>)getAvailableIDs;

+ (OrgJodaTimeDateTimeZone *)getDefault;

- (NSString *)getID;

- (jlong)getMillisKeepLocalWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)newZone
                                              withLong:(jlong)oldInstant;

- (NSString *)getNameWithLong:(jlong)instant;

- (NSString *)getNameWithLong:(jlong)instant
           withJavaUtilLocale:(JavaUtilLocale *)locale;

- (NSString *)getNameKeyWithLong:(jlong)instant;

+ (id<OrgJodaTimeTzNameProvider>)getNameProvider;

- (jint)getOffsetWithLong:(jlong)instant;

- (jint)getOffsetWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

- (jint)getOffsetFromLocalWithLong:(jlong)instantLocal;

+ (id<OrgJodaTimeTzProvider>)getProvider;

- (NSString *)getShortNameWithLong:(jlong)instant;

- (NSString *)getShortNameWithLong:(jlong)instant
                withJavaUtilLocale:(JavaUtilLocale *)locale;

- (jint)getStandardOffsetWithLong:(jlong)instant;

- (NSUInteger)hash;

- (jboolean)isFixed;

- (jboolean)isLocalDateTimeGapWithOrgJodaTimeLocalDateTime:(OrgJodaTimeLocalDateTime *)localDateTime;

- (jboolean)isStandardOffsetWithLong:(jlong)instant;

- (jlong)nextTransitionWithLong:(jlong)instant;

- (jlong)previousTransitionWithLong:(jlong)instant;

+ (void)setDefaultWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

+ (void)setNameProviderWithOrgJodaTimeTzNameProvider:(id<OrgJodaTimeTzNameProvider>)nameProvider;

+ (void)setProviderWithOrgJodaTimeTzProvider:(id<OrgJodaTimeTzProvider>)provider;

- (NSString *)description;

- (JavaUtilTimeZone *)toTimeZone;

#pragma mark Protected

- (instancetype)initWithNSString:(NSString *)id_;

- (id)writeReplace;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeDateTimeZone)

inline OrgJodaTimeDateTimeZone *OrgJodaTimeDateTimeZone_get_UTC(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDateTimeZone *OrgJodaTimeDateTimeZone_UTC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDateTimeZone, UTC, OrgJodaTimeDateTimeZone *)

FOUNDATION_EXPORT OrgJodaTimeDateTimeZone *OrgJodaTimeDateTimeZone_getDefault(void);

FOUNDATION_EXPORT void OrgJodaTimeDateTimeZone_setDefaultWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone);

FOUNDATION_EXPORT OrgJodaTimeDateTimeZone *OrgJodaTimeDateTimeZone_forIDWithNSString_(NSString *id_);

FOUNDATION_EXPORT OrgJodaTimeDateTimeZone *OrgJodaTimeDateTimeZone_forOffsetHoursWithInt_(jint hoursOffset);

FOUNDATION_EXPORT OrgJodaTimeDateTimeZone *OrgJodaTimeDateTimeZone_forOffsetHoursMinutesWithInt_withInt_(jint hoursOffset, jint minutesOffset);

FOUNDATION_EXPORT OrgJodaTimeDateTimeZone *OrgJodaTimeDateTimeZone_forOffsetMillisWithInt_(jint millisOffset);

FOUNDATION_EXPORT OrgJodaTimeDateTimeZone *OrgJodaTimeDateTimeZone_forTimeZoneWithJavaUtilTimeZone_(JavaUtilTimeZone *zone);

FOUNDATION_EXPORT id<JavaUtilSet> OrgJodaTimeDateTimeZone_getAvailableIDs(void);

FOUNDATION_EXPORT id<OrgJodaTimeTzProvider> OrgJodaTimeDateTimeZone_getProvider(void);

FOUNDATION_EXPORT void OrgJodaTimeDateTimeZone_setProviderWithOrgJodaTimeTzProvider_(id<OrgJodaTimeTzProvider> provider);

FOUNDATION_EXPORT id<OrgJodaTimeTzNameProvider> OrgJodaTimeDateTimeZone_getNameProvider(void);

FOUNDATION_EXPORT void OrgJodaTimeDateTimeZone_setNameProviderWithOrgJodaTimeTzNameProvider_(id<OrgJodaTimeTzNameProvider> nameProvider);

FOUNDATION_EXPORT void OrgJodaTimeDateTimeZone_initWithNSString_(OrgJodaTimeDateTimeZone *self, NSString *id_);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeDateTimeZone)

#endif

#if !defined (OrgJodaTimeDateTimeZone_LazyInit_) && (INCLUDE_ALL_OrgJodaTimeDateTimeZone || defined(INCLUDE_OrgJodaTimeDateTimeZone_LazyInit))
#define OrgJodaTimeDateTimeZone_LazyInit_

@class OrgJodaTimeFormatDateTimeFormatter;
@protocol JavaUtilMap;

@interface OrgJodaTimeDateTimeZone_LazyInit : NSObject

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeDateTimeZone_LazyInit)

inline id<JavaUtilMap> OrgJodaTimeDateTimeZone_LazyInit_get_CONVERSION_MAP(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id<JavaUtilMap> OrgJodaTimeDateTimeZone_LazyInit_CONVERSION_MAP;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDateTimeZone_LazyInit, CONVERSION_MAP, id<JavaUtilMap>)

inline OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeDateTimeZone_LazyInit_get_OFFSET_FORMATTER(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeDateTimeZone_LazyInit_OFFSET_FORMATTER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDateTimeZone_LazyInit, OFFSET_FORMATTER, OrgJodaTimeFormatDateTimeFormatter *)

FOUNDATION_EXPORT void OrgJodaTimeDateTimeZone_LazyInit_init(OrgJodaTimeDateTimeZone_LazyInit *self);

FOUNDATION_EXPORT OrgJodaTimeDateTimeZone_LazyInit *new_OrgJodaTimeDateTimeZone_LazyInit_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeDateTimeZone_LazyInit *create_OrgJodaTimeDateTimeZone_LazyInit_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeDateTimeZone_LazyInit)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeDateTimeZone")
