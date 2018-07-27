//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/base/AbstractPeriod.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeBaseAbstractPeriod")
#ifdef RESTRICT_OrgJodaTimeBaseAbstractPeriod
#define INCLUDE_ALL_OrgJodaTimeBaseAbstractPeriod 0
#else
#define INCLUDE_ALL_OrgJodaTimeBaseAbstractPeriod 1
#endif
#undef RESTRICT_OrgJodaTimeBaseAbstractPeriod

#if !defined (OrgJodaTimeBaseAbstractPeriod_) && (INCLUDE_ALL_OrgJodaTimeBaseAbstractPeriod || defined(INCLUDE_OrgJodaTimeBaseAbstractPeriod))
#define OrgJodaTimeBaseAbstractPeriod_

#define RESTRICT_OrgJodaTimeReadablePeriod 1
#define INCLUDE_OrgJodaTimeReadablePeriod 1
#include "org/joda/time/ReadablePeriod.h"

@class IOSIntArray;
@class IOSObjectArray;
@class OrgJodaTimeDurationFieldType;
@class OrgJodaTimeFormatPeriodFormatter;
@class OrgJodaTimeMutablePeriod;
@class OrgJodaTimePeriod;

@interface OrgJodaTimeBaseAbstractPeriod : NSObject < OrgJodaTimeReadablePeriod >

#pragma mark Public

- (jboolean)isEqual:(id)period;

- (jint)getWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type;

- (OrgJodaTimeDurationFieldType *)getFieldTypeWithInt:(jint)index;

- (IOSObjectArray *)getFieldTypes;

- (IOSIntArray *)getValues;

- (NSUInteger)hash;

- (jint)indexOfWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type;

- (jboolean)isSupportedWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type;

- (jint)size;

- (OrgJodaTimeMutablePeriod *)toMutablePeriod;

- (OrgJodaTimePeriod *)toPeriod;

- (NSString *)description;

- (NSString *)toStringWithOrgJodaTimeFormatPeriodFormatter:(OrgJodaTimeFormatPeriodFormatter *)formatter;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeBaseAbstractPeriod)

FOUNDATION_EXPORT void OrgJodaTimeBaseAbstractPeriod_init(OrgJodaTimeBaseAbstractPeriod *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeBaseAbstractPeriod)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeBaseAbstractPeriod")
