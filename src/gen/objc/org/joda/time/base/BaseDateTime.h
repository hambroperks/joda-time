//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/base/BaseDateTime.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeBaseBaseDateTime")
#ifdef RESTRICT_OrgJodaTimeBaseBaseDateTime
#define INCLUDE_ALL_OrgJodaTimeBaseBaseDateTime 0
#else
#define INCLUDE_ALL_OrgJodaTimeBaseBaseDateTime 1
#endif
#undef RESTRICT_OrgJodaTimeBaseBaseDateTime

#if !defined (OrgJodaTimeBaseBaseDateTime_) && (INCLUDE_ALL_OrgJodaTimeBaseBaseDateTime || defined(INCLUDE_OrgJodaTimeBaseBaseDateTime))
#define OrgJodaTimeBaseBaseDateTime_

#define RESTRICT_OrgJodaTimeBaseAbstractDateTime 1
#define INCLUDE_OrgJodaTimeBaseAbstractDateTime 1
#include "org/joda/time/base/AbstractDateTime.h"

#define RESTRICT_OrgJodaTimeReadableDateTime 1
#define INCLUDE_OrgJodaTimeReadableDateTime 1
#include "org/joda/time/ReadableDateTime.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;

@interface OrgJodaTimeBaseBaseDateTime : OrgJodaTimeBaseAbstractDateTime < OrgJodaTimeReadableDateTime, JavaIoSerializable >

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

- (instancetype)initWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

- (instancetype)initWithInt:(jint)year
                    withInt:(jint)monthOfYear
                    withInt:(jint)dayOfMonth
                    withInt:(jint)hourOfDay
                    withInt:(jint)minuteOfHour
                    withInt:(jint)secondOfMinute
                    withInt:(jint)millisOfSecond;

- (instancetype)initWithInt:(jint)year
                    withInt:(jint)monthOfYear
                    withInt:(jint)dayOfMonth
                    withInt:(jint)hourOfDay
                    withInt:(jint)minuteOfHour
                    withInt:(jint)secondOfMinute
                    withInt:(jint)millisOfSecond
  withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

- (instancetype)initWithInt:(jint)year
                    withInt:(jint)monthOfYear
                    withInt:(jint)dayOfMonth
                    withInt:(jint)hourOfDay
                    withInt:(jint)minuteOfHour
                    withInt:(jint)secondOfMinute
                    withInt:(jint)millisOfSecond
withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

- (instancetype)initWithLong:(jlong)instant;

- (instancetype)initWithLong:(jlong)instant
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

- (instancetype)initWithLong:(jlong)instant
 withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

- (instancetype)initWithId:(id)instant
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

- (instancetype)initWithId:(id)instant
withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

- (OrgJodaTimeChronology *)getChronology;

- (jlong)getMillis;

#pragma mark Protected

- (OrgJodaTimeChronology *)checkChronologyWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

- (jlong)checkInstantWithLong:(jlong)instant
    withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

- (void)setChronologyWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

- (void)setMillisWithLong:(jlong)instant;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeBaseBaseDateTime)

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_init(OrgJodaTimeBaseBaseDateTime *self);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithOrgJodaTimeDateTimeZone_(OrgJodaTimeBaseBaseDateTime *self, OrgJodaTimeDateTimeZone *zone);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithOrgJodaTimeChronology_(OrgJodaTimeBaseBaseDateTime *self, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithLong_(OrgJodaTimeBaseBaseDateTime *self, jlong instant);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithLong_withOrgJodaTimeDateTimeZone_(OrgJodaTimeBaseBaseDateTime *self, jlong instant, OrgJodaTimeDateTimeZone *zone);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithLong_withOrgJodaTimeChronology_(OrgJodaTimeBaseBaseDateTime *self, jlong instant, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithId_withOrgJodaTimeDateTimeZone_(OrgJodaTimeBaseBaseDateTime *self, id instant, OrgJodaTimeDateTimeZone *zone);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithId_withOrgJodaTimeChronology_(OrgJodaTimeBaseBaseDateTime *self, id instant, OrgJodaTimeChronology *chronology);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithInt_withInt_withInt_withInt_withInt_withInt_withInt_(OrgJodaTimeBaseBaseDateTime *self, jint year, jint monthOfYear, jint dayOfMonth, jint hourOfDay, jint minuteOfHour, jint secondOfMinute, jint millisOfSecond);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithInt_withInt_withInt_withInt_withInt_withInt_withInt_withOrgJodaTimeDateTimeZone_(OrgJodaTimeBaseBaseDateTime *self, jint year, jint monthOfYear, jint dayOfMonth, jint hourOfDay, jint minuteOfHour, jint secondOfMinute, jint millisOfSecond, OrgJodaTimeDateTimeZone *zone);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseDateTime_initWithInt_withInt_withInt_withInt_withInt_withInt_withInt_withOrgJodaTimeChronology_(OrgJodaTimeBaseBaseDateTime *self, jint year, jint monthOfYear, jint dayOfMonth, jint hourOfDay, jint minuteOfHour, jint secondOfMinute, jint millisOfSecond, OrgJodaTimeChronology *chronology);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeBaseBaseDateTime)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeBaseBaseDateTime")
